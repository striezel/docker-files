# Rust containers

Dockerfiles in this directory can be used to create Rust-related container
images. Those are mainly intended for personal use.

* `Dockerfile` - builds image with Rust 1.75.0 (current MSRV of
  <https://github.com/striezel/corona>)
* `Dockerfile_ext_php` - build image with current stable Rust version and the
  repository from <https://github.com/davidcole1340/ext-php-rs>
* `Dockerfile_nightly` - builds image with current nightly version of Rust and
  the repository from <https://github.com/striezel/corona>
* `Dockerfile_stable` - builds image with current stable version of Rust and
  the repository from <https://github.com/striezel/corona>

All of those use Debian 13 as base image.
