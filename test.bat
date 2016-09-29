CLS
@ECHO OFF
SET TEST_FILE=nasa_wlog_data\small_access_log_Jul95_01.txt
SET PY=C:\Users\Shawn\AppData\Local\Programs\Python\Python27\python

::ECHO '^^^^^^^^^^^^^^^test fltr_wlog_trbts.py^^^^^^^^^^^^^^^'
::type %TEST_FILE%|py2\fltr_wlog_trbts.py

::ECHO '^^^^^^^^^^^^^^^test fltr_wlog_status_codes.py^^^^^^^^^^^^^^^'
::type %TEST_FILE%|py2\fltr_wlog_status_codes.py 200

::ECHO '^^^^^^^^^^^^^^^test fltr_wlog_ip_trbts_toops.py^^^^^^^^^^^^^^^'
::type  %TEST_FILE%|py2\fltr_wlog_ip_trbts_toops.py

ECHO '^^^^^^^^^^^^^^^test count_lines.py^^^^^^^^^^^^^^^'
type %TEST_FILE%|%PY% py2\fltr_wlog_status_codes.py 200|%PY% py2\count_lines.py

::ECHO '^^^^^^^^^^^^^^^test.py^^^^^^^^^^^^^^^'
::%PY% py2\test.py

