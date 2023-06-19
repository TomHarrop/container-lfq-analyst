FROM haileyzhang/lfq-analyst:v1.2.5_galaxy

LABEL MAINTAINER "Tom Harrop"

# disable the shiny server
RUN touch /etc/services.d/shiny-server/down

# reconfigure /srv/shiny-server/lfq-analyst/shiny-server.conf
RUN export shiny_server_conf="/srv/shiny-server/lfq-analyst/shiny-server.conf" && \
	sed -i 's/http_keepalive_timeout 600/http_keepalive_timeout 0/' "${shiny_server_conf}" && \
	sed -i 's/app_init_timeout 1800/app_init_timeout 0/' "${shiny_server_conf}" && \
	sed -i 's/app_idle_timeout 1800/app_idle_timeout 0/' "${shiny_server_conf}" && \
	cat "${shiny_server_conf}"

CMD ["/init"]
