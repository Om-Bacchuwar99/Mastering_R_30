### CMD CODE



C:\\Users\\ASUS>**mysql -u root -p**

Enter password: \*\*\*\*\*\*\*\*\*\*\*\*\*  ***<----------------------------------here enter root password of MySQL***

Welcome to the MySQL monitor.  Commands end with ; or \\g.

Your MySQL connection id is 20

Server version: 9.6.0 MySQL Community Server - GPL



Copyright (c) 2000, 2026, Oracle and/or its affiliates.



Oracle is a registered trademark of Oracle Corporation and/or its

affiliates. Other names may be trademarks of their respective

owners.



Type 'help;' or '\\h' for help. Type '\\c' to clear the current input statement.



mysql> **GRANT ALL PRIVILEGES ON om\_db1.\* TO 'Om\_Bacchuwar99'@'localhost';**

Query OK, 0 rows affected (0.052 sec)



mysql> **FLUSH PRIVILEGES;**

Query OK, 0 rows affected, 1 warning (0.035 sec)



mysql> **SHOW GRANTS FOR 'Om\_Bacchuwar99'@'localhost';**

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

| Grants for Om\_Bacchuwar99@localhost                                                                                                                                                                                                                                                                                                                                                        |

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

| GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, RELOAD, SHUTDOWN, PROCESS, FILE, REFERENCES, INDEX, ALTER, SHOW DATABASES, SUPER, CREATE TEMPORARY TABLES, LOCK TABLES, EXECUTE, REPLICATION SLAVE, REPLICATION CLIENT, CREATE VIEW, SHOW VIEW, CREATE ROUTINE, ALTER ROUTINE, CREATE USER, EVENT, TRIGGER, CREATE TABLESPACE ON \*.\* TO `Om\_Bacchuwar99`@`localhost` WITH GRANT OPTION |

| GRANT ALL PRIVILEGES ON `om\_db1`.\* TO `Om\_Bacchuwar99`@`localhost`                                                                                                                                                                                                                                                                                                                         |

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

2 rows in set (0.004 sec)



mysql> **exit;**

Bye

