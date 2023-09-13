# Copyright (C) 2023  Dirk Stolle
#
# SPDX-License-Identifier: LGPL-3.0-or-later

FROM debian:12-slim
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y ffmpeg file python3 wget && \
    ln -s /usr/bin/python3 /usr/local/bin/python
RUN wget https://github.com/ytdl-org/youtube-dl/releases/download/2021.12.17/youtube-dl -O /usr/local/bin/youtube-dl && \
    chmod +x /usr/local/bin/youtube-dl
RUN useradd --create-home dl
COPY dl.sh /usr/local/bin/dl.sh
USER dl
WORKDIR /home/dl
CMD youtube-dl --help
