#!/bin/bash

PATH_KETTLE=/opt/pentaho/data-integration54
PATH_JOB=/opt/pentaho/ETL/isolant/reporte_vendedores/etl
PATH_LOG=/opt/pentaho/ETL/isolant/reporte_vendedores/logs
LOG_LEVEL=Basic

cd $PATH_KETTLE

./kitchen.sh -file:$PATH_JOB/job_envio_reportes_vendedores.kjb -level=$LOG_LEVEL -log=$PATH_LOG/genera_reporte_vendedores.log
