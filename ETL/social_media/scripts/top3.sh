#!/bin/bash
PATH_KETTLE=/opt/pentaho/data-integration54
PATH_JOB=/opt/pentaho/ETL/social_media/etl
PATH_LOG=/opt/pentaho/ETL/social_media/logs
LOG_LEVEL=Basic

cd $PATH_KETTLE
./pan.sh -file:$PATH_JOB/top3.ktr -level:$LOG_LEVEL -log=$PATH_LOG/top3.log


