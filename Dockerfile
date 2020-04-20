FROM ubuntu:20.04

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y freeradius freeradius-python3

RUN ln -s /etc/freeradius/3.0/mods-available/python3 /etc/freeradius/3.0/mods-enabled/

CMD bash -c "echo 'Running using:' dpkg -l | grep freeradius-python3; freeradius -Xx"
