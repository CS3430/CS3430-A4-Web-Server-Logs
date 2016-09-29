#!/usr/bin/python
import sys

n = int(sys.argv[1])

for i in xrange(n):
    sys.stdout.write( sys.stdin.readline() + '\n' )
    sys.stdout.flush()