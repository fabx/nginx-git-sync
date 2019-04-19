FROM progrium/busybox

RUN \
    mv /lib/libgcc_s.so.1 /lib/libgcc_s.so.1.bak && \
    opkg-install coreutils-timeout

RUN opkg-install curl bash git

WORKDIR /usr/local

COPY git_pull.sh /usr/local/bin/git_pull.sh

CMD ["/usr/local/bin/git_pull.sh"]


