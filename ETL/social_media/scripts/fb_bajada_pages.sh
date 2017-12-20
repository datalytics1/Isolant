#!/bin/bash
PATH_KETTLE=/opt/pentaho/data-integration54
PATH_ETL=/opt/pentaho/ETL/social_media/etl/bajadas
PATH_LOG=/opt/pentaho/ETL/social_media/logs
LOG_LEVEL=Basic

cd $PATH_KETTLE
./kitchen.sh -file:$PATH_ETL/job_fb_bajada_pages.kjb -level:$LOG_LEVEL -log=$PATH_LOG/job_fb_bajada_pages.log
