sqoop import --connect "jdbc:mysql://localhost/userdb" --username root --password cloudera --table has_played_in --m 1 --target-dir /lab3_2/has_played_in
