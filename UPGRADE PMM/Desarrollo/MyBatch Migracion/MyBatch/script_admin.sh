#/bin/bash

#########################################################################################
# Script for do masive tasks with AppManage in TIBCO domain
#
# Use: ./script_admin.sh <action> <domain> <user> <password> <integrations list>
# action: config, delete, deploy, undeploy, start, stop
# domain: DEAIMEX01, CEAIMEX01, PEAIMEX01
# integrations list: file name. Example: integration_list.txt
#########################################################################################

DOMAIN=""

case "$2" in
        'DEAIMEX01')    DOMAIN=$2;;
        'CEAIMEX01')    DOMAIN=$2;;
        'PEAIMEX01')    DOMAIN=$2;;
        *)                              echo "Unrecognized domain" |tee -a /opt/tibco/script_admin.log
                                        exit ;;
esac

cd /opt/tibco/tra/5.8/bin
EXPORT_HOME=/opt/tibco/MyBatch

case "$1" in
        'config')
						PMM_LIST=/opt/tibco/$5
                        for i in `cat $PMM_LIST` ;
                        do
                                        echo "$1 $i"  |tee -a /opt/tibco/script_admin.log
./AppManage -config -app $i -deployConfig $EXPORT_HOME/$i.xml -ear $EXPORT_HOME/$i.ear -domain $DOMAIN -user $3 -pw $4  |tee -a /opt/tibco/script_admin.log
                        done;;
        'delete')
						PMM_LIST=/opt/tibco/$5
                        for i in `cat $PMM_LIST` ;
                        do
                                        echo "$1 $i"  |tee -a /opt/tibco/script_admin.log
                                        ./AppManage -delete -app $i -domain $DOMAIN -user $3 -pw $4  |tee -a /opt/tibco/script_admin.log
                        done;;
        'deploy')
						PMM_LIST=/opt/tibco/$5
                        for i in `cat $PMM_LIST` ;
                        do
                                        echo "$1 $i"  |tee -a /opt/tibco/script_admin.log
                                        ./AppManage -deploy -app $i -domain $DOMAIN -user $3 -pw $4 -nostart -timeout 60 |tee -a /opt/tibco/script_admin.log
                        done;;
        'undeploy')
						PMM_LIST=/opt/tibco/$5
                        for i in `cat $PMM_LIST` ;
                        do
                                        echo "$1 $i"  |tee -a /opt/tibco/script_admin.log
                                        ./AppManage -undeploy -app $i -domain $DOMAIN -user $3 -pw $4 -timeout 5  |tee -a /opt/tibco/script_admin.log
                        done;;
        'start')
						PMM_LIST=/opt/tibco/$5
                        for i in `cat $PMM_LIST` ;
                        do
                                        echo "$1 $i"  |tee -a /opt/tibco/script_admin.log
                                        ./AppManage -start -app $i -domain $DOMAIN -user $3 -pw $4  |tee -a /opt/tibco/script_admin.log
                        done;;
        'stop')
						PMM_LIST=/opt/tibco/$5
                        for i in `cat $PMM_LIST` ;
                        do
                                        echo "$1 $i"  |tee -a /opt/tibco/script_admin.log
                                        ./AppManage -stop -app $i -domain $DOMAIN -user $3 -pw $4  |tee -a /opt/tibco/script_admin.log
                        done;;
		'batchConfig')

						./AppManage -batchConfig -domain $DOMAIN -user $3 -pw $4 -dir $EXPORT_HOME |tee -a /opt/tibco/script_admin.log
                        ;;
        'batchDelete')

						./AppManage -batchDelete -domain $DOMAIN -user $3 -pw $4 -dir $EXPORT_HOME |tee -a /opt/tibco/script_admin.log
                        ;;
        'batchDeploy')

						./AppManage -batchDeploy -domain $DOMAIN -user $3 -pw $4 -dir $EXPORT_HOME -nostart |tee -a /opt/tibco/script_admin.log
                        ;;
        'batchUndeploy')

						./AppManage -batchUndeploy -domain $DOMAIN -user $3 -pw $4 -dir $EXPORT_HOME |tee -a /opt/tibco/script_admin.log
                        ;;
        'batchstart')

						./AppManage -batchstart -domain $DOMAIN -user $3 -pw $4 -dir $EXPORT_HOME |tee -a /opt/tibco/script_admin.log
                        ;;
        'batchstop')

						./AppManage -batchstop -domain $DOMAIN -user $3 -pw $4 -dir $EXPORT_HOME |tee -a /opt/tibco/script_admin.log
                        ;;				
						
						
        *)                              echo "Unrecognized action" |tee -a /opt/tibco/script_admin.log
                                        exit ;;
esac







