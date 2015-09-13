# Docker Kafka
A very basic Docker Kafka container.

### To build the container
```
docker build -t ryanratcliff/kafka .
```

### Alternatively, the container can be pulled from Docker Registry
```
docker pull ryanratcliff/kafka
```

# Example usages

### To startup as is, requires a zookeeper instance defined as 'zookeeper'
```
docker run -d --link my_zookeeper:zookeeper ryanratcliff/kafka
```

### To startup with data directory located on host and all ports exposed to host
```
docker run -d -P --link my_zookeeper:zookeeper ryanratcliff/kafka
```

### To startup with data directory located on host and specific port exposed
```
docker run -d p 9092:9092 --link my_zookeeper:zookeeper ryanratcliff/kafka
```
