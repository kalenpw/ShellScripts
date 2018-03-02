#!/bin/bash

#if ps ax | grep -v grep | grep cmus > /dev/null
if ps ax | grep -v cmus > /dev/null
then
    echo "CMUS is running"
else
    echo "CMUS is not running"
fi
