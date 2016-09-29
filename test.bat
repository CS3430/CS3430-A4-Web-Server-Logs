CLS
@ECHO OFF
SET TEST_FILE=nasa_wlog_data\small_access_log_Jul95_01.txt
::SET TEST_FILE=nasa_wlog_data\access_02jul1995.txt
::SET PY=C:\Users\Shawn\AppData\Local\Programs\Python\Python27\python
SET PY=C:\Users\Shawn\AppData\Local\Programs\Python\Python35-32\python
SET VERSION=py3

ECHO '^^^^^^^^^^^^^^^test fltr_wlog_trbts.py^^^^^^^^^^^^^^^'
type %TEST_FILE%|%VERSION%\fltr_wlog_trbts.py

ECHO '^^^^^^^^^^^^^^^test fltr_wlog_status_codes.py^^^^^^^^^^^^^^^'
type %TEST_FILE%|%VERSION%\fltr_wlog_status_codes.py 200

ECHO '^^^^^^^^^^^^^^^test fltr_wlog_ip_trbts_toops.py^^^^^^^^^^^^^^^'
type  %TEST_FILE%|%VERSION%\fltr_wlog_ip_trbts_toops.py

ECHO '^^^^^^^^^^^^^^^test top_n.py^^^^^^^^^^^^^^^'
type %TEST_FILE%|%PY% %VERSION%\fltr_wlog_status_codes.py 200|%PY% %VERSION%\top_n.py 5

ECHO '^^^^^^^^^^^^^^^test dsc_sort_ip_trbts_toops.py^^^^^^^^^^^^^^^'
type %TEST_FILE%|%PY% %VERSION%\fltr_wlog_ip_trbts_toops.py|%PY% %VERSION%\dsc_sort_ip_trbts_toops.py

ECHO '^^^^^^^^^^^^^^^test stdin_sum.py^^^^^^^^^^^^^^^'
type  %TEST_FILE%|%PY% %VERSION%\fltr_wlog_trbts.py|%PY% %VERSION%\stdin_sum.py

ECHO '^^^^^What are the top 5 IPs that transferred the largest numbers of bytes on a given date?^^^^^'
type %TEST_FILE%|%PY% %VERSION%\fltr_wlog_ip_trbts_toops.py|%PY% %VERSION%\dsc_sort_ip_trbts_toops.py|%PY% %VERSION%\top_n.py 5

ECHO '^^^^^How many requests on a given date had the status code of 200, i.e., were fielded by the server correctly?^^^^^'
type %TEST_FILE%|%PY% %VERSION%\fltr_wlog_status_codes.py 200|%PY% %VERSION%\count_lines.py
