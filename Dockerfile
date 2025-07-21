FROM ubuntu:24.04 AS base
WORKDIR /app
RUN apt update && apt install -y dotnet-runtime-8.0 wget
RUN wget --trust-server-names https://www.dynu.com/support/downloadfile/69
RUN apt install ./dynu-ip-update-client_1.0.2-1_amd64.deb
ENTRYPOINT ["/bin/sh", "-c"]
CMD ["/usr/local/bin/Dynu.Core.Service"]
