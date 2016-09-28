import sys
import re

print "Helloooo World!!!"

print str(sys.argv)

with open(sys.argv[1], 'r') as infile:
    for line in infile:
        match = re.search(r'\d+$', line)
        print match.group();
