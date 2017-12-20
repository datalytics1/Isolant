#!/bin/bash
PATH_KETTLE=/opt/pentaho/data-integration
PATH_JOB=/opt/pentaho/ETL/isolant/etl
PATH_LOG=/opt/pentaho/ETL/isolant/logs
LOG_LEVEL=Basic

#Fecha Ayer Formato YYYYMMDD
DATE_FROM=`date --date "1 days ago" +%Y%m%d`
#DATE_FROM=20161001
cd $PATH_KETTLE

./kitchen.sh -file:$PATH_JOB/job_carga_dw.kjb $DATE_FROM -level=$LOG_LEVEL -log=$PATH_LOG/job_carga_dw.log
