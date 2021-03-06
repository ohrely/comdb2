CREATE TABLE t1(i INT) $$
CREATE TABLE t1(i INT) $$
CREATE TABLE T1(i INT) $$
CREATE TABLE 't1'(i INT) $$
CREATE TABLE "t1"(i INT) $$
CREATE TABLE `t1`(i INT) $$
CREATE TABLE t2(i INT, i INT) $$
CREATE TABLE t3('i' INT, `j` INT, "k" INT) $$
CREATE TABLE t4(i INT NULL) $$
CREATE TABLE t5(i INT NULL, j INT NULL) $$
CREATE TABLE t6(i INT NOT NULL) $$
CREATE TABLE t7(i INT NOT NULL, j INT NOT NULL) $$
CREATE TABLE t8(i INT DEFAULT 1) $$
CREATE TABLE t9(i INT NOT NULL DEFAULT 0) $$
CREATE TABLE t10(i INT NULL DEFAULT 0) $$

SELECT * FROM comdb2_tables WHERE tablename NOT LIKE 'sqlite_stat%';
SELECT * FROM comdb2_columns WHERE tablename NOT LIKE 'sqlite_stat%';
SELECT * FROM comdb2_keys WHERE tablename NOT LIKE 'sqlite_stat%';
SELECT * FROM comdb2_constraints WHERE tablename NOT LIKE 'sqlite_stat%';
SELECT * FROM sqlite_master WHERE name NOT LIKE 'sqlite_stat%';
DROP TABLE t1;
DROP TABLE t2;
DROP TABLE t3;
DROP TABLE t4;
DROP TABLE t5;
DROP TABLE t6;
DROP TABLE t7;
DROP TABLE t8;
DROP TABLE t9;
DROP TABLE t10;

CREATE TABLE t1(i INT PRIMARY KEY) $$
CREATE TABLE t2(i INT PRIMARY KEY, j INT) $$
CREATE TABLE t3(i INT PRIMARY KEY, j INT PRIMARY KEY) $$
CREATE TABLE t4(i INT, i INT) $$
CREATE TABLE t5(i INT UNIQUE) $$
CREATE TABLE t6(i INT PRIMARY KEY, j INT UNIQUE) $$
CREATE TABLE t7(i INTt) $$
CREATE TABLE t8(INT i) $$
CREATE TABLE t9(i INT , j INT, PRIMARY KEY(i, j)) $$
CREATE TABLE t10(i INT, j INT, UNIQUE(i, j)) $$

SELECT * FROM comdb2_tables WHERE tablename NOT LIKE 'sqlite_stat%';
SELECT * FROM comdb2_columns WHERE tablename NOT LIKE 'sqlite_stat%';
SELECT * FROM comdb2_keys WHERE tablename NOT LIKE 'sqlite_stat%';
SELECT * FROM comdb2_constraints WHERE tablename NOT LIKE 'sqlite_stat%';
SELECT * FROM sqlite_master WHERE name NOT LIKE 'sqlite_stat%';
DROP TABLE t1;
DROP TABLE t2;
DROP TABLE t3;
DROP TABLE t4;
DROP TABLE t5;
DROP TABLE t6;
DROP TABLE t7;
DROP TABLE t8;
DROP TABLE t9;
DROP TABLE t10;

CREATE TABLE t1(i INT, j INT, UNIQUE(i, j), UNIQUE(i, j)) $$
CREATE TABLE t2(i INT, j INT, UNIQUE(i, j), UNIQUE(j, i)) $$
CREATE TABLE IF NOT EXISTS t3(i INT) $$
CREATE TABLE IF NOT EXISTS t3(i INT) $$
CREATE TABLE t4(i INT, j INT, UNIQUE(i DESC)) $$
CREATE TABLE t5(i INT, j INT, UNIQUE(i ASC)) $$
CREATE TABLE t6(i INT, j INT, UNIQUE(i ASC, j DESC)) $$
CREATE TABLE t7(i INT, j INT, UNIQUE(i DESC, j DESC)) $$
CREATE TABLE t8(i INT, j INT, UNIQUE(i DESC, j), UNIQUE(i, j), UNIQUE(i, j DESC)) $$

