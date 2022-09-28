# Copyright (C) 2019  Dirk Stolle
#
# SPDX-License-Identifier: LGPL-3.0-or-later

FROM httpd:2.4
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y cowsay fortunes fortune-mod
EXPOSE 80
COPY start.sh /tmp/start.sh
RUN chmod +x /tmp/start.sh
CMD /tmp/start.sh
