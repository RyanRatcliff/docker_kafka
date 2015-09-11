# docker_kafka

## Create a topic
```
docker run --rm ryanratcliff/kafka kafka-topics.sh --create --topic test --replication-factor 1 --partitions 1 --zookeeper dockerstormcluster_zookeeper_1:2181
```
