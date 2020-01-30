FROM tidypete/wlp:v1

# install war

COPY app/* /opt/ibm/wlp/usr/servers/defaultServer/dropins/
RUN chmod a+rwx /opt/ibm/wlp/output/defaultServer
ENV LICENSE $LICENSE

USER 1001

EXPOSE 9080 9443

CMD ["/opt/ibm/wlp/bin/server", "run", "defaultServer"]
