#!/bin/bash
PATH_KETTLE=/opt/pentaho/data-integration54
PATH_ETL=/opt/pentaho/ETL/social_media/etl/bajadas
PATH_LOG=/opt/pentaho/ETL/social_media/logs
LOG_LEVEL=Basic

cd $PATH_KETTLE
./kitchen.sh -file:$PATH_ETL/job_twitter_bajada_actividad_tweets.kjb -level:$LOG_LEVEL -log=$PATH_LOG/job_twitter_bajada_actividad_tweets.log
