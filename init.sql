CREATE DATABASE IF NOT EXISTS rms;
USE rms;

CREATE TABLE IF NOT EXISTS regis (
    rname VARCHAR(100),
    ruser VARCHAR(100),
    ridnumber VARCHAR(100),
    rpass VARCHAR(255),
    rrepass VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS food (
    fid INT AUTO_INCREMENT PRIMARY KEY,
    fname VARCHAR(100),
    ftype VARCHAR(50),
    fprice DOUBLE
);

CREATE TABLE IF NOT EXISTS tableee (
    tname VARCHAR(100),
    tphone VARCHAR(50),
    tid INT,
    tdate DATE,
    ttime VARCHAR(50),
    ttable INT,
    tavai VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS roles (
    rid INT AUTO_INCREMENT PRIMARY KEY,
    rname VARCHAR(100),
    rposition VARCHAR(50),
    rphone VARCHAR(50),
    rsection VARCHAR(50),
    raddress VARCHAR(200),
    rage INT,
    rnic VARCHAR(50),
    rdate DATE
);

CREATE TABLE IF NOT EXISTS sale (
    bill_no INT,
    item_name VARCHAR(100),
    quantity INT,
    item_price DOUBLE,
    amount DOUBLE
);

CREATE TABLE IF NOT EXISTS allsale (
    bill_nu INT,
    sname VARCHAR(100),
    stype VARCHAR(50),
    sprice DOUBLE,
    squantity INT,
    sendprice DOUBLE,
    stotalamou DOUBLE,
    date DATE
);

CREATE TABLE IF NOT EXISTS cash (
    bill_no INT,
    total_amount DOUBLE,
    cash DOUBLE,
    balance DOUBLE
);