#!/bin/bash
PATH_KETTLE=/opt/pentaho/data-integration
PATH_JOB=/opt/pentaho/ETL/isolant/etl
PATH_LOG=/opt/pentaho/ETL/isolant/logs
LOG_LEVEL=Basic

#Fecha Ayer Formato AAAA-MM-DD
DATE_FROM=`date --date "1 days ago" +%Y-%m-%d`
#DATE_FROM=2016-11-01
cd $PATH_KETTLE
./kitchen.sh -file:$PATH_JOB/job_carga_calypso.kjb $DATE_FROM -level=$LOG_LEVEL -log=$PATH_LOG/job_carga_calypso.log