SELECT * FROM comdb2_tables WHERE tablename NOT LIKE 'sqlite_stat%';
SELECT * FROM comdb2_columns WHERE tablename NOT LIKE 'sqlite_stat%';
SELECT * FROM comdb2_keys WHERE tablename NOT LIKE 'sqlite_stat%';
SELECT * FROM comdb2_constraints WHERE tablename NOT LIKE 'sqlite_stat%';
SELECT * FROM sqlite_master WHERE name NOT LIKE 'sqlite_stat%';
DROP TABLE t1;
DROP TABLE t2;
DROP TABLE t3;
DROP TABLE t4;
DROP TABLE t5;
DROP TABLE t6;
DROP TABLE t7;
DROP TABLE t8;

CREATE TABLE t1(i INT PRIMARY KEY) $$
CREATE TABLE t2(i INT PRIMARY KEY, FOREIGN KEY (i) REFERENCES t1(i)) $$
CREATE TABLE t3(i INT, FOREIGN KEY (i) REFERENCES t1(i)) $$
CREATE TABLE t4(i INT) $$
CREATE TABLE t5(i INT PRIMARY KEY, FOREIGN KEY (i) REFERENCES t4(i)) $$
CREATE TABLE t6(i INT PRIMARY KEY REFERENCES t1(i)) $$
CREATE TABLE t7(i INT, j INT, PRIMARY KEY(i, j)) $$
CREATE TABLE t8(i INT, j INT, PRIMARY KEY(i, j), FOREIGN KEY (i, j) REFERENCES t7(i, j)) $$
CREATE TABLE t9(i INT, j INT, PRIMARY KEY(i), FOREIGN KEY (i, j) REFERENCES t7(i, j)) $$

SELECT * FROM comdb2_columns WHERE tablename NOT LIKE 'sqlite_stat%';
SELECT * FROM comdb2_keys WHERE tablename NOT LIKE 'sqlite_stat%';
SELECT * FROM comdb2_constraints WHERE tablename NOT LIKE 'sqlite_stat%';
SELECT * FROM sqlite_master WHERE name NOT LIKE 'sqlite_stat%';
DROP TABLE t2;
DROP TABLE t3;
DROP TABLE t4;
DROP TABLE t5;
DROP TABLE t6;
DROP TABLE t8;
DROP TABLE t9;
DROP TABLE t1;
DROP TABLE t7;

# Table options
CREATE TABLE t1(i INT) OPTIONS REC ZLIB, BLOBFIELD ZLIB $$
CREATE TABLE t2(i INT) OPTIONS REC ZLIB, REBUILD $$

SELECT * FROM comdb2_tables WHERE tablename NOT LIKE 'sqlite_stat%';
SELECT * FROM comdb2_columns WHERE tablename NOT LIKE 'sqlite_stat%';
SELECT * FROM comdb2_keys WHERE tablename NOT LIKE 'sqlite_stat%';
SELECT * FROM comdb2_constraints WHERE tablename NOT LIKE 'sqlite_stat%';
SELECT * FROM sqlite_master WHERE name NOT LIKE 'sqlite_stat%';
DROP TABLE t1;
DROP TABLE t2;

# Types
CREATE TABLE t1(v VUTF8(100)) $$
CREATE TABLE t2('d' DATETIME) $$
CREATE TABLE t3("t" TEXT(100)) $$
CREATE TABLE t4(`t` U_SHORT) $$
CREATE TABLE t5(c CHAR(100)) $$
CREATE TABLE t6(a INT(100)) $$
CREATE TABLE t7(v VARCHAR(    100)) $$
CREATE TABLE t8(v VARCHAR(    100  )) $$
CREATE TABLE t9(d DECIMAL64) $$
CREATE TABLE t10(f FLOAT, d DOUBLE) $$

SELECT * FROM comdb2_columns WHERE tablename NOT LIKE 'sqlite_stat%';
SELECT * FROM comdb2_keys WHERE tablename NOT LIKE 'sqlite_stat%';
SELECT * FROM comdb2_constraints WHERE tablename NOT LIKE 'sqlite_stat%';
SELECT * FROM sqlite_master WHERE name NOT LIKE 'sqlite_stat%';
DROP TABLE t1;
DROP TABLE t2;
DROP TABLE t3;
DROP TABLE t4;
DROP TABLE t5;
DROP TABLE t6;
DROP TABLE t7;
DROP TABLE t8;
DROP TABLE t9;
DROP TABLE t10;

CREATE TABLE main.t1(i INT) $$
CREATE TABLE remotedb.t1(i INT) $$
DROP TABLE t1;
