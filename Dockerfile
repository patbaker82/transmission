FROM centos:7

RUN yum install -y epel-release
RUN yum install -y transmission-daemon
RUN yum install -y at

ADD remove_torrent.sh /var/lib/transmission/.config/transmission/scripts/remove_torrent.sh
ADD settings.json /var/lib/transmission/.config/transmission/settings.json

VOLUME /transmission

RUN /usr/bin/transmission-remote --blocklist-update

EXPOSE 9091

CMD /usr/bin/transmission-daemon -f --log-error -g /var/lib/transmission/.config/transmission