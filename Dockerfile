FROM haileyzhang/lfq-analyst:v1.2.5_galaxy

LABEL MAINTAINER "Tom Harrop"

RUN rm -rf /etc/services.d/shiny-server

CMD ["/init"]
