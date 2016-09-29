import sys
import re

for line in sys.stdin.readlines():
    match = re.search(r'^(\S*) .* (\d+)$', line)
    sys.stdout.write( match.group(1) + ' ' + match.group(2) + '\n')