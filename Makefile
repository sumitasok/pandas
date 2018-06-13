PROJECT_NAME := "pandas"

.PHONY: setup

setup:
	@mkdir -p ~/.mysql_data_dir
	@ls ~/.mysql_data_dir

open_mysql:
	@docker exec -it pandas_data_1 bash

open_pandas:
	@docker run -it -v `pwd`:/app  --link pandas_db_1:db --net pandas_default pandas_pandas bash

run_d:
	@docker run -v "/Users/sumitasok/arena/src/github.com/sumitasok/pandas:/app" -it pandas_app  /bin/sh

rm_pandas:
	@docker rmi pandas_app -f

build_pandas:
	@docker build -t pandas_app .

clean_exited_containers:
	@docker rm `docker ps -a | grep Exited | awk '{print $1 }'`

clean_created_containers:
	@docker rm `docker ps -a | grep Created | awk '{print $1 }'`