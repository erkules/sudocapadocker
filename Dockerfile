FROM ubuntu:18.04

RUN apt-get update 
RUN apt-get  install -y iputils-ping 
RUN cp /bin/ping /bin/pingsudo 
RUN cp /bin/ping /bin/pingcapa 
RUN cp /bin/ping /bin/pingplain 
RUN chmod +s /bin/pingsudo 
RUN setcap cap_net_raw=ep /bin/pingcapa  
