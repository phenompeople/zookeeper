FROM phenompeople/oraclejre:latest
LABEL maintainer="ranganath.akula@phenompeople.com"
ARG ZOOKEEPER_VERSION=3.6.1
ARG ZOOKEEPER_HOME=/usr/local/zookeeper
EXPOSE 2181 2888 3888
RUN useradd zookeeper -s /bin/false -u 400 && \
    wget -q -O /tmp/zookeeper.tar.gz https://downloads.apache.org/zookeeper/zookeeper-${ZOOKEEPER_VERSION}/apache-zookeeper-${ZOOKEEPER_VERSION}-bin.tar.gz && \
    tar -xzf /tmp/zookeeper.tar.gz -C /usr/local && \
    ln -sf /usr/local/apache-zookeeper-${ZOOKEEPER_VERSION}-bin ${ZOOKEEPER_HOME} && \
    mkdir -p  ${ZOOKEEPER_HOME}/logs && \
    touch /usr/local/zookeeper/logs/zookeeper.out && \
    rm -rf /tmp/zookeeper.tar.gz && \
    chown -R zookeeper:zookeeper /usr/local/zookeeper/logs/
ENV ZOOKEEPER_HOME=${ZOOKEEPER_HOME} \
    PATH=$ZOOKEEPER_HOME:$PATH
ADD zoo.cfg     ${ZOOKEEPER_HOME}/conf/zoo.cfg
ADD start-server.sh ${ZOOKEEPER_HOME}/start-server.sh
USER zookeeper
ENTRYPOINT ["/usr/local/zookeeper/start-server.sh"]
