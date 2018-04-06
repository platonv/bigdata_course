sqoop import -connect "jdbc:mysql://quickstart.cloudera:3306/retail_db" --username=retail_dba --password=cloudera --table orders --columns order_status --target-dir /assignment1 --verbose
