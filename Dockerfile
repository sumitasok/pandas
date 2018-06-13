FROM python:3.6
MAINTAINER sumitasok@gmail.com

RUN pip install pandas --no-cache-dir
RUN pip install sqlalchemy --no-cache-dir
RUN pip install pymysql --no-cache-dir
# https://stackoverflow.com/questions/454854/no-module-named-mysqldb?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa
# RUN apt install mysql-client -y
RUN apt-get update && apt-get install -y mysql-client && rm -rf /var/lib/apt
RUN pip install mysqlclient --no-cache-dir

RUN mkdir /app
WORKDIR /app

ENTRYPOINT ["python", "sample.py"]

# CMD "python sample.py" # && python3 -m http.server 2000"
