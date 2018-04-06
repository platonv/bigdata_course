from pyspark import SparkContext, SparkConf

if __name__=='__main__':
	conf = SparkConf().setAppName("lab3ex1").setMaster("local")
	sc = SparkContext(conf=conf)

	lines = sc.textFile("/assignment1/part-m-00000")
	
	lcount = lines.map(lambda x: (x,1)).reduceByKey(lambda x,y: x+y)
	res=lcount.take(100)
	print '\n\n'
	for key, val in res:
		print key,'-->',val
	print '\n\n'
