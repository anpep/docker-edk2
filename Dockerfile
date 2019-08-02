FROM ubuntu
RUN apt-get update && apt-get install -y build-essential uuid-dev iasl git gcc-5 nasm python
RUN mkdir -p /usr/local/src
COPY util/ /usr/local/src/util/
RUN chmod -R a+x /usr/local/src/util/
RUN /usr/local/src/util/edk2-download.sh
RUN /bin/sh -c "echo 'cd /usr/local/src/edk2 && source edksetup.sh' >> /root/.bash_profile"
ENTRYPOINT ["/bin/bash", "-l", "-c"]

