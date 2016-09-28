import sys
import re

for line in sys.stdin.readlines():
    match = re.search(r'^(\S*) .* (\d+)$', line)
    print match.group(1) + ' ' + match.group(2);