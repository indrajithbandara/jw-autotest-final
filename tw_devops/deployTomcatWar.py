#!/usr/bin/python  
#-*-coding:UTF-8 -*-
'''
Created on 20170407
@author: cui.jun@thoughtworks.cn
'''
import sys,os,time
#from tw_devops import zipfileutils

print ("start deploy tomcat war and static zip package now .......");  

ngnix_zipfile_path="E:\\apache-tomcat-8.0.41\\webapps\\html5-map.zip"  
deploy_war_path="E:\\apache-tomcat-8.0.41\\webapps\\jw-interfaceapi.war"  

current_date=time.strftime('%Y-%m-%d')  
current_datetime=time.strftime('%Y%m%d%H%M%S')  
 
password="xxxx2011"  
db_host="localhost"  
mysql_user="root"  
    
print os.path.isfile(ngnix_zipfile_path)

if os.path.isfile(ngnix_zipfile_path): 
    message = 'OK, the "%s" file exists.',current_datetime
else:
    message = "Sorry, I cannot find the  file."
    #sys.exit()
print message

import zipfile, os
file_name = 'E:\\apache-tomcat-8.0.41\\webapps\\html5demo.zip'  #要解压的文件
zipfiledir = 'E:\\apache-tomcat-8.0.41\\webapps\\'  #解压后放入的目录
# r = zipfilezipfileutilsfile(filename)
import zipfile
import os
#os.listdir(r'E:\\apache-tomcat-8.0.41\\webapps\\')
os.system("cd %s" %(zipfiledir))
os.system("unzip -o -d  %s" %(file_name))
# file_list = os.listdir(r'E:\\apache-tomcat-8.0.41\\webapps\\')
# 
# for file_name in file_list:
#     if os.path.splitext(file_name)[1] == '.zip':
#         print " the file_name is :",file_name
# 
#         file_zip = zipfile.ZipFile(file_name, 'r')
#         for file in file_zip.namelist():
#             file_zip.extract(file, r'.')
#         file_zip.close()
        #os.remove(file_name)    

# import zipfile, os
# zipFile = zipfile.ZipFile(os.path.join(os.getcwd(), zipfilename))
# for file in zipFile.namelist():
#   zipFile.extract(file, zipfiledir)
# zipFile.close()
#ZipFile.extractall([path[, members[, pwd]]])
# for file in zipFile.namelist():
#   zipFile.extract(file, r'd:/Work')
# zipFile.close()
#ZipFile.extractall([path[, members[, pwd]]])

# if r:
#     starttime = time.time()
#     fz = zipfilezipfileutilse(filename,'r')
#     for file in fz.namelist():
#         print(file)  #打印zip归档中目录
#         fz.extract(file,filedir)
#     endtime = time.time()
#     times = endtime - starttime
# else:
#     print('This file is not zip file')
# print('unzpi zipfile timzipfileutilsstr(times))


tomcat_home="E:\\apache-tomcat-8.0.41\\" 
source_war="/data/src/laneige/laneige-web/target/laneige_Web.war"  
target_path="/data/src/temp1";  
print "start application server.............begin............."  
  
kill_cmd="kill `ps -ef | grep tomcat | awk '{print $2,$8}' | grep 'java$'| awk '{print $1}'`";  
os.system(kill_cmd);  
time.sleep(3);  
# os.system("rm -rf ");  
# time.sleep(3);  
# os.system("cp -rf %s %s/" %(source_war,webapps));  
# time.sleep(3);  
os.system("%s/bin/startup.sh " %(tomcat_home));  
time.sleep(3);  
Msg='-'*30+time.strftime('%Y-%m-%d %H:%M:%S')+'-'*30+'\n'  
 
time.sleep(2);  



# if os.path.exists(deploy_war_path): 
#     print " deploy_war_path is not exsit"
    #     os.system("dir")
# else:
#     #os.system("dir")
#     print " deploy_war_path is not exsit"
#     sys.exit()
#     
# filename = r'/home/tim/workspace/test.txt'
# if os.path.exists(deploy_war_path):
#     message = 'OK, the "%s" file exists.'
# else:
#     message = "Sorry, I cannot find the  file."
#     sys.exit()
# print message % deploy_war_path

# def checkTomcatWar():
#     if os.path.exists(deploy_war_path): 
#         print " deploy_war_path is  exsit"
#         #os.system("dir")
#     else:
#         #os.system("dir")
#         print " deploy_war_path is not exsit"
#         #sys.exit()
#     if os.path.exists(deploy_war_path): 
#         message = 'OK, the "%s" file exists.',current_datetime
#     else:
#         message = "Sorry, I cannot find the  file."
#         sys.exit()
#         
# def checkNgnixZip():  
#     if os.path.exists(ngnix_zipfile_path): 
#         message = 'OK, the "%s" file exists.',current_datetime
#     else:
#         message = "Sorry, I cannot find the  file."
#         sys.exit()
#         


# def writeLogs(filename,contents):  
#     f=open(filename,'a+');  
#     f.write(contents);  
#     f.close();  
#   
# if not os.path.exists(backup_sql_path):  
#     Msg='-'*30+time.strftime('%Y-%m-%d %H:%M:%S')+'-'*30+'\n'  
#     if(os.mkdir(backup_sql_path))==None:  
#         Msg+='**succeed to create dir:'+backup_sql_path+'\n'  
#         writeLogs(logs_path,Msg)  
#     else:  
#         Msg+='!!create backup dir:'+backup_sql_path+'failed,check whether dir can write! nn'  
#         writeLogs(logs_path,Msg)  
#   
# if not os.path.exists(deploy_war_path):  
#     Msg='-'*30+time.strftime('%Y-%m-%d,%H:%M:%S')+'-'*30+'\n'  
#     if(os.mkdir(deploy_war_path))==None:  
#         Msg+='**succeed to create dir:'+deploy_war_path+'\n'  
#         writeLogs(logs_path,Msg)  
#     else:  
#         Msg+='!!create backup dir:'+deploy_war_path+'failed,check whether dir can write! nn'  
#         writeLogs(logs_path,Msg)  
#     sys.exit()  
#     
    
print ("deploy tomcat war and static zip package has been completed.......");  
