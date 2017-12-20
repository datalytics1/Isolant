#!/bin/bash
PATH_KETTLE=/opt/pentaho/data-integration54
PATH_ETL=/opt/pentaho/ETL/social_media/etl/bajadas
PATH_LOG=/opt/pentaho/ETL/social_media/logs
LOG_LEVEL=Basic

cd $PATH_KETTLE
./pan.sh -file:$PATH_ETL/bajada_top3.ktr -level:$LOG_LEVEL -log=$PATH_LOG/bajada_top3.log
