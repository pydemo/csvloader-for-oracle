::Load CSV_ShardedFileSkip2 data to Oracle
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::-w[--copy_vector] is "Data copy direction."
::-o[--pool_size] is "Pool size."
::-r[--num_of_shards] is "Number of shards."
::-t[--field_term] is "Field terminator."
::-i[--input_file] is "Input CSV file."
::-k[--skip_rows] is "Header size. Number of rows to skip in input file."
::-y[--shard_size_kb] is "Shard size in KBytes to estimate number of lines in input CSV file."
::-g[--to_db] is "To Oracle database."
::-a[--to_table] is "To Oracle table."
::-e[--nls_date_format] is "nls_date_format for target."
::-m[--nls_timestamp_format] is "nls_time_format for target."
::-Z[--target_client_home] is "Path to Oracle client home bin dir."
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo y|csvloader64.exe ^
-w csv2ora ^
-o 3 ^
-r 3 ^
-t "|" ^
-i c:\Python27\csvloader_1237\test\v101\data\oracle_shard_0.data ^
-k 2 ^
-y 10 ^
-g SCOTT/tiger2@orcl ^
-a SCOTT.Persons_pipe_datetime_1 ^
-e "YYYY-MM-DD HH24.MI.SS" ^
-m "YYYY-MM-DD HH24.MI.SS.FF2" ^
-Z "C:\app\alex_buz\product\11.2.0\dbhome_2\BIN"