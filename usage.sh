#!/bin/bash


TIMESTAMP=`cat /var/log/DOCKER_BUILD_TIME`


cat << EOF

williamyeh/fluentd - Docker image for fluentd.
Image built at: $TIMESTAMP

Env
===

- Exported volumes:

    * [IN,OUT] /data - for path, pos_file, buffer_path, etc.

    * [IN]     /etc/td-agent - for customized conf file and extra plugins.


Usage
=====

## Starting a Fluentd daemon (log forwarder or aggregator)
## with my simple wrapper

  Cmd:  start  [options]
  Args:
    - options: use '--help' to show all options.

  Examples:

    # start Fluentd daemon with default configuration
    $ docker run -d  --name fluentd    \\
        williamyeh/fluentd  start


    # start Fluentd daemon with public accessible TCP & HTTP ports
    $ docker run -d  --name fluentd    \\
        -p 24224:24224  -p 9880:9880   \\
        williamyeh/fluentd  start


    # start Fluentd daemon with a sample config 'httppost-to-stdout.conf'
    $ docker run -d  --name fluentd               \\
        -p 9880:9880                              \\
        williamyeh/fluentd  start                 \\
            --config httppost-to-stdout.conf


    # start Fluentd daemon with a sample config 'httppost-to-file.conf'
    $ docker run -d  --name fluentd               \\
        -p 9880:9880                              \\
        -v /myproject/data:/data                  \\
        williamyeh/fluentd  start                 \\
            --config httppost-to-file.conf


    # check if Fluentd configuration is correct or not
    $ docker run --rm       \\
        williamyeh/fluentd  start  --dry-run


    # start Fluentd daemon with customized "td-agent.conf" from host OS;
    # also load extra plugins in the "plugin" subdirectory:
    $ docker run -d  --name fluentd                  \\
        -v /myproject/conf/fluentd:/etc/td-agent:ro  \\
        williamyeh/fluentd  start


    # start Fluentd daemon with customized conf filename from host OS;
    # also load extra plugins in the "plugin" subdirectory:
    $ docker run -d  --name fluentd                  \\
        -v /myproject/conf/fluentd:/etc/td-agent:ro  \\
        williamyeh/fluentd  start                    \\
            --config myconf.conf


    # start Fluentd daemon with extra inline configuration string
    $ docker run -d  --name fluentd               \\
        williamyeh/fluentd  start                 \\
            --inline-config '<source>\ntype syslog\ntag system\n</source>'


    # list all options available
    $ docker run --rm                             \\
        williamyeh/fluentd  start  --help


EOF
