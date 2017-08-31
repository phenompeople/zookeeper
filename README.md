[![Docker Automated build](https://img.shields.io/docker/automated/phenompeople/zookeeper.svg?style=plastic)](https://hub.docker.com/r/phenompeople/kibana/)
[![Docker Build Status](https://img.shields.io/docker/build/phenompeople/zookeeper.svg?style=plastic)](https://hub.docker.com/r/phenompeople/kibana/)
[![Docker Pulls](https://img.shields.io/docker/pulls/phenompeople/zookeeper.svg?style=plastic)](https://hub.docker.com/r/phenompeople/kibana/)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

## Kibana 

Dockerfiles for building Centos based Zookeeper images.

### Supported tags and respective Dockerfile links

#### phenompeople/kibana

* **`latest`		([3.4.10/Dockerfile](https://bitbucket.org/phenompeople/zookeeper/src/master/3.4.10/Dockerfile))**
* **`3.4.10` 	([3.4.10/Dockerfile](https://bitbucket.org/phenompeople/zookeeper/src/master/3.4.10/Dockerfile))**
* **`3.4.8` 		([3.4.8/Dockerfile](https://bitbucket.org/phenompeople/zookeeper/src/master/3.4.8/Dockerfile))**

#### Pre-Requisites

- install docker-engine [https://docs.docker.com/engine/installation/](https://docs.docker.com/engine/installation/)

### How to use this image 

1.  This image can be used by simply running 

```$ docker run --name=zookeeper -p 2181:2181 -td phenompeople/zookeeper```

Above command runs kibana container with port 5601 mapped to host and connecting to elasticsearch running at http://localhost:9200 and kibana index mapped to `.kibana`. 

1. To make image run even after reboot use extra option --restart=always

```$ docker run --restart=always --name=zookeeper -p 2181:2181 -td phenompeople/zookeeper```

### MultiNode Zookeeper

For reliable ZooKeeper service, you should deploy ZooKeeper in a cluster known as an ensemble. As long as a majority of the ensemble are up, the service will be available.
Because Zookeeper requires a majority, it is best to use an odd number of machines.
For example, with four machines ZooKeeper can only handle the failure of a single machine; if two machines fail, the remaining two machines do not constitute a majority. However, with five machines ZooKeeper can handle the failure of two machines.

**Note:** Same zookeeper can be used for Multi node servers, however create your own conf directory with minimum zoo.cfg and log4j.properties

## Maintainers

* Rajesh Jonnalagadda (<rajesh.jonnalagadda@phenompeople.com>)

## License and Authors

**License:**	Apache License

**Author :** Phenompeople Pvt Ltd (<admin.squad@phenompeople.com>)