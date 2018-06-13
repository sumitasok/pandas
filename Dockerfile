FROM python:3.6
MAINTAINER sumitasok@gmail.com

RUN pip install pandas --no-cache-dir
RUN pip install sqlalchemy --no-cache-dir
RUN pip install pymysql --no-cache-dir

RUN mkdir /app
WORKDIR /app

ENTRYPOINT ["python", "sample.py"]

# CMD "python sample.py" # && python3 -m http.server 2000"
