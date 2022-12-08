## Active MQ Image
Apache ActiveMQ 5.17.2

### Configuration
Set the following options in environment variable to:

| Environment Variable | Default | Description |
|----------------------|---------|-------------|
| Q_WEBCONSOLE_BIND_ALL| true    |true to use 0.0.0.0; false to use 127.0.0.1|
| Q_WEBCONSOLE_ADMIN_USERNAME| admin    |admin username for webconsole|
| Q_WEBCONSOLE_ADMIN_PASSWORD| admin    |admin password for webconsole|
| Q_USERNAME| system    |User name for MQ Security|
| Q_PASSWORD| manager    |password for MQ Security|

Example:
```
docker run -it \
-p 61616:61616 -p 8161:8161 \
-e Q_WEBCONSOLE_BIND_ALL=true -e Q_WEBCONSOLE_USERNAME=user -e Q_WEBCONSOLE_PASSWORD=user \
-e Q_WEBCONSOLE_ADMIN_USERNAME=admin -e Q_WEBCONSOLE_ADMIN_PASSWORD=adminpwd \
gokul2787/devtools:activemq
```

<hr />

Based on gokul2787/devtools:openjdk17

openjdk 17.0.2 2022-01-18
OpenJDK Runtime Environment (build 17.0.2+8-86)
OpenJDK 64-Bit Server VM (build 17.0.2+8-86, mixed mode, sharing)

<hr />
