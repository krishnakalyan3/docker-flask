FROM ubuntu:latest
MAINTAINER Krishna Kalyan "krishnakalyan3@gmail.com"

RUN apt-get update -y
RUN apt-get install -y  python3-pip python3.6

COPY . /app
WORKDIR /app

RUN pip3 install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["app.py"]
