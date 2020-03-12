#!/bin/sh

# databases=dev,test
for db in ${MYSQL_DATABASES//,/ } ; do
    echo "Create Database: $db"  
    echo "CREATE DATABASE IF NOT EXISTS \`$db\` ;" | "${mysql[@]}"
    echo "GRANT ALL ON \`$db\`.* TO '"$MYSQL_USER"'@'%' ;" | "${mysql[@]}"
    echo 'FLUSH PRIVILEGES ;' | "${mysql[@]}"
done
