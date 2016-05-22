FROM centos:7

RUN yum install -y epel-release
RUN yum install -y transmission-daemon
RUN yum install -y at

ADD remove_torrent.sh /var/lib/transmission/.config/transmission/scripts/remove_torrent.sh
ADD settings.json /var/lib/transmission/.config/transmission/settings.json
ADD start.sh /root/start.sh

RUN chmod +x /root/start.sh

EXPOSE 9091
VOLUME /transmission

ENTRYPOINT /root/start.sh