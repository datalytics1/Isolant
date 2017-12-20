#!/bin/bash

PATH_KETTLE=/opt/pentaho/data-integration
PATH_JOB=/opt/pentaho/ETL/isolant/etl
PATH_LOG=/opt/pentaho/ETL/isolant/logs
LOG_LEVEL=Basic

#Fecha Ayer Formato AAAA-MM-DD
DATE_FROM=`date --date "1 days ago" +%Y-%m-%d`

cd $PATH_KETTLE

./kitchen.sh -file:$PATH_JOB/job_carga_isolant_plus.kjb $DATE_FROM -level=$LOG_LEVEL -log=$PATH_LOG/job_carga_isolant_plus.log
