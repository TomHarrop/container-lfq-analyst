FROM haileyzhang/lfq-analyst:v1.2.5_galaxy

LABEL MAINTAINER "Tom Harrop"

RUN touch /etc/services.d/shiny-server/down

CMD ["/init"]
