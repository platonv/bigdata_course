from pyspark import SparkContext, SparkConf

if __name__ == '__main__':
	conf = SparkConf().setAppName("lab2ex1").setMaster("local")
	sc = SparkContext(conf=conf)

	lines = sc.textFile("lab2/ex1.txt")

	#----ex1: add up the sizes of all lines in ex1.txt
	count = lines.map(lambda x: len(x)).reduce(lambda x,y: x+y)
	print '\n\n\nTotal length of lines is {0}\n\n\n'.format(count)

	#----ex2: count line occurences
	lcount = lines.map(lambda x: (x,1)).reduceByKey(lambda x,y: x+y)
	res = lcount.take(100)	
	print '\n\n'
	for key, val in res:
		print key, '-->', val
	print '\n\n'

	#----ex3: sort by key
	slcount = lcount.sortByKey(True)
	res = slcount.take(100)
	print '\n\n'
	for key, val in res:
		print key, '-->', val
	print '\n\n'