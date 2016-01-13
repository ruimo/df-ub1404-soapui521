FROM ruimo/df-ub1404-jdk8
MAINTAINER Shisei Hanai<ruimo.uno@gmail.com>

RUN apt-get update
RUN apt-get install -y wget

RUN \
  mkdir -p /opt && \
  cd /opt && \
  wget http://cdn01.downloads.smartbear.com/soapui/5.2.1/SoapUI-5.2.1-linux-bin.tar.gz && \
  tar xf SoapUI-5.2.1-linux-bin.tar.gz
RUN echo "export PATH=/opt/SoapUI-5.2.1/bin:$PATH" >> /etc/profile

ENTRYPOINT ["/bin/bash"]
