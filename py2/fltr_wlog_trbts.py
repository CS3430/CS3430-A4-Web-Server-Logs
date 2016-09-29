# %PYTHONPATH_2%/python fltr_wlog_trbts.py ..\nasa_wlog_data\small_access_log_Jul95_01.txt

import sys
import re

for line in sys.stdin.readlines():
    match = re.search(r'(\d+)$', line)
    if match is not None:
        sys.stdout.write( str(match.group()) + '\n')
        sys.stdout.flush()