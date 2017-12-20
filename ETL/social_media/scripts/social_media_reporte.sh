#!/bin/bash
PATH_KETTLE=/opt/pentaho/data-integration
PATH_JOB=/opt/pentaho/ETL/social_media/etl/reporte_semanal
PATH_LOG=/opt/pentaho/ETL/social_media/logs
LOG_LEVEL=Basic

cd $PATH_KETTLE
./kitchen.sh -file:$PATH_JOB/social_media.kjb -level:$LOG_LEVEL -log=$PATH_LOG/social_media.log


