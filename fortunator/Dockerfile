FROM debian:9-slim
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y cowsay fortunes fortune-mod
CMD /usr/games/fortune | /usr/games/cowsay
