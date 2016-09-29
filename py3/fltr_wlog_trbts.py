import sys
import re

for line in sys.stdin.readlines():
    match = re.search(r'(\d+)$', line)
    if match is not None:
        sys.stdout.write( str(match.group()) + '\n')
        sys.stdout.flush()