sqoop import --connect "jdbc:mysql://localhost/userdb" --username root --password cloudera --table movie --m 1 --where "year >= 2012 and year <=2013 and type = 'animation'" --target-dir /anime
