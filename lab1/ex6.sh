# In a file “textFile.txt” print all .txt files that begin with “file” using find.
hadoop fs -find src -name 'file*.txt' > textFile.txt
