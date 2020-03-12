# docker-mysql-multidb

Docker image for MySQL with multi databases.

## Example in docker-compose

```yml
  db:
    image: maruware/mysql-multidb
    environment:
      MYSQL_ROOT_PASSWORD: secret
      MYSQL_USER: dbuser
      MYSQL_PASSWORD: secret
      MYSQL_DATABASES: dev,test
    volumes:
      - db-data:/var/lib/mysql
```
