#!/bin/bash

docker run --rm -it "hf19-priv-1:latest" timeout -k 1 -s 9 600 su - challenge -c bash

