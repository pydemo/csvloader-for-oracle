
			set pagesize 0 feedback off TIMING OFF
			SELECT COLUMN_NAME||':'||DATA_LENGTH||':'||DATA_TYPE
			FROM ALL_TAB_COLUMNS WHERE OWNER=UPPER('SCOTT') AND TABLE_NAME=UPPER('PERSONS_PIPE_DATETIME_1')
			ORDER BY COLUMN_ID;
			exit;
			