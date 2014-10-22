Docker-Fluentd
==============

## Summary

Repository name in Docker Hub: **[williamyeh/fluentd](https://registry.hub.docker.com/u/williamyeh/fluentd/)**

This repository contains Dockerized [Fluentd](http://www.fluentd.org/) (using **td-agent**: the stable distribution of Fluentd), published to the public [Docker Hub](https://registry.hub.docker.com/) via **automated build** mechanism.



## Configuration

This docker image contains the following software stack:

- OS: Debian jessie (built from [debian:jessie](https://registry.hub.docker.com/_/debian/)).

- Fluentd (using **td-agent**: the stable distribution of Fluentd)


### Dependencies

- [debian:jessie](https://registry.hub.docker.com/_/debian/).


### History

- 0.1 - Initial release. 


## Installation

   ```
   $ docker pull williamyeh/fluentd
   ```


## Usage


#### Show usage

```
$ docker run --rm williamyeh/fluentd
```
