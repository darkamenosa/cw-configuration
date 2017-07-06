FROM java:8-jre
MAINTAINER Tuyen Ho <hxtxmu@gmail.com>

ADD ./build/libs/cw-configuration.jar /opt/

CMD ["java", "-Xmx200m", "-jar", "/opt/cw-configuration.jar"]

HEALTHCHECK --interval=10s --timeout=3s CMD curl -f http://localhost:8888/health || exit 1

EXPOSE 8888

LABEL application=cw-configuration
