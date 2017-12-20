#!/bin/bash
PATH_KETTLE=/opt/pentaho/data-integration
PATH_JOB=/opt/pentaho/ETL/isolant/etl
PATH_LOG=/opt/pentaho/ETL/isolant/logs
LOG_LEVEL=Basic

cd $PATH_KETTLE
./kitchen.sh -file:$PATH_JOB/job_alerta_falta_datos_prg.kjb  -level=$LOG_LEVEL -log=$PATH_LOG/job_alerta_prg.log
