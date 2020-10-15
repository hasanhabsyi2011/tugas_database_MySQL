CREATE DATABASE klinik;


USE klinik;

CREATE TABLE tbl_data_klinik(
id_klinik INT PRIMARY KEY AUTO_INCREMENT,
nama_klinik VARCHAR(50),
logo_klinik VARCHAR(100),
alamat_klinik VARCHAR(150),
no_telp VARCHAR(20),
link_web VARCHAR(100)
);

SHOW TABLES;
SELECT*FROM tbl_data_klinik;


CREATE TABLE tbl_dokter(
id_dokter VARCHAR(20) PRIMARY KEY,
nik BIGINT (20),
id_spesialis VARCHAR(15),
nama_dokter VARCHAR(100),
jenis_kelamin ENUM('laki-laki','perempuan'),
alamat VARCHAR(150),
no_hp VARCHAR(20),
STATUS INT(2)
);

SHOW TABLES;
SELECT*FROM tbl_dokter;


CREATE TABLE tbl_spesialis(
id_spesialis VARCHAR(15) PRIMARY KEY,
nama_spesialis VARCHAR(100),
keterangan VARCHAR(150),
STATUS INT(2)
);

SHOW TABLES;
SELECT*FROM tbl_spesialis;



CREATE TABLE tbl_karyawan(
id_karyawan VARCHAR(15) PRIMARY KEY,
id_jabatan VARCHAR(15),
nik BIGINT (20),
nama_karyawan VARCHAR(100),
alamat VARCHAR(150),
no_hp VARCHAR(20),
email VARCHAR(100) UNIQUE,
STATUS INT(2)
);

SHOW TABLES;
SELECT*FROM tbl_karyawan;



CREATE TABLE tbl_user(
id_user INT PRIMARY KEY AUTO_INCREMENT,
id_karyawan VARCHAR(15),
user_name VARCHAR(20),
PASSWORD VARCHAR(100),
id_level INT(4),
STATUS INT(2)
);

SHOW TABLES;
SELECT*FROM tbl_user;



CREATE TABLE tbl_hak_akses(
id_hak_akses INT PRIMARY KEY AUTO_INCREMENT,
LEVEL VARCHAR(50),
hak_akses VARCHAR(50),
STATUS INT(2)
);

SHOW TABLES;
SELECT*FROM tbl_hak_akses;



CREATE TABLE tbl_periksa(
id_periksa INT PRIMARY KEY AUTO_INCREMENT,
nama_periksa VARCHAR(50),
keterangan VARCHAR(150),
STATUS INT(2)
);

SHOW TABLES;
SELECT*FROM tbl_periksa;



CREATE TABLE tbl_penyakit(
id_penyakit VARCHAR(20) PRIMARY KEY,
nama_penyakit VARCHAR(50),
keterangan VARCHAR(150),
STATUS INT(2)
);

SHOW TABLES;
SELECT*FROM tbl_penyakit;


CREATE TABLE tbl_poli(
id_poli INT PRIMARY KEY AUTO_INCREMENT,
nama_poli VARCHAR(50),
keterangan VARCHAR(100),
STATUS INT(2)
);

SHOW TABLES;
SELECT*FROM tbl_poli;

CREATE TABLE tbl_obat(
id_obat INT PRIMARY KEY AUTO_INCREMENT,
id_rak INT(4),
id_suplier INT(4),
nama_obat VARCHAR(50),
keterangan VARCHAR(100),
stok INT(4),
STATUS INT(2)
);

SHOW TABLES;
SELECT*FROM tbl_obat;

CREATE TABLE tbl_suplier(
id_suplier INT PRIMARY KEY AUTO_INCREMENT,
nama_suplier VARCHAR(50),
no_telp VARCHAR(20),
alamat VARCHAR(200),
no_rek INT(30),
id_bank INT(4),
keterangan VARCHAR(100),
STATUS INT(2)
);

SHOW TABLES;
SELECT*FROM tbl_suplier;


CREATE TABLE tbl_pasien(
id_pasien INT PRIMARY KEY AUTO_INCREMENT,
nik INT(20),
nama_pasien VARCHAR(100),
tgl_lahir DATE,
jenis_kelamin ENUM('laki-laki','perempuan'),
alamat VARCHAR(200),
no_hp VARCHAR(20),
email VARCHAR(50),
STATUS INT(2)
);


SHOW TABLES;
SELECT*FROM tbl_pasien;


CREATE TABLE tbl_bank(
id_bank INT PRIMARY KEY AUTO_INCREMENT,
nama_bank VARCHAR(50),
STATUS INT(2)
);


SHOW TABLES;
SELECT*FROM tbl_bank;



CREATE TABLE tbl_rak(
id_rak INT PRIMARY KEY AUTO_INCREMENT,
nama_rak VARCHAR(100),
id_tempat_obat INT(4),
keterangan VARCHAR(100),
STATUS INT(2)
);


SHOW TABLES;
SELECT*FROM tbl_rak;



CREATE TABLE tbl_tempat_obat(
id_tempat_obat INT PRIMARY KEY AUTO_INCREMENT,
nama_tempat VARCHAR(50),
lokasi VARCHAR(100),
keterangan VARCHAR(150),
STATUS INT(2)
);


SHOW TABLES;
SELECT*FROM tbl_tempat_obat;



CREATE TABLE tbl_harga(
id_harga INT PRIMARY KEY,
harga INT,
satuan VARCHAR(50),
keterangan VARCHAR(100),
STATUS INT(2)
);


SHOW TABLES;
SELECT*FROM tbl_harga;



CREATE TABLE tbl_pos(
id_harga INT PRIMARY KEY AUTO_INCREMENT,
nama_pos VARCHAR(40),
STATUS INT(2)
);


SHOW TABLES;
SELECT*FROM tbl_pos;



CREATE TABLE tbl_satuan(
id_satuan INT PRIMARY KEY AUTO_INCREMENT,
nama_satuan VARCHAR(25),
keterangan VARCHAR(50),
STATUS INT(2)
);


SHOW TABLES;
SELECT*FROM tbl_satuan;


CREATE TABLE tbl_jabatan(
id_jabatan INT PRIMARY KEY AUTO_INCREMENT,
nama_jabatan VARCHAR(30),
STATUS INT(2)
);


SHOW TABLES;
SELECT*FROM tbl_jabatan;



CREATE TABLE tbl_status(
id_status INT(2) PRIMARY KEY,
nama_status VARCHAR(30),
keterangan VARCHAR(100)
);


SHOW TABLES;
SELECT*FROM tbl_status;
