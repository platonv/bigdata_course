# Read the input from stdin and write to the HDFS home directory in “file1.txt” (using put).
cat | hadoop fs -put - file1.txt
