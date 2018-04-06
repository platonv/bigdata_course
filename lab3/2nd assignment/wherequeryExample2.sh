sqoop import --connect "jdbc:mysql://localhost/userdb" --username root --password cloudera --table movie --m 1 --where "year = 2015" --target-dir /wherequery2
