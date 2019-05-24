#!/bin/bash
grep -rni --exclude-dir=git --exclude-dir=node_modules $1 ./
