# Jmeter Cluster Support for Kubernetes

## Prerequisits
```
Kubernetes > 1.16

```

## Components:

```
Jmeter master
Jmeter slaves
InfluxDB instance with graphite interface as a jmeter backend
```


Please follow the guide "Load Testing Jmeter On Kubernetes" on our medium blog post:

https://goo.gl/mkoX9E

## Architecture:


![image description](https://raw.githubusercontent.com/kaarolch/kubernetes-jmeter/master/images/kubernetes-jmeter_architecture.png)


## Reporting 

https://reporter.sariska.io/api/v5/report


## References

https://blog.kubernauts.io/load-testing-as-a-service-with-jmeter-on-kubernetes-fc5288bb0c8b

## Deploy

```bash
./dockerimages.sh
./jmeter_cluster_create.sh
./dashboard.sh
./start_test.sh```
