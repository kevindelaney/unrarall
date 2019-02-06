#FROM resin/aarch64-debian
#FROM lsiobase/ubuntu.arm64:bionic
FROM kingdonb/baseimage:armhf-latest

# Install
#RUN apk add --no-cache unrar cksfv bash cfv p7zip-full p7zip-rar
RUN apt-get update
RUN apt-get install -y cfv cksfv p7zip-full p7zip-rar unrar
RUN apt-get install -y file
# Build
WORKDIR /src/
COPY . /src/
RUN cd /src

# Run Tests
CMD ["bash", "./unrar-script.sh"]
