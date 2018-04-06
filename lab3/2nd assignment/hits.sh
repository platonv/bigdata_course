sqoop import --connect "jdbc:mysql://localhost/userdb" --username root --password cloudera --table movie --m 1 --where "budget<=1500000 and nb_spec>1000000" --target-dir /hits
