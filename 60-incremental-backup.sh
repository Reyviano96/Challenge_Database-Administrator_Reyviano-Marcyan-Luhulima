$ sudo apt install mariadb-backup
$ mysql -u root -p
$ CREATE USER 'mariabackup'@'localhost' IDENTIFIED BY 'mypassword';
$ GRANT RELOAD, PROCESS, LOCK TABLES, REPLICATION CLIENT ON *.* TO 'mariabackup'@'localhost';
$ exit
$ sudo mariabackup --backup \
   --target-dir=/var/mariadb/backup/ \
   --user=mariabackup --password=mypassword
$ sudo mariabackup --backup \
   --target-dir=/var/mariadb/inc1/ \
   --incremental-basedir=/var/mariadb/backup/ \
   --user=mariabackup --password=mypassword   