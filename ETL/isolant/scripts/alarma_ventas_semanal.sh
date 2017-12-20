#!/bin/bash
PATH_KETTLE=/opt/pentaho/data-integration
PATH_JOB=/opt/pentaho/ETL/isolant/etl
PATH_LOG=/opt/pentaho/ETL/isolant/logs
LOG_LEVEL=Basic

cd $PATH_KETTLE
./kitchen.sh -file:$PATH_JOB/jb_dias_sin_ventas.kjb  -level=$LOG_LEVEL -log=$PATH_LOG/jb_dias_sin_ventas.log
