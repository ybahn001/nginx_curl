# "ported" by Adam Miller <maxamillion@fedoraproject.org> from
#   https://github.com/fedora-cloud/Fedora-Dockerfiles
#
# Originally written for Fedora-Dockerfiles by
#   scollier <scollier@redhat.com>

FROM ubuntu
MAINTAINER The kt.com Project <ybahn001@gmail.com>

COPY ./install.sh /
RUN chmod 755 /install.sh
COPY ./start.sh /
RUN chmod 755 /start.sh
RUN /install.sh

# ENTRYPOINT ["/xx/sshd","sshd"]
CMD /start.sh
