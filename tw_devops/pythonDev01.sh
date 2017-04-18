#!/bin/bash  
  
###dennis zhao  linux shell script automatic deploy application server(svn)  
###2013-07-21  
###27202787@qq.com  
  
  
source /etc/profile  
export LC_ALL='en_US.UTF-8'  
echo "==$1==#####################################`date "+%F %H:%M:%S"`"  
echo "dev parametre=====stress,local"  
echo "stage parametre=====staging"  
echo "prod parametre=====prod"  
  
backup_sql_path=/data2/backup/sql  
backup_war_path=/data2/backup/war  
current_date=`date +"%Y%m%d%H%M"`  
db_name=laneige  
password=xxxx2011  
  
if [ ! -d "${backup_sql_path}" ]; then  
    mkdir -p "${backup_sql_path}"  
fi  
  
if [ ! -d "${backup_war_path}" ]; then  
        mkdir -p "${backup_war_path}"  
fi  
  
if [ "$1" = "local" -o "$1" = "" -o "$1" = "stress" ]; then  
  
    password=xxxx2012  
    mysqldump -uroot -p${password} ${db_name} > ${backup_sql_path}/${current_date}.sql  
    cd ${backup_sql_path}  
    tar -zcvf ${current_date}.tar.gz ${current_date}.sql --remove-files  
    sleep 3  
    #ls -lth ${backup_sql_path}  
    echo "backup database ${db_name} OK........."  
      
elif [ "$1" = "staging" ]; then  
    password=xxxx2011  
elif [ "$1" = "prod" ]; then  
    password=xxxx2011  
fi  
echo "------------------------------------------------------------------------------------------"  
echo "compile class file.............begin............."  
  
resource=/data/src/laneige  
tomcat_home=/opt/app/tomcat  
webapps=${tomcat_home}/webapps  
echo "backup war file.............begin............."  
cp  ${webapps}/laneige_Web.war ${backup_war_path}/laneige_Web_${current_date}.war  
sleep 6  
echo "backup war file.............end............."  
echo "SVN update ...........start..............."  
cd ${resource}  
svn up  
sleep 1  
svn up  
echo "SVN update .............end............."  
  
if [ "$1" = "" -o "$1" = "local" -o "$1" = "stress" ]; then  
    mvn -U clean package -PSTRESS  
    echo "dev complie completed-----------------"  
elif [ "$1" = "staging" ]; then  
    mvn -U clean package -PSTAGING  
    echo "staging complie completed-----------------"  
elif [ "$1" = "prod" ]; then  
    mvn -U clean package -PPROD  
    echo "prod complie completed-----------------"  
fi  
echo "compile class file.............end............."  
echo "------------------------------------------------------------------------------------------"  
  
sleep 5  
  
if [ "$1" = "" -o "$1" = "local" -o "$1" = "stress"  ]; then  
    echo "stop tomcat application server.....begin.........."  
    echo "stop tomcat application server..............."  
  
    process_id=`ps -ef | grep tomcat | awk '{print $2,$8}' | grep 'java$'| awk '{print $1}'`  
    #echo "process_id=========================${process_id}"  
    if test -z "${process_id}"   
    then  
       echo "The tomcat stopped already.................`pwd`"  
    else  
       kill ${process_id}  
       echo "kill tomcat process finish.............."  
       #ps -ef | grep tomcat  
    fi  
  
    echo "stop tomcat application server.....end.........."  
  
    sleep 2  
    rm -rf ${webapps}/laneige_Web*  
    cp -rf ${resource}/laneige-web/target/laneige_Web.war ${webapps}/  
    sleep 3  
      
    echo "------------------start tomcat---------`pwd`---------------------------"  
    ${tomcat_home}/bin/startup.sh  
    echo "------------------finish tomcat------------------------------------"  
    sleep 3  
    ps -ef | grep tomcat  
elif [ "$1" = "staging" ]; then  
    echo "Copy files to stage environment........................"  
    echo "Start copying files takes a few minutes........................"  
    scp -P 61 /data/src/laneige/laneige-web/target/laneige_Web.war root@192.168.10.125:/data/src/temp  
    echo "Copy file finished, please check it-----------------"  
    #sleep 10  
    #ssh -t -p 61 root@192.168.10.125 '/tmp/sh/stageStart.sh'  
    echo "You should start the tomcat application server in the stage server.........."  
    #echo "The staging environment has been deployed already, please check it, thank you!!!!!!!"  
elif [ "$1" = "prod" ]; then  
    echo "Copy files to production environment........................"  
    echo "Start copying files takes a few minutes........................"  
    scp -P 65 /data/src/laneige/laneige-web/target/laneige_Web.war root@192.168.11.185:/data/src/temp  
    echo "Copy file finished, please check it-----------------"  
    #sleep 10  
    #ssh -t -p 65 root@192.168.11.185 '/tmp/sh/prodStart.sh'  
    echo "You should start the tomcat application server in the production server.........."  
    #echo "The production environment has been deployed already, please check it, thank you!!!!!!!"  
fi  
  
echo "==$1==#####################################`date "+%F %H:%M:%S"`"  