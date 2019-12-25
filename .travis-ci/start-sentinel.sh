#!/bin/sh
redis-server --port 6379 --daemonize yes
redis-server --port 6380 --slaveof 127.0.0.1 6379 --daemonize yes
redis-server --port 6381 --slaveof 127.0.0.1 6379 --daemonize yes
redis-server .travis-ci/etc/sentinel.26379.conf --daemonize yes --sentinel
redis-server .travis-ci/etc/sentinel.26380.conf --daemonize yes --sentinel
redis-server .travis-ci/etc/sentinel.26381.conf --daemonize yes --sentinel