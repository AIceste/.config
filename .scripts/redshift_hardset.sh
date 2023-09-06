#!/bin/bash
redshift -x && redshift -O $1:$1 -b $2:$2
