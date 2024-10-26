# Node.js images

This directory contains several Dockerfiles to build images for various Node.js
versions. Since older versions like Node.js 8 are not available for newer Debian
versions, older Node.js versions use older Debian base images. To avoid the
hassle of selecting the proper Dockerfile some build scripts are provided, too.
For example, to build an image with Node.js 12, run the `build_node_12.sh`
script. For other versions (LTS versions only) use the other scripts with the
appropriate version.
