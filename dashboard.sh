#!/usr/bin/env bash

working_dir=`pwd`

#Get namesapce variable
tenant="automation"

#Get Master pod details

master_pod=`kubectl get po -n $tenant | grep jmeter-master | awk '{print $1}'`

kubectl exec -ti -n $tenant $master_pod -- cp -r /load_test /jmeter/load_test

kubectl exec -ti -n $tenant $master_pod -- chmod 755 /jmeter/load_test

##kubectl cp $working_dir/influxdb-jmeter-datasource.json -n $tenant $grafana_pod:/influxdb-jmeter-datasource.json