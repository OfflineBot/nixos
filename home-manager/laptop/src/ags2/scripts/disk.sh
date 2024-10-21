#!/bin/sh

df -h / | grep -v 'Filesystem' | awk '{ print $5 }'

