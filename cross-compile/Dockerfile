# Copyright (C) 2026  Dirk Stolle
#
# SPDX-License-Identifier: LGPL-3.0-or-later

FROM debian:13-slim
LABEL maintainer="Dirk Stolle <striezel-dev@web.de>"
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get upgrade -y
# Basic compiler stuff for cross-compiling to Windows (x86_64, UCRT)
RUN apt-get install -y binutils-mingw-w64-ucrt64 g++-mingw-w64-ucrt64 gcc-mingw-w64-ucrt64 mingw-w64-ucrt64-dev
# some development tools
RUN apt-get install -y ca-certificates cmake git pkg-config
# some other useful tools
RUN apt-get install -y bash grep mc nano sed wget
# common dependencies
RUN apt-get install -y libz-mingw-w64-dev

RUN useradd --create-home x-compiler
USER x-compiler
WORKDIR /home/x-compiler

# Set environment variables for C++ and C compilers.
ENV CXX=x86_64-w64-mingw32ucrt-g++
ENV CC=x86_64-w64-mingw32ucrt-gcc

CMD sleep 86400
