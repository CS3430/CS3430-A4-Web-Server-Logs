import sys
import re

code = sys.argv[1]

for line in sys.stdin.readlines():
    match = re.search(r'.* (\d+) \d+$', line)
    foundCode = match.group(1)
    if foundCode == code:
        sys.stdout.write( line + '\n')