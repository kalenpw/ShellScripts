#!/bin/bash

artist="$(cmus-remote -Q | sed -n -e 's/^.*tag artist //p')"
song="$(cmus-remote -Q | sed -n -e 's/^.*tag title //p')"

cmusOut=$(echo $artist - $song | cut -c 1-50)

echo "$cmusOut"

