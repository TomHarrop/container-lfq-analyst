FROM haileyzhang/lfq-analyst:v1.2.4_galaxy

LABEL MAINTAINER "Tom Harrop"

COPY VERSION /app/VERSION
ENV VERSION=$(cat /app/VERSION)
LABEL version=$VERSION

EXPOSE 8888
