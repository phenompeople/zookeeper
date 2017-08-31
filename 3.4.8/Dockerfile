#Base image
FROM phenompeople/centos-sunjre:latest
MAINTAINER Rajesh Jonnalagadda "admin.squad@phenompeople.com"
ARG ZOOKEEPER_VERSION=3.4.8
ARG ZOOKEEPER_HOME=/usr/local/zookeeper
EXPOSE 2181 2888 3888
RUN useradd zookeeper && \ 
	wget -q -O /tmp/zookeeper.tar.gz http://www-us.apache.org/dist/zookeeper/zookeeper-${ZOOKEEPER_VERSION}/zookeeper-${ZOOKEEPER_VERSION}.tar.gz && \
	tar -xzf /tmp/zookeeper.tar.gz -C /usr/local && \
	ln -s /usr/local/zookeeper-${ZOOKEEPER_VERSION} ${ZOOKEEPER_HOME} && \
	rm -rf /tmp/zookeeper.tar.gz
	 
ENV ZOOKEEPER_HOME=${ZOOKEEPER_HOME} \
	PATH=$ZOOKEEPER_HOME:$PATH

ADD zoo.cfg 	${ZOOKEEPER_HOME}/conf/zoo.cfg
ADD start-server.sh ${ZOOKEEPER_HOME}/start-server.sh
USER zookeeper
ENTRYPOINT ["/usr/local/zookeeper/start-server.sh"]