FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get install -y python-pip
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 5000
CMD python ./index.py
