#!/usr/bin/env bash
rm -rf /tmp/zookeeper/*
/usr/local/zookeeper/bin/zkServer.sh start-foreground > ${ZOOKEEPER_HOME}/logs/zookeeper.out