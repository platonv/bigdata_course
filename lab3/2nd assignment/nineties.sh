sqoop import --connect "jdbc:mysql://localhost/userdb" --username root --password cloudera --table movie --m 1 --where "year >= 1990 and year <2000" --target-dir /ninety
