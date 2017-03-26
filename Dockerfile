# Test environment:
#FROM python:2.7
#

# Prodution environment:
FROM resin/raspberrypi3-python:latest
#

RUN apt-get -y install git


# Install python modules
COPY requirements.txt ./
RUN pip install -r ./requirements.txt

# Clone Rep
RUN git clone https://github.com/gustavomitt/controlPump.git /home/controlPump

# ADD humidityReader /home

CMD python /home/controlPump/controlPump.py
#CMD /bin/bash


