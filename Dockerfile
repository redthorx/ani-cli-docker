FROM cremuzzi/mpv
USER root
RUN apk add git curl grep sed openssl ncurses coreutils
WORKDIR /
RUN git clone https://github.com/pystardust/ani-cli.git
RUN cp ani-cli/ani-cli /usr/local/bin
RUN cp -r ani-cli/ani-cli /usr/local/lib


USER mpv

ENTRYPOINT ["ani-cli"]
