# Create a new directory “src” and populate it with two text files
# “file1.txt” and “file2.txt”. Concatenate “file1” and “file2” into
# the text file “output.txt” (outside of the directory “src”) using getmerge.
# What do you observe, where is “output.txt” created? Display the contents of “output.txt”.

hadoop fs -mkdir src
echo "file1.txt" | hadoop fs -put - src/file1.txt
echo "file2.txt" | hadoop fs -put - src/file2.txt
hadoop fs -getmerge -nl src/file1.txt src/file2.txt output.txt
cat output.txt
