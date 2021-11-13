$ sudo apt install curl
$ sudo apt-get install unzip
$ curl -o https://www.mysqltutorial.org/wp-content/uploads/2018/03/mysqlsampledatabase.zip
$ unzip mysqlsampledatabase.zip
$ sudo mysql
$ flush privileges;
$ ALTER USER 'root'@'localhost' IDENTIFIED BY 'testmariadb';
$ create database classicmodels;
$ show databases;
$ exit
$ mysql -u root -p classicmodels < mysqlsampledatabase.sql
$ mysql -u root -p
$ show databases;
$ use classicmodels;
$ show tables;

