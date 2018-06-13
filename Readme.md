edit docker-compose.services.myapp.volumes
edit docker-compose.services.mydb.volumes

what is a standard way to handle such local development changes and production ?

```
make setup
make build_pandas
docker-compose up
```


error

```
myapp    |     raise errorclass(errno, errval)
myapp    | pymysql.err.OperationalError: (1045, "Access denied for user 'iamuser'@'172.19.0.3' (using password: NO)")
myapp    |
myapp    | The above exception was the direct cause of the following exception:
myapp    |
myapp    |     raise errorclass(errno, errval)
myapp    | sqlalchemy.exc.OperationalError: (pymysql.err.OperationalError) (1045, "Access denied for user 'iamuser'@'172.19.0.3' (using password: NO)") (Background on this error at: http://sqlalche.me/e/e3q8)
```