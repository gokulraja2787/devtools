#!/bin/sh

modified_user_name="admin"
modified_password="admin"

echo "Setting configurations"

if [ "$Q_WEBCONSOLE_BIND_ALL" = "false" ]; then
    echo "Not binding to 0.0.0.0. Console maynot be exposed out"
else
    sed -i 's#<property name="host" value="127.0.0.1"/>#<property name="host" value="0.0.0.0"/>#' /opt/activemq/apache-activemq-5.17.3/conf/jetty.xml
fi

if [ -n "$Q_USERNAME" ]; then
    echo "Setting username"
    sed -i "s#activemq.username=system#activemq.username=$Q_WEBCONSOLE_USERNAME#" /opt/activemq/apache-activemq-5.17.3/conf/credentials.properties
fi

if [ -n "$Q_PASSWORD" ]; then
    echo "Setting password"
    sed -i "s#activemq.password=manager#activemq.password=$Q_WEBCONSOLE_PASSWORD#" /opt/activemq/apache-activemq-5.17.3/conf/credentials.properties
fi

if [ -n "$Q_WEBCONSOLE_ADMIN_USERNAME" ]; then
    echo "Setting web console admin user"
    modified_user_name=$Q_WEBCONSOLE_ADMIN_USERNAME
fi

if [ -n "$Q_WEBCONSOLE_ADMIN_PASSWORD" ]; then
    echo "Setting web console admin user"
    modified_password=$Q_WEBCONSOLE_ADMIN_PASSWORD
fi

sed -i "s#admin: admin, admin#$modified_user_name: $modified_password, admin#" /opt/activemq/apache-activemq-5.17.3/conf/jetty-realm.properties

echo "Starting active mq"
cd $ACTIVEMQ_HOME/bin
./activemq console
