#-*-coding:UTF-8 -*-
log_dir = './logs/'             #定义日志路径，不过我还没写，打算用log4py来做
client_tmp_dir = '/tmp/'        #定义client端存放脚本路径
ssh_port = '22'                 #SSH端口
script_dir = './shells/'        #server端脚本存放路径
node_list = [
    {'ip':'192.168.1.1', 'user':'root', 'passwd':'123456', 'cmd':'sh /tmp/dpkg_client_ubuntu_x.x86_64.sh'},
    #cmd为在client端执行的命令，别的不解释
    {'ip':'192.168.1.2', 'user':'root', 'passwd':'123456', 'cmd':'sh /tmp/dpkg_client_ubuntu_x.x86_64.sh'},
]