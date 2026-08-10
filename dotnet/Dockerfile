# Copyright (C) 2019, 2021, 2022, 2024, 2026  Dirk Stolle
#
# SPDX-License-Identifier: LGPL-3.0-or-later

FROM debian:13-slim
# install basics
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y apt-transport-https wget gpg ca-certificates
# get Microsoft certificate and APT list for .NET
RUN wget https://packages.microsoft.com/config/debian/13/packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb && \
    unlink packages-microsoft-prod.deb
RUN apt-get update
# opt out of .NET telemetry
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
# install .NET SDK
RUN apt-get install -y dotnet-sdk-8.0
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
