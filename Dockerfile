FROM golang:1.12.6-stretch
RUN groupadd golang && useradd -g golang gouser
RUN chown -R gouser:golang /home
WORKDIR /home
COPY ["build.sh", "/home/build.sh"]
USER gouser
ENTRYPOINT ["./build.sh"]
