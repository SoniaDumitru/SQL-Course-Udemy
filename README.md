<img width="454" alt="Screen Shot 2020-06-15 at 10 20 33 AM" src="https://github.com/SoniaDumitru/The-Complete-SQL---Course-Udemy-/blob/master/Screen%2BShot%2B2016-04-17%2Bat%2B12.22.49%2BPM.png">


Can I automatically create a table in PostgreSQL from a csv file with headers?

https://stackoverflow.com/questions/21018256/can-i-automatically-create-a-table-in-postgresql-from-a-csv-file-with-headers 


# Special mySql permissions:
```
$ mysql -u root
$ show databases;
$ use whiplash_tests;
$ SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
$ use whiplash_development;
$ SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
```
