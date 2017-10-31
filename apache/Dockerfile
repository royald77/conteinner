# Container used to test Content Management feature
#
# VERSION               1.0.0

FROM opensuse
MAINTAINER Michele Bologna <michele.bologna@suse.com>

ARG repo
ARG cert

RUN echo "$cert" > /etc/pki/trust/anchors/RHN-ORG-TRUSTED-SSL-CERT.pem
RUN update-ca-certificates
RUN echo "$repo" > /etc/zypp/repos.d/susemanager:dockerbuild.repo

RUN echo "172.16.5.129    linux-suma.suse.com" >> /etc/hosts
RUN zypper --non-interactive --gpg-auto-import-keys ref
RUN zypper --non-interactive in aaa_base aaa_base-extras net-tools timezone vim less sudo tar python python-xml apache2 apache2-prefork
#ADD add_packages.sh /root/add_packages.sh
#RUN /root/add_packages.sh
ADD /etc/apache2/conf.d/pub.conf /etc/apache2/conf.d/pub.conf
#ADD pub.conf /etc/apache2/conf.d/pub.conf
RUN mkdir -p /srv/www/htdocs/pub/
ADD /srv/www/htdocs/pub/index.html /pub/index.html/pub/index.html 
#ADD index.html /srv/www/htdocs/pub/index.html

CMD /usr/sbin/start_apache2 -DFOREGROUND -k start
