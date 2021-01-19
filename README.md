# ilias-docker

This repository contains Docker configuration aimed at easily running a copy of Ilias 5.4 to demonstrate on a Windows 10 machine.

This uses the Docker Image [ilias:5.4-php7.3-apache](https://hub.docker.com/r/sturai/ilias/tags?page=1&ordering=last_updated&name=5.4-php7.3)

# Windows Prerequisites

- [Docker](https://docs.docker.com) and [Docker Compose](https://docs.docker.com/compose/)
- Git command line tools [Git](https://git-scm.com/download/win)

# Windows Batch Commands

## Ilias Instance

### START Docker Containers

- Windows Batch file to start Containers [bin/start_ilias.cmd](bin/start_ilias.cmd)

If this is the first time you have started Ilias the auto setup needs to run.

Check the Docker Desktop logs for the webserver container. Once you see the message below you can use Ilias:

```
=======================================================

ILIAS installed successfully!

Log in using the following credentials:


User: root

Password: P@ssword

Setup Password: P@ssword

=======================================================
```

### STOP Docker Containers

- Windows Batch file to stop Containers [bin/stop_ilias.cmd](bin/stop_ilias.cmd)

### Access Ilias

Open your web browser to [http://127.0.0.1:8000](http://127.0.0.1:8000) use the following admin credentials:

```
username: root
password: P@ssword
```
