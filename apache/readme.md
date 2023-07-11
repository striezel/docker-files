# Cowsay via Apache 2 web server

Provides a Docker container that displays a random fortune within a cow via
Apache web server (httpd) on port 80. The fortune changes on every startup.

To use the Dockerfile type

    docker build . -t apache-cow
    docker run --rm -d -p 80:80 apache-cow

Then open your browser and head to <http://localhost:80/>.
