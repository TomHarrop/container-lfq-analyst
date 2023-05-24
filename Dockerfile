FROM haileyzhang/lfq-analyst:v1.2.4_galaxy

LABEL MAINTAINER "Tom Harrop"

# use the VERSION file to set the version label
COPY VERSION /app/VERSION
RUN export VERSION=$(cat /app/VERSION) && \
    echo "VERSION=$VERSION" >> /etc/environment
LABEL version=$VERSION

EXPOSE 8888
