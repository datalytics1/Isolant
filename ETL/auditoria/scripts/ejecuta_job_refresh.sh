#!/bin/bash
PATH_KETTLE=/opt/pentaho/data-integration
PATH_ETL=/opt/pentaho/biserver-ce/pentaho-solutions/system/pentaho-ce-audit/endpoints/kettle
PATH_LOG=/opt/pentaho/ETL/auditoria/scripts
LOG_LEVEL=Basic

cd $PATH_KETTLE
./kitchen.sh -file:$PATH_ETL/job_refresh.kjb -level:$LOG_LEVEL -log=$PATH_LOG/job_refresh.log
