#!/bin/bash

# Si se desea reprocesar un determinado día, por ejemplo 2016-04-03, se debe ejecutar este script
# pasandole como argumento la fecha. En el caso de reproceso para la fecha antedicha, se debe
# ejecutar de la siguiente forma: ./ga_job_general.sh 2016-04-03

PATH_KETTLE=/opt/pentaho/data-integration54
PATH_JOB=/opt/pentaho/ETL/social_media/etl
PATH_LOG=/opt/pentaho/ETL/social_media/logs
LOG_LEVEL=Basic

desde=$(date --date="1 days ago" +%Y-%m-%d)

cd $PATH_KETTLE
if [ -z "$1" ]
	then
		./kitchen.sh -file:$PATH_JOB/ga_job_gral.kjb ${desde} -level:$LOG_LEVEL -log=$PATH_LOG/ga_job_gral.log
	else
		./kitchen.sh -file:$PATH_JOB/ga_job_gral.kjb $1 -level:$LOG_LEVEL -log=$PATH_LOG/ga_job_gral.log
fi
