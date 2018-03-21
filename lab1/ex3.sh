# Copy the file “output.txt” between the local file system and hdfs using get.
hadoop fs -put output.txt
hadoop fs -get output.txt
