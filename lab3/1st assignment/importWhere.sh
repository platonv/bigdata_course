 sqoop import --connect="jdbc:mysql://quickstart.cloudera:3306/retail_db" --username=retail_dba --password=cloudera --table orders --where "order_status= 'CLOSED'" --target-dir /wherequery
