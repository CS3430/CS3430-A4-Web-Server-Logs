#!/usr/bin/python
import sys

for tup in sorted([line.split(' ') for line in sys.stdin.readlines()], key=lambda x: int(x[1]), reverse=True):
    sys.stdout.write(str(tup[0]) + '\n')
    sys.stdout.flush()
