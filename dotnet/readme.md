# .NET SDK

The Dockerfile in this directory build an image based on Debian 13 and installs
the .NET SDK 8 from the official Microsoft package sources. Furthermore, a
non-root user named `dotnet-user` is created which will be used for any further
actions inside the container.
