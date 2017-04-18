__author__ = 'Administrator'
# coding:utf8
import os
import re

url = "svn://192.168.30.111/ZXJY_ALL"
localPath = 'E:\quanli360\项目'
vision_num = raw_input('type a vision num: ')

# 需要运行SVN得命令
svn_command = 'svn log ' + localPath + '\p2p_standard_2.0_quanli -r ' + vision_num + ' -v'
#转码让system执行得时候可以适应中文
svn_command = svn_command.decode("utf-8").encode("gbk")
print 'run shell is===', svn_command
#执行svn_command
a = os.popen(svn_command).read()

print a
#正则取出版本号得更新文件路径
print "取出文件路径："
def regPath(strPath):
    reg = 'p2p_standard_2.0_quanli\\s*\\w*\\W*\\S*'
    regCom = re.compile(reg)
    pathList = re.findall(regCom, strPath)
    #print pathList
    return pathList

res = regPath(a)
print '=='*60

def regPathC(strPath):
    reg = '\\com\\\\s*\\w*\\W*\\S*'
    regCom = re.compile(reg)
    pathList = re.findall(regCom, strPath)
    #print pathList
    return pathList

def regPathS(strPath):
    reg = '\\site\\\\s*\\w*\\W*\\S*'
    regCom = re.compile(reg)
    pathList = re.findall(regCom, strPath)
    #print pathList
    return pathList

#sftp命令上传至服务器，<目前只能先删除待更新文件，再上传文件过去>
import paramiko

username = 'work'
password = 'Ex42tko4{G4NT@{^'
hostname = '118.244.204.239'
port = 2022


def deployServer(locath, objPath):
    try:
        t = paramiko.Transport((hostname, port))
        t.connect(username=username, password=password)
        sftp = paramiko.SFTPClient.from_transport(t)
        #rename
        sftp.remove(objPath)
        print 'Now start'
        sftp.put(locath, objPath)
        print 'good'
        print '=='*60
        t.close();
    except Exception, e:
        import traceback
        traceback.print_exc()
        try:
            t.close()
        except:
            pass
        
# 如果一个版本号下多个文件挨个取出并补全路径,执行部署
for x in range(len(res)):
    realLocPath = localPath + '\\' + res[x]
    realLocPath = realLocPath.replace("/", "\\")
    print (realLocPath)
    print '=='*60
    if realLocPath.__contains__("\\com\\"):
        cutStr = regPathC(realLocPath)
        cutStr = ''.join(cutStr)
        #匹配本地编译后的文件
        cutStr = cutStr.replace(".java", ".class")
        realLocPath = "E:\\apache-tomcat-6.0.37\\webapps\\archer\\WEB-INF\\classes\\" + cutStr
        cutStrL = cutStr.replace("\\", "/")
        objectPath = "/home/work/tomcat_instances/quanli360.com-instance-3/webapps/archer/WEB-INF/classes/" + cutStrL
        print 'Source:-->',realLocPath
        print 'Server:-->',objectPath
        deployServer(realLocPath,objectPath)
    elif realLocPath.__contains__("\\site\\"):
        print 'start site'
        cutStr = regPathS(realLocPath)
        print cutStr
        cutStr = ''.join(cutStr)
        realLocPath = 'E:\\apache-tomcat-6.0.37\\webapps\\archer\\site' + cutStr
        objectPath = '/home/work/tomcat_instances/quanli360.com-instance-3/webapps/archer/' + cutStr
        cutStrL = cutStr.replace("\\", "/")
        objectPath = '' + cutStrL
        print cutStr,realLocPath, objectPath
        # deployServer(realLocPath,objectPath)
    else:
        print ("no contains")
    # deployLoc(realLocPath)

print '=='*60