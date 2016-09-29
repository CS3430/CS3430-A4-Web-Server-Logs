import sys
import re

for line in sys.stdin.readlines():
    match = re.search(r'^(\S*) .* (\d+)$', line)
    if match is not None:
        sys.stdout.write( match.group(1) + ' ' + match.group(2) + '\n')
        sys.stdout.flush()