# Copyright (C) 2023, 2025, 2026  Dirk Stolle
#
# SPDX-License-Identifier: LGPL-3.0-or-later

FROM debian:13-slim
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y ffmpeg file quickjs python3 wget && \
    ln -s /usr/bin/python3 /usr/local/bin/python
RUN wget https://github.com/yt-dlp/yt-dlp/releases/download/2026.07.04/yt-dlp_linux -O /usr/local/bin/yt-dlp && \
    chmod +x /usr/local/bin/yt-dlp
RUN useradd --create-home dl
COPY dl.sh /usr/local/bin/dl.sh
USER dl
WORKDIR /home/dl
CMD yt-dlp --help
