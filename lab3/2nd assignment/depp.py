from pyspark import SparkContext, SparkConf

if __name__=='__main__':
	conf = SparkConf().setAppName("lab3ex1").setMaster("local")
	sc = SparkContext(conf=conf)

	lines = sc.textFile("/lab3_2/has_played_in/part-m-00000")
	filtered=lines.filter(lambda x: x.find("Johnny,Depp")!=-1);
	print '\n\n'
	print filtered.count()
	print '\n\n'	
