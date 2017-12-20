#!/bin/bash
PATH_KETTLE=/opt/pentaho/data-integration
PATH_JOB=/opt/pentaho/ETL/isolant/etl
PATH_LOG=/opt/pentaho/ETL/isolant/logs
LOG_LEVEL=Basic

cd $PATH_KETTLE
./kitchen.sh -file:$PATH_JOB/job_carga_ods_calypso.kjb -level=$LOG_LEVEL -log=$PATH_LOG/job_carga_ods_calypso.log