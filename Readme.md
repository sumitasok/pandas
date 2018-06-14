edit docker-compose.services.myapp.volumes
edit docker-compose.services.mydb.volumes

what is a standard way to handle such local development changes and production ?

```
make setup
make build_pandas
docker-compose up
```