#!/bin/bash

socat -t 1 TCP4-LISTEN:5010,fork,tcpwrap=script EXEC:/hf19/challenges/priv-1/docker.sh,pty,stderr
