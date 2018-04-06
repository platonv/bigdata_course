sqoop import-all-tables -m 12 --connect "jdbc:mysql://quickstart.cloudera:3306/retail_db" --username=retail_dba --password=cloudera --as-avrodatafile --warehouse-dir /lab3
