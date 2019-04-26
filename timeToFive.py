#!/usr/bin/env python3
import datetime

now = datetime.datetime.today()
five = datetime.datetime.today().replace(hour=17, minute=0, second = 0)

diff = five - now
diffSec = diff.seconds
td_str = "%d:%02d:%02d" % (diff.seconds/3600, diff.seconds%3600/60, diff.seconds%60)
print(td_str)
