# Copyright (C) 2019, 2022, 2023  Dirk Stolle
#
# SPDX-License-Identifier: LGPL-3.0-or-later

FROM debian:12-slim
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y cowsay fortunes fortune-mod
CMD /usr/games/fortune | /usr/games/cowsay
