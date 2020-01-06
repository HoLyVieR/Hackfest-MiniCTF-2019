#!/bin/bash

socat -t 1 TCP4-LISTEN:5011,fork,tcpwrap=script EXEC:/hf19/challenges/priv-2/docker.sh,pty,stderr
