#!/usr/bin/env python
#-*-coding:UTF-8 -*-
import os
import sys
import platform
#用import方式引入conf.py
import conf
import subprocess
'''
判断server(本机)操作系统类型和版本的类
'''

class System:
    def GetBranch(self):
        Branch = platform.dist()[0]
        return Branch
    def GetRelease(self):
        Release = platform.dist()[1]
        return Release
    def GetInstaller(self):
        if self.GetBranch() in ['Ubuntu', 'debian']:
            installer = 'apt-get'
        elif self.GetBranch() in ['redhat', 'fedora', 'centos']:
            installer = 'yum'
        elif self.GetBranch() in ['SuSE']:
            installer = 'zypper'
        else:
            installer = 'unknown'
        return installer
'''
以操作系统版本为依据获取相应的pexpect包并尝试引入，因pexpect非默认操作系统安装，这部分支持RH,Ubuntu,Debian,SuSE
'''
try:
    import pexpect
except ImportError:
#     installer=""
    installer = System()
    inst = installer.GetInstaller()
    if (inst == 'apt-get') or (inst == 'zypper'):
        cmd = '%s install python-pexpect' % (inst)
    elif inst == 'yum':
        cmd = '$s install pexpect' % (inst)
    else:
        cmd = 'echo "Not support yet:)"';
    try:
        fd = subprocess.Popen( cmd, shell=True, stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE )
        out = fd.stdout.readlines()
        err = fd.stderr.readlines()
        all = out+err
        all = "".join(all)
    except OSError,e:
        all = "Cannot run command, Exception:"+e+os.linesep
    import pexpect
#print all
'''
pexpect执行类，分两个方法，ssh和scp，自动判断是否首次连接，并自动完成yes或输入密码的应答。
'''
class Expect:
    #定义ssh方法，入口变量包括ip, port,username,password,执行命令
    def ssh(self, ip, port, user, passwd, cmd):
        #创建连接子进程对象
        ssh = pexpect.spawn('ssh -p %s %s@%s "%s"' % (port, user, ip, cmd))
        r = ''
        try:
            #判断是否首次连接，如果是首次，则回答yes并输入密码，否则直接输入密码
            i = ssh.expect(['password:', 'continue connecting (yes/no)?'], timeout=5)
            if i == 0 :
                ssh.sendline(passwd)
            elif i == 1:
                ssh.sendline('yes')
                ssh.expect('password:')
                ssh.sendline(passwd)
        except pexpect.EOF:
            ssh.close()
        else:
            r = ssh.read()
            ssh.expect(pexpect.EOF)
            ssh.close()
        return r
    #定义scp方法，入口变量包括ip,port,username,password,需要复制到client的文件名,复制到client的路径
    def scp(self, ip, port, user, passwd, srcfile = "index.html", distpath):
        #创建连接子进程对象
        ssh = pexpect.spawn('scp -P %s %s %s@%s:%s ' % (port, file, user, ip, distpath))
        r= ''
        try:
            #判断是否首次连接，如果是首次，则回答yes并输入密码，否则直接输入密码
            i = ssh.expect(['password:', 'continue connecting (yes/no)?'], timeout=5)
            if i == 0:
                ssh.sendline(passwd)
            elif i == 1:
                ssh.senline('yes')
                ssh.expect('password:')
                ssh.sendline(passwd)
        except pexpect.EOF:
            ssh.close()
        else:
            r = ssh.read()
            ssh.expect(pexpect.EOF)
            ssh.close()
        return r
#创建conf中的对象，只是为了写起来方便。不创建直接用也行
# packages = conf.package_dir
logs = conf.log_dir
c_tmp = conf.client_tmp_dir
port = conf.ssh_port
scripts = conf.script_dir
nodes = conf.node_list
expect = Expect()
#在本机执行server端脚本。该脚本会安装Ganglia gmetad,gmond,cacti,nagios,gangliaweb,mysql,apache等等
os.system("sh " + scripts + "dpkg_server_ubuntu_x.x86_64.sh")
#循环列出conf的列表中配置的主机，用户名，密码，执行命令
for i in range(len(nodes)):
    ip = nodes[i]['ip']
    user = nodes[i]['user']
    passwd = nodes[i]['passwd']
    cmd = nodes[i]['cmd']
    #将本机的client执行脚本复制到client端的conf.py中定义的路径client_tmp_dir
    r = expect.scp(ip, port, user, passwd, scripts+'dpkg_client_ubuntu_x.x86_64.sh', c_tmp)
    print r
    #在client端执行刚复制过去的脚本，脚本中包含gmond,nagios-client,snmpd等等
    r = expect.ssh(ip, port, user, passwd, cmd)
    print r