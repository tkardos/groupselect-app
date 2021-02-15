# FROM ubuntu:latest
FROM fmanbuildsystem/ubuntu:16.04
FROM python:3.6

RUN apt-get update && \
    apt-get upgrade -y

# RUN DEBIAN_FRONTEND=noninteractive apt-get install software-properties-common -y && \
#    add-apt-repository ppa:deadsnakes/ppa -y && \
#    apt-get update && \
#    apt-get install python3.6 python3.6-dev python3.6-venv -y \


RUN apt-get install libgl1-mesa-glx -y


RUN mkdir -p /app
WORKDIR /app
COPY . .
RUN python3 -m pip install pipenv
RUN python3 -m pip install jsonpickle==1.4.1
RUN python3 -m pip install fbs
RUN python3 -m pip install PyQt5==5.15.0
RUN python3 -m pip install setuptools==49.2.0
RUN pipenv install
# RUN apt update
# RUN apt install libgl1-mesa-glx -y
# CMD ["pipenv","run","fbs","run"]
# pipenv run fbs run


