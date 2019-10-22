FROM debian:9-slim
# install basics
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y apt-transport-https wget gpg ca-certificates
# get Microsoft certificate
RUN wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.asc.gpg && \
    mv microsoft.asc.gpg /etc/apt/trusted.gpg.d/
# add APT list for .NET core
RUN wget -q https://packages.microsoft.com/config/debian/9/prod.list && \
    mv prod.list /etc/apt/sources.list.d/microsoft-prod.list && \
    chown root:root /etc/apt/trusted.gpg.d/microsoft.asc.gpg && \
    chown root:root /etc/apt/sources.list.d/microsoft-prod.list
RUN apt-get update
# opt out of .NET telemetry
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
# install .NET SDK
RUN apt-get install -y dotnet-sdk-3.0
# install Git and some other helpful tools
RUN apt-get install -y --no-install-recommends git mc nano vim
# create user for .NET usage
RUN useradd --create-home dotnet-user
USER dotnet-user
WORKDIR /home/dotnet-user
RUN git config --add --global user.name "dotnet-user" && \
    git config --add --global user.email 'dotnet-user@example.com' && \
    env && dotnet --info
CMD dotnet --info
