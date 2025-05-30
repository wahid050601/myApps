-- MySQL dump 10.13  Distrib 9.2.0, for Linux (x86_64)
--
-- Host: localhost    Database: fa_addawah
-- ------------------------------------------------------
-- Server version	9.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `siswa`
--

DROP TABLE IF EXISTS `siswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `siswa` (
  `nama_siswa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `jk_siswa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `kls_siswa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `prod_siswa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `tp_siswa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `tplahir_siswa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `tglahir_siswa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `alamat_siswa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `ibu_siswa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `ayah_siswa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `tlp_siswa` bigint DEFAULT NULL,
  `email_siswa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siswa`
--

LOCK TABLES `siswa` WRITE;
/*!40000 ALTER TABLE `siswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `siswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_admin`
--

DROP TABLE IF EXISTS `tb_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_admin` (
  `id_adm` int NOT NULL AUTO_INCREMENT,
  `user_adm` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pass_adm` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama_adm` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `alamat_adm` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tlp_adm` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email_adm` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sts_akun_adm` int DEFAULT NULL,
  `role_adm` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_adm`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_admin`
--

LOCK TABLES `tb_admin` WRITE;
/*!40000 ALTER TABLE `tb_admin` DISABLE KEYS */;
INSERT INTO `tb_admin` VALUES (6,'wahid','wahid561','Wahid Prayogo','Jakarta Barat','082123287245','wahidprayogo1@gmail.com',1,'admin'),(7,'riyadi','riyadi123','Riyadi Farera','Duri Kosambi, Cengkareng','082122273847','riyadi@gmail.com',1,'tu');
/*!40000 ALTER TABLE `tb_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_jns_pem`
--

DROP TABLE IF EXISTS `tb_jns_pem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_jns_pem` (
  `id_jns` int NOT NULL AUTO_INCREMENT,
  `jns_pem` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kelas_pem` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jns_katg` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jns_val` int NOT NULL,
  `jns_ccl` int NOT NULL,
  `jns_tp` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `smtr` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jns_ket` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_jns`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_jns_pem`
--

LOCK TABLES `tb_jns_pem` WRITE;
/*!40000 ALTER TABLE `tb_jns_pem` DISABLE KEYS */;
INSERT INTO `tb_jns_pem` VALUES (13,'SPP Bulan juli 2025','UMUM','spp',350000,1,'2024/2025','ganjil','TKJ'),(14,'SPP Bulan juli 2025','UMUM','spp',300000,1,'2024/2025','ganjil','AKL'),(15,'SPP Bulan juli 2025','UMUM','spp',300000,1,'2024/2025','ganjil','BDP'),(16,'Ujian Penilaian Tengah Semester Ganjil TP.2024/2025-Kelas X','X','ujian',300000,2,'2024/2025','ganjil','UMUM'),(17,'Ujian Penilaian Tengah Semester Ganjil TP.2024/2025-Kelas XI','XI','ujian',350000,2,'2024/2025','ganjil','UMUM'),(18,'Ujian Penilaian Tengah Semester Ganjil TP.2024/2025-Kelas XII','XII','ujian',350000,2,'2024/2025','ganjil','UMUM'),(19,'Kegiatan Class Meet PTS Ganjil TP.2024/2025','UMUM','kegiatan',50000,1,'2024/2025','ganjil','UMUM'),(20,'SPP Bulan agustus 2025','UMUM','spp',350000,1,'2024/2025','ganjil','TKJ'),(21,'SPP Bulan agustus 2025','UMUM','spp',300000,1,'2024/2025','ganjil','AKL'),(22,'SPP Bulan agustus 2025','UMUM','spp',300000,1,'2024/2025','ganjil','BDP'),(23,'Ujian Penilaian Akhir Semester Ganjil-Kelas X','X','ujian',300000,2,'2024/2025','ganjil','UMUM'),(24,'Kegiatan Berbagi Bersama','UMUM','kegiatan',25000,1,'2024/2025','ganjil','UMUM');
/*!40000 ALTER TABLE `tb_jns_pem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_katg_pem`
--

DROP TABLE IF EXISTS `tb_katg_pem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_katg_pem` (
  `id_katg` int NOT NULL AUTO_INCREMENT,
  `katg_pem` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `katg_ket` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_katg`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_katg_pem`
--

LOCK TABLES `tb_katg_pem` WRITE;
/*!40000 ALTER TABLE `tb_katg_pem` DISABLE KEYS */;
INSERT INTO `tb_katg_pem` VALUES (10,'spp','pembayaran iuran SPP'),(11,'ujian','pembayaran iuran ujian'),(12,'kegiatan','pembayaran iuran kegiatan');
/*!40000 ALTER TABLE `tb_katg_pem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_lap_pengeluaran`
--

DROP TABLE IF EXISTS `tb_lap_pengeluaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_lap_pengeluaran` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_ms_lap` int DEFAULT NULL,
  `kat_lap` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_pengeluaran` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `hrg_satuan` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  `keterangan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl_sub_lap` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_lap_pengeluaran`
--

LOCK TABLES `tb_lap_pengeluaran` WRITE;
/*!40000 ALTER TABLE `tb_lap_pengeluaran` DISABLE KEYS */;
INSERT INTO `tb_lap_pengeluaran` VALUES (3,7,'atk','Foto copy soal ujian kelas X',2000,250,500000,'foto coy soal semua pelajaran','2025-05-07 15:05:19');
/*!40000 ALTER TABLE `tb_lap_pengeluaran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_master_lap_pengeluaran`
--

DROP TABLE IF EXISTS `tb_master_lap_pengeluaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_master_lap_pengeluaran` (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_tgl` timestamp NULL DEFAULT NULL,
  `adj_tgl` timestamp NULL DEFAULT NULL,
  `nama_lap` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `desc_lap` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status_lap` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `create_by` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `adj_by` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_master_lap_pengeluaran`
--

LOCK TABLES `tb_master_lap_pengeluaran` WRITE;
/*!40000 ALTER TABLE `tb_master_lap_pengeluaran` DISABLE KEYS */;
INSERT INTO `tb_master_lap_pengeluaran` VALUES (7,'2025-05-07 15:04:21',NULL,'Keperluan Ujian PTS Ganjil TP. 2024/2025','Rincian laporan untuk keperluan kegiatan PTS ganjil TP.2024/2025','created','admin',NULL);
/*!40000 ALTER TABLE `tb_master_lap_pengeluaran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_menu_access`
--

DROP TABLE IF EXISTS `tb_menu_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_menu_access` (
  `id_acc` int NOT NULL AUTO_INCREMENT,
  `admin_id` int DEFAULT NULL,
  `pembayaran` int DEFAULT NULL,
  `konfig_user` int DEFAULT NULL,
  `dt_siswa_aktif` int DEFAULT NULL,
  `td_siswa_nonaktif` int DEFAULT NULL,
  `rombel_prodi` int DEFAULT NULL,
  `kat_pembayaran` int DEFAULT NULL,
  `catatan_pemasukan` int DEFAULT NULL,
  `catatan_pengeluaran` int DEFAULT NULL,
  `rekap_keuangan` int DEFAULT NULL,
  `rekap_pembayaran` int DEFAULT NULL,
  PRIMARY KEY (`id_acc`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_menu_access`
--

LOCK TABLES `tb_menu_access` WRITE;
/*!40000 ALTER TABLE `tb_menu_access` DISABLE KEYS */;
INSERT INTO `tb_menu_access` VALUES (4,6,1,1,1,1,1,1,1,1,1,1),(5,7,1,0,0,0,0,0,1,1,0,0);
/*!40000 ALTER TABLE `tb_menu_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pem_kegiatan`
--

DROP TABLE IF EXISTS `tb_pem_kegiatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pem_kegiatan` (
  `id_pem_keg` int NOT NULL AUTO_INCREMENT,
  `id_siswa` int NOT NULL,
  `id_keg` int NOT NULL,
  `id_admin` int NOT NULL,
  `ket_pem` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nom_pem` int NOT NULL,
  `status_pem` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tanggal_pem` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_pem_keg`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pem_kegiatan`
--

LOCK TABLES `tb_pem_kegiatan` WRITE;
/*!40000 ALTER TABLE `tb_pem_kegiatan` DISABLE KEYS */;
INSERT INTO `tb_pem_kegiatan` VALUES (1,461,19,6,'ccl-1-l',50000,'lunas','2025-05-07 15:01:36');
/*!40000 ALTER TABLE `tb_pem_kegiatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pem_spp`
--

DROP TABLE IF EXISTS `tb_pem_spp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pem_spp` (
  `id_pem_spp` int NOT NULL AUTO_INCREMENT,
  `id_siswa` int NOT NULL,
  `id_spp` int NOT NULL,
  `id_admin` int NOT NULL,
  `status_spp` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tanggal_pem` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_pem_spp`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pem_spp`
--

LOCK TABLES `tb_pem_spp` WRITE;
/*!40000 ALTER TABLE `tb_pem_spp` DISABLE KEYS */;
INSERT INTO `tb_pem_spp` VALUES (1,363,14,6,'lunas','2025-05-07 14:56:15'),(2,362,14,6,'lunas','2025-05-19 15:40:23'),(3,360,14,6,'lunas','2025-05-19 15:46:45'),(4,361,14,6,'lunas','2025-05-19 15:47:50'),(5,364,14,6,'lunas','2025-05-19 15:49:53'),(6,365,14,6,'lunas','2025-05-19 15:50:31'),(7,531,15,6,'lunas','2025-05-19 15:51:33');
/*!40000 ALTER TABLE `tb_pem_spp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pem_ujian`
--

DROP TABLE IF EXISTS `tb_pem_ujian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pem_ujian` (
  `id_pem_ujian` int NOT NULL AUTO_INCREMENT,
  `id_siswa` int NOT NULL,
  `id_ujian` int NOT NULL,
  `id_admin` int NOT NULL,
  `ket_pem` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nom_pem` int NOT NULL,
  `status_pem` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tanggal_pem` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_pem_ujian`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pem_ujian`
--

LOCK TABLES `tb_pem_ujian` WRITE;
/*!40000 ALTER TABLE `tb_pem_ujian` DISABLE KEYS */;
INSERT INTO `tb_pem_ujian` VALUES (1,493,17,6,'ccl-1',200000,'cicilan-1','2025-05-07 14:58:49'),(2,493,17,6,'ccl-2-l',150000,'lunas','2025-05-07 14:59:44');
/*!40000 ALTER TABLE `tb_pem_ujian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_prodi`
--

DROP TABLE IF EXISTS `tb_prodi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_prodi` (
  `code_prodi` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama_prodi` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kaprodi` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`code_prodi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_prodi`
--

LOCK TABLES `tb_prodi` WRITE;
/*!40000 ALTER TABLE `tb_prodi` DISABLE KEYS */;
INSERT INTO `tb_prodi` VALUES ('AKL','Akuntansi Keuangan dan Lembaga','Drs.Ma\'mun, M.Pd.'),('BDP','Bisnis Daring dan Pemasaran','Yulianti Budiyono, SE., M.Si.'),('TKJ','Teknik Komputer dan Jaringan','Ikbal Maulana, S.Kom.');
/*!40000 ALTER TABLE `tb_prodi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_rombel_siswa`
--

DROP TABLE IF EXISTS `tb_rombel_siswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_rombel_siswa` (
  `id_rbl` int NOT NULL AUTO_INCREMENT,
  `nama_rbl` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kelas_rbl` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prodi_rbl` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tp_rbl` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status_rbl` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_rbl`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_rombel_siswa`
--

LOCK TABLES `tb_rombel_siswa` WRITE;
/*!40000 ALTER TABLE `tb_rombel_siswa` DISABLE KEYS */;
INSERT INTO `tb_rombel_siswa` VALUES (8,'X TKJ 1','X','Teknik Komputer dan Jaringan','2024/2025 ganjil','aktif'),(9,'X TKJ 2','X','Teknik Komputer dan Jaringan','2024/2025 ganjil','aktif'),(10,'X BDP 1','X','Bisnis Daring dan Pemasaran','2024/2025 ganjil','aktif'),(11,'X BDP 2','X','Bisnis Daring dan Pemasaran','2024/2025 ganjil','aktif'),(12,'X AKL','X','Akuntansi Keuangan dan Lembaga','2024/2025 ganjil','aktif');
/*!40000 ALTER TABLE `tb_rombel_siswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_rombel_siswa_stg`
--

DROP TABLE IF EXISTS `tb_rombel_siswa_stg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_rombel_siswa_stg` (
  `id_stg` int NOT NULL AUTO_INCREMENT,
  `id_rbl` int DEFAULT NULL,
  `id_siswa` int DEFAULT NULL,
  PRIMARY KEY (`id_stg`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_rombel_siswa_stg`
--

LOCK TABLES `tb_rombel_siswa_stg` WRITE;
/*!40000 ALTER TABLE `tb_rombel_siswa_stg` DISABLE KEYS */;
INSERT INTO `tb_rombel_siswa_stg` VALUES (55,8,455),(56,8,452),(57,8,376),(58,8,366),(59,8,429),(60,8,378),(61,8,365),(62,8,456),(63,8,392),(64,8,393),(65,8,430),(66,12,402),(67,12,446),(68,12,370),(69,12,414),(70,12,388),(71,12,373),(72,12,407),(73,12,439),(74,12,427),(75,12,436),(76,12,382),(77,12,451),(78,12,444),(79,12,435),(80,12,438),(81,12,424),(82,12,390),(83,12,457),(84,12,441),(85,10,362),(86,10,417),(87,10,420),(88,10,399),(89,10,418),(90,10,364),(91,10,448),(92,10,409),(93,10,413),(94,10,372),(95,10,416),(96,10,404),(97,10,410),(98,10,385),(99,10,428),(100,10,453),(101,10,421),(102,10,401),(103,10,423),(104,10,440),(105,11,434),(106,11,389),(107,11,377),(108,11,400),(109,11,368),(110,11,384),(111,11,371),(112,11,394),(113,11,419),(114,11,398),(115,11,431),(116,11,395),(117,11,447),(118,11,454),(119,11,408),(120,11,415),(121,11,412),(122,11,375),(123,11,360),(124,11,383),(125,8,369),(126,8,379),(127,8,458),(128,8,437),(129,8,406),(130,8,363),(131,8,367),(132,8,445),(133,8,449),(134,8,396),(135,8,403),(136,8,442),(137,8,426),(138,8,443),(139,8,381),(140,8,391),(141,8,374),(142,8,450),(143,8,397),(144,8,422),(145,9,425),(146,9,380),(147,9,405),(148,9,361),(149,9,386),(150,9,411),(151,9,433),(152,9,432),(153,9,387);
/*!40000 ALTER TABLE `tb_rombel_siswa_stg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_siswa`
--

DROP TABLE IF EXISTS `tb_siswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_siswa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nis_siswa` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nisn_siswa` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_siswa` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jk_siswa` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kls_siswa` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prod_siswa` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tp_siswa` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tplahir_siswa` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tglahir_siswa` date NOT NULL,
  `alamat_siswa` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ibu_siswa` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ayah_siswa` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tlp_siswa` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email_siswa` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status_siswa` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=657 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_siswa`
--

LOCK TABLES `tb_siswa` WRITE;
/*!40000 ALTER TABLE `tb_siswa` DISABLE KEYS */;
INSERT INTO `tb_siswa` VALUES (360,'24.3465','18469119','Jayadi Lailasari','L','X','Akuntansi Keuangan dan Lembaga','2024/2025','Surabaya','2008-06-21','Jl. Raya Semanan, Kalideres','Yessi','Cemani','81464108852','jayadilailasari607@gmail.com','aktif'),(361,'24.3466','76795660','Maida Yolanda','P','X','Akuntansi Keuangan dan Lembaga','2024/2025','Tegal','2009-09-26','Jl. Kembangan Raya, Kembangan','Yulia','Hendri','85345065150','maidayolanda658@gmail.com','aktif'),(362,'24.3467','24136516','Abyasa Utami','P','X','Akuntansi Keuangan dan Lembaga','2024/2025','Surabaya','2010-03-23','Jl. Meruya Selatan, Kembangan','Rini','Ikin','89855967438','abyasautami223@gmail.com','aktif'),(363,'24.3468','85131286','Mila Laksita','L','X','Akuntansi Keuangan dan Lembaga','2024/2025','Bandung','2009-09-01','Jl. Peta Selatan, Kalideres','Yuni','Catur','89541046095','milalaksita841@gmail.com','aktif'),(364,'24.3469','10765168','Tina Wibisono','L','X','Akuntansi Keuangan dan Lembaga','2024/2025','Yogyakarta','2008-12-10','Jl. Kembangan Raya, Kembangan','Suci','Ajimat','82353992169','tinawibisono762@gmail.com','aktif'),(365,'24.347','21374796','Aslijan Haryanti','L','X','Akuntansi Keuangan dan Lembaga','2024/2025','Purwokerto','2008-05-26','Jl. Kamal Raya, Cengkareng','Kamila','Cakrawala','84731918524','aslijanharyanti942@gmail.com','aktif'),(366,'24.3471','52159847','Atma Andriani','P','X','Akuntansi Keuangan dan Lembaga','2024/2025','Surabaya','2010-03-20','Jl. Meruya Selatan, Kembangan','Jasmin','Kawaya','89136682344','atmaandriani381@gmail.com','aktif'),(367,'24.3472','54824749','Simon Mustofa','L','X','Akuntansi Keuangan dan Lembaga','2024/2025','Surabaya','2009-02-28','Jl. Kamal Raya, Cengkareng','Cornelia','Maman','80756235635','simonmustofa185@gmail.com','aktif'),(368,'24.3473','31326096','Jaga Nababan','L','X','Akuntansi Keuangan dan Lembaga','2024/2025','Tegal','2009-09-20','Jl. Peta Selatan, Kalideres','Najwa','Sakti','85847312709','jaganababan908@gmail.com','aktif'),(369,'24.3474','12806551','Hairyanto Simbolon','P','X','Akuntansi Keuangan dan Lembaga','2024/2025','Blitar','2009-11-30','Jl. Kamal Raya, Cengkareng','Febi','Irnanto','86854775175','hairyantosimbolon476@gmail.com','aktif'),(370,'24.3475','97262469','Candrakanta Mustofa','L','X','Akuntansi Keuangan dan Lembaga','2024/2025','Semarang','2008-10-02','Jl. Kembangan Raya, Kembangan','Putri','Chandra','80077173169','candrakantamustofa929@gmail.com','aktif'),(371,'24.3476','71848103','Mutia Rahayu','P','X','Akuntansi Keuangan dan Lembaga','2024/2025','Yogyakarta','2009-05-05','Jl. Peta Selatan, Kalideres','Cinthia','Jail','87341334547','mutiarahayu231@gmail.com','aktif'),(372,'24.3477','40160671','Wira Rahayu','L','X','Akuntansi Keuangan dan Lembaga','2024/2025','Blitar','2009-08-23','Jl. Daan Mogot, Cengkareng','Sabrina','Irnanto','81911748561','wirarahayu647@gmail.com','aktif'),(373,'24.3478','85566013','Atma Lazuardi','L','X','Akuntansi Keuangan dan Lembaga','2024/2025','Blitar','2008-05-25','Jl. Kembangan Raya, Kembangan','Gabriella','Eko','84626609077','atmalazuardi259@gmail.com','aktif'),(374,'24.3479','22509631','Lili Prasetyo','P','X','Akuntansi Keuangan dan Lembaga','2024/2025','Bandung','2008-05-07','Jl. Meruya Selatan, Kembangan','Yuliana','Bakiadi','84358190144','liliprasetyo334@gmail.com','aktif'),(375,'24.348','22138609','Jamil Sinaga','P','X','Akuntansi Keuangan dan Lembaga','2024/2025','Solo','2009-12-15','Jl. Meruya Selatan, Kembangan','Ana','Danu','86369218367','jamilsinaga933@gmail.com','aktif'),(376,'24.3481','25875823','Anggabaya Uwais','L','X','Akuntansi Keuangan dan Lembaga','2024/2025','Blitar','2010-01-30','Jl. Peta Selatan, Kalideres','Hamima','Purwanto','87053877089','anggabayauwais623@gmail.com','aktif'),(377,'24.3482','32119138','Irsad Hardiansyah','P','X','Akuntansi Keuangan dan Lembaga','2024/2025','Purwokerto','2008-10-31','Jl. Kamal Raya, Cengkareng','Uli','Rudi','80487172979','irsadhardiansyah959@gmail.com','aktif'),(378,'24.3483','23211041','Ajiono Sihotang','P','X','Akuntansi Keuangan dan Lembaga','2024/2025','Solo','2009-09-02','Jl. Daan Mogot, Cengkareng','Tari','Galih','87760976867','ajionosihotang252@gmail.com','aktif'),(379,'24.3484','77198202','Jaeman Mansur','L','X','Akuntansi Keuangan dan Lembaga','2024/2025','Semarang','2009-12-31','Jl. Raya Semanan, Kalideres','Ratna','Harimurti','82731063153','jaemanmansur269@gmail.com','aktif'),(380,'24.3485','16293079','Kamidin Salahudin','L','X','Akuntansi Keuangan dan Lembaga','2024/2025','Malang','2009-10-05','Jl. Raya Semanan, Kalideres','Maida','Hasim','87586109303','kamidinsalahudin837@gmail.com','aktif'),(381,'24.3486','17013575','Mahdi Simbolon','L','X','Akuntansi Keuangan dan Lembaga','2024/2025','Malang','2010-03-06','Jl. Kamal Raya, Cengkareng','Calista','Cemani','80351107449','mahdisimbolon572@gmail.com','aktif'),(382,'24.3487','33051668','Fitria Lestari','P','X','Akuntansi Keuangan dan Lembaga','2024/2025','Blitar','2009-02-15','Jl. Kamal Raya, Cengkareng','Yani','Prabu','88326198336','fitrialestari188@gmail.com','aktif'),(383,'24.3488','47310873','Jono Pratiwi','L','X','Akuntansi Keuangan dan Lembaga','2024/2025','Purwokerto','2010-02-03','Jl. Kamal Raya, Cengkareng','Icha','Wahyu','84879914187','jonopratiwi918@gmail.com','aktif'),(384,'24.3489','75989326','Martana Zulkarnain','L','X','Akuntansi Keuangan dan Lembaga','2024/2025','Yogyakarta','2009-09-19','Jl. Peta Selatan, Kalideres','Lidya','Jaiman','88386423929','martanazulkarnain347@gmail.com','aktif'),(385,'24.349','85085569','Nadine Saputra','P','X','Akuntansi Keuangan dan Lembaga','2024/2025','Solo','2009-05-06','Jl. Meruya Selatan, Kembangan','Usyi','Adiarja','80916831783','nadinesaputra324@gmail.com','aktif'),(386,'24.3491','93409267','Vera Pradipta','P','X','Akuntansi Keuangan dan Lembaga','2024/2025','Cirebon','2009-08-14','Jl. Raya Semanan, Kalideres','Restu','Eja','88006039835','verapradipta219@gmail.com','aktif'),(387,'24.3492','38762718','Zahra Suwarno','L','X','Akuntansi Keuangan dan Lembaga','2024/2025','Surabaya','2009-08-22','Jl. Kembangan Raya, Kembangan','Yuliana','Jarwadi','87348541153','zahrasuwarno819@gmail.com','aktif'),(388,'24.3493','23049313','Danuja Nugroho','P','X','Akuntansi Keuangan dan Lembaga','2024/2025','Malang','2008-08-30','Jl. Kamal Raya, Cengkareng','Zahra','Taufan','89902512272','danujanugroho522@gmail.com','aktif'),(389,'24.3494','32828200','Himawan Salahudin','L','X','Akuntansi Keuangan dan Lembaga','2024/2025','Blitar','2010-01-18','Jl. Daan Mogot, Cengkareng','Ira','Cawisadi','85408784708','himawansalahudin360@gmail.com','aktif'),(390,'24.3495','40849827','Digdaya Fujiati','L','X','Akuntansi Keuangan dan Lembaga','2024/2025','Tegal','2009-11-07','Jl. Kamal Raya, Cengkareng','Eka','Atmaja','89822945694','digdayafujiati714@gmail.com','aktif'),(391,'24.3496','66072480','Kurnia Susanti','L','X','Akuntansi Keuangan dan Lembaga','2024/2025','Bandung','2008-05-12','Jl. Meruya Selatan, Kembangan','Ida','Parman','80413254590','kurniasusanti905@gmail.com','aktif'),(392,'24.3497','33888774','Bakiadi Laksmiwati','L','X','Akuntansi Keuangan dan Lembaga','2024/2025','Purwokerto','2009-12-02','Jl. Kamal Raya, Cengkareng','Paris','Hamzah','81734688669','bakiadilaksmiwati545@gmail.com','aktif'),(393,'24.3498','99915623','Bala Adriansyah','L','X','Teknik Komputer dan Jaringan','2024/2025','Purwokerto','2009-02-24','Jl. Meruya Selatan, Kembangan','Endah','Jumari','84757261440','balaadriansyah632@gmail.com','aktif'),(394,'24.3499','81035562','Natalia Riyanti','L','X','Teknik Komputer dan Jaringan','2024/2025','Tegal','2010-02-15','Jl. Peta Selatan, Kalideres','Natalia','Garang','83718062580','nataliariyanti911@gmail.com','aktif'),(395,'24.35','84646672','Rahayu Wijaya','P','X','Teknik Komputer dan Jaringan','2024/2025','Bandung','2008-07-28','Jl. Daan Mogot, Cengkareng','Yessi','Dirja','86899965884','rahayuwijaya745@gmail.com','aktif'),(396,'24.3501','23973627','Wardi Pertiwi','L','X','Teknik Komputer dan Jaringan','2024/2025','Purwokerto','2009-08-26','Jl. Daan Mogot, Cengkareng','Ami','Umay','89764563314','wardipertiwi121@gmail.com','aktif'),(397,'24.3502','88282108','Oman Kurniawan','P','X','Teknik Komputer dan Jaringan','2024/2025','Tegal','2010-04-21','Jl. Raya Semanan, Kalideres','Nova','Daryani','84006588134','omankurniawan214@gmail.com','aktif'),(398,'24.3503','76687403','Puput Firmansyah','P','X','Teknik Komputer dan Jaringan','2024/2025','Blitar','2010-03-01','Jl. Raya Semanan, Kalideres','Laras','Harimurti','88570673218','puputfirmansyah373@gmail.com','aktif'),(399,'24.3504','82442229','Hardana Kurniawan','L','X','Teknik Komputer dan Jaringan','2024/2025','Surabaya','2009-12-12','Jl. Kamal Raya, Cengkareng','Umi','Oman','84457543078','hardanakurniawan731@gmail.com','aktif'),(400,'24.3505','38331861','Jaeman Pertiwi','P','X','Teknik Komputer dan Jaringan','2024/2025','Bandung','2010-05-03','Jl. Kamal Raya, Cengkareng','Calista','Akarsana','84664369400','jaemanpertiwi253@gmail.com','aktif'),(401,'24.3506','20626060','Johan Saragih','L','X','Teknik Komputer dan Jaringan','2024/2025','Purwokerto','2008-08-26','Jl. Daan Mogot, Cengkareng','Ilsa','Hartaka','87829054655','johansaragih852@gmail.com','aktif'),(402,'24.3507','51209621','Amelia Najmudin','P','X','Teknik Komputer dan Jaringan','2024/2025','Blitar','2009-01-16','Jl. Raya Semanan, Kalideres','Tania','Galur','86903152883','amelianajmudin866@gmail.com','aktif'),(403,'24.3508','18285888','Jatmiko Uyainah','L','X','Teknik Komputer dan Jaringan','2024/2025','Bandung','2010-04-02','Jl. Peta Selatan, Kalideres','Jelita','Jarwa','86087702277','jatmikouyainah900@gmail.com','aktif'),(404,'24.3509','59963689','Melinda Farida','P','X','Teknik Komputer dan Jaringan','2024/2025','Purwokerto','2009-12-27','Jl. Kamal Raya, Cengkareng','Fathonah','Dalimin','80148505337','melindafarida553@gmail.com','aktif'),(405,'24.351','1483774','Keisha Pangestu','L','X','Teknik Komputer dan Jaringan','2024/2025','Cirebon','2009-11-09','Jl. Kamal Raya, Cengkareng','Ciaobella','Waluyo','84164887902','keishapangestu270@gmail.com','aktif'),(406,'24.3511','93364070','Kurnia Nasyidah','L','X','Teknik Komputer dan Jaringan','2024/2025','Solo','2010-03-08','Jl. Peta Selatan, Kalideres','Hilda','Bagus','89892237356','kurnianasyidah626@gmail.com','aktif'),(407,'24.3512','12323404','Cahyo Prakasa','L','X','Teknik Komputer dan Jaringan','2024/2025','Solo','2009-10-31','Jl. Kamal Raya, Cengkareng','Shania','Mahmud','89009829658','cahyoprakasa466@gmail.com','aktif'),(408,'24.3513','69284945','Tania Prasasta','P','X','Teknik Komputer dan Jaringan','2024/2025','Semarang','2009-05-08','Jl. Kembangan Raya, Kembangan','Vera','Kawaca','85960420734','taniaprasasta369@gmail.com','aktif'),(409,'24.3514','84075158','Violet Mayasari','P','X','Teknik Komputer dan Jaringan','2024/2025','Surabaya','2008-12-25','Jl. Daan Mogot, Cengkareng','Yuliana','Nardi','83302679977','violetmayasari710@gmail.com','aktif'),(410,'24.3515','65959116','Mursinin Firgantoro','P','X','Teknik Komputer dan Jaringan','2024/2025','Cirebon','2009-10-04','Jl. Daan Mogot, Cengkareng','Widya','Lurhur','83102602415','mursininfirgantoro302@gmail.com','aktif'),(411,'24.3516','79246188','Yahya Siregar','P','X','Teknik Komputer dan Jaringan','2024/2025','Semarang','2009-06-01','Jl. Kembangan Raya, Kembangan','Aurora','Cakrabuana','86299741146','yahyasiregar556@gmail.com','aktif'),(412,'24.3517','55270601','Hana Novitasari','L','X','Teknik Komputer dan Jaringan','2024/2025','Semarang','2010-04-14','Jl. Kembangan Raya, Kembangan','Natalia','Cawisadi','86323346517','hananovitasari452@gmail.com','aktif'),(413,'24.3518','86674598','Wage Astuti','P','X','Teknik Komputer dan Jaringan','2024/2025','Tegal','2008-12-29','Jl. Raya Semanan, Kalideres','Zaenab','Erik','86377859699','wageastuti265@gmail.com','aktif'),(414,'24.3519','4718309','Dalima Pratama','P','X','Teknik Komputer dan Jaringan','2024/2025','Semarang','2010-02-14','Jl. Peta Selatan, Kalideres','Syahrini','Luwes','85132612848','dalimapratama134@gmail.com','aktif'),(415,'24.352','77841690','Gading Wibisono','L','X','Teknik Komputer dan Jaringan','2024/2025','Semarang','2009-01-20','Jl. Daan Mogot, Cengkareng','Paulin','Kardi','86707954309','gadingwibisono264@gmail.com','aktif'),(416,'24.3521','37047084','Maras Hutasoit','P','X','Teknik Komputer dan Jaringan','2024/2025','Semarang','2010-01-04','Jl. Daan Mogot, Cengkareng','Kani','Galuh','88881895027','marashutasoit613@gmail.com','aktif'),(417,'24.3522','10120935','Galang Pranowo','P','X','Teknik Komputer dan Jaringan','2024/2025','Malang','2008-05-28','Jl. Raya Semanan, Kalideres','Dalima','Slamet','88353551496','galangpranowo173@gmail.com','aktif'),(418,'24.3523','57625246','Ibrani Suryono','L','X','Teknik Komputer dan Jaringan','2024/2025','Tegal','2009-03-07','Jl. Raya Semanan, Kalideres','Nilam','Enteng','85518982084','ibranisuryono870@gmail.com','aktif'),(419,'24.3524','57799878','Oni Wasita','P','X','Teknik Komputer dan Jaringan','2024/2025','Cirebon','2009-10-19','Jl. Raya Semanan, Kalideres','Salimah','Caturangga','83209278638','oniwasita244@gmail.com','aktif'),(420,'24.3525','56629244','Gangsar Aryani','L','X','Teknik Komputer dan Jaringan','2024/2025','Solo','2009-07-10','Jl. Kembangan Raya, Kembangan','Ellis','Bagus','83573129631','gangsararyani817@gmail.com','aktif'),(421,'24.3526','95769089','Jasmani Hartati','P','X','Teknik Komputer dan Jaringan','2024/2025','Surabaya','2010-03-24','Jl. Kembangan Raya, Kembangan','Tania','Irnanto','81495557865','jasmanihartati134@gmail.com','aktif'),(422,'24.3527','32211492','Usyi Habibi','L','X','Teknik Komputer dan Jaringan','2024/2025','Semarang','2009-11-05','Jl. Peta Selatan, Kalideres','Jane','Vero','88428081544','usyihabibi487@gmail.com','aktif'),(423,'24.3528','11086735','Kalim Ramadan','P','X','Teknik Komputer dan Jaringan','2024/2025','Blitar','2008-09-09','Jl. Kembangan Raya, Kembangan','Mala','Lukita','85900991482','kalimramadan591@gmail.com','aktif'),(424,'24.3529','10872628','Ganda Waluyo','L','X','Teknik Komputer dan Jaringan','2024/2025','Malang','2010-05-03','Jl. Peta Selatan, Kalideres','Ophelia','Dadap','86872081389','gandawaluyo575@gmail.com','aktif'),(425,'24.353','58751712','Ismail Puspasari','P','X','Teknik Komputer dan Jaringan','2024/2025','Cirebon','2009-07-19','Jl. Kamal Raya, Cengkareng','Farah','Cawisono','80038916862','ismailpuspasari401@gmail.com','aktif'),(426,'24.3531','58914896','Labuh Mardhiyah','P','X','Bisnis Daring dan Pemasaran','2024/2025','Solo','2008-11-08','Jl. Kembangan Raya, Kembangan','Jelita','Cayadi','80557345399','labuhmardhiyah401@gmail.com','aktif'),(427,'24.3532','34833660','Darimin Widiastuti','L','X','Bisnis Daring dan Pemasaran','2024/2025','Yogyakarta','2009-02-24','Jl. Raya Semanan, Kalideres','Puput','Purwanto','80614453468','dariminwidiastuti617@gmail.com','aktif'),(428,'24.3533','26918400','Naradi Nurdiyanti','P','X','Bisnis Daring dan Pemasaran','2024/2025','Blitar','2010-02-20','Jl. Meruya Selatan, Kembangan','Zalindra','Rafid','81905881440','naradinurdiyanti433@gmail.com','aktif'),(429,'24.3534','20362416','Bagya Wasita','P','X','Bisnis Daring dan Pemasaran','2024/2025','Malang','2009-11-26','Jl. Meruya Selatan, Kembangan','Talia','Bakiono','84856003052','bagyawasita824@gmail.com','aktif'),(430,'24.3535','83612010','Cahyanto Uwais','P','X','Bisnis Daring dan Pemasaran','2024/2025','Semarang','2008-07-07','Jl. Raya Semanan, Kalideres','Azalea','Elon','88218121373','cahyantouwais214@gmail.com','aktif'),(431,'24.3536','99150542','Naradi Wacana','P','X','Bisnis Daring dan Pemasaran','2024/2025','Purwokerto','2008-06-09','Jl. Raya Semanan, Kalideres','Cindy','Opung','83337900979','naradiwacana482@gmail.com','aktif'),(432,'24.3537','41968525','Yusuf Sihotang','P','X','Bisnis Daring dan Pemasaran','2024/2025','Yogyakarta','2008-05-28','Jl. Kembangan Raya, Kembangan','Rahayu','Saka','81729761704','yusufsihotang543@gmail.com','aktif'),(433,'24.3538','31392879','Yuliana Pradipta','P','X','Bisnis Daring dan Pemasaran','2024/2025','Blitar','2008-08-25','Jl. Meruya Selatan, Kembangan','Jamalia','Sabri','80540779999','yulianapradipta258@gmail.com','aktif'),(434,'24.3539','43119457','Galang Marbun','P','X','Bisnis Daring dan Pemasaran','2024/2025','Surabaya','2009-11-28','Jl. Kamal Raya, Cengkareng','Gawati','Nalar','80929047858','galangmarbun127@gmail.com','aktif'),(435,'24.354','40945025','Fitria Natsir','P','X','Bisnis Daring dan Pemasaran','2024/2025','Blitar','2009-10-04','Jl. Peta Selatan, Kalideres','Rachel','Jarwa','80554810801','fitrianatsir828@gmail.com','aktif'),(436,'24.3541','31598065','Digdaya Anggraini','L','X','Bisnis Daring dan Pemasaran','2024/2025','Semarang','2008-05-07','Jl. Daan Mogot, Cengkareng','Hasna','Gaduh','88405695224','digdayaanggraini821@gmail.com','aktif'),(437,'24.3542','11909945','Kawaya Tampubolon','P','X','Bisnis Daring dan Pemasaran','2024/2025','Blitar','2008-11-24','Jl. Raya Semanan, Kalideres','Zamira','Gandi','83389809039','kawayatampubolon890@gmail.com','aktif'),(438,'24.3543','40730343','Galang Mustofa','P','X','Bisnis Daring dan Pemasaran','2024/2025','Cirebon','2008-10-10','Jl. Daan Mogot, Cengkareng','Titi','Rama','86872464448','galangmustofa208@gmail.com','aktif'),(439,'24.3544','81915872','Citra Agustina','P','X','Bisnis Daring dan Pemasaran','2024/2025','Cirebon','2008-09-24','Jl. Kamal Raya, Cengkareng','Amelia','Danang','89698655745','citraagustina463@gmail.com','aktif'),(440,'24.3545','57419699','Kambali Sihombing','L','X','Bisnis Daring dan Pemasaran','2024/2025','Malang','2009-08-05','Jl. Kamal Raya, Cengkareng','Titi','Jaswadi','81260393518','kambalisihombing761@gmail.com','aktif'),(441,'24.3546','93202404','Genta Mansur','L','X','Bisnis Daring dan Pemasaran','2024/2025','Tegal','2010-03-24','Jl. Daan Mogot, Cengkareng','Vivi','Caket','86728641323','gentamansur147@gmail.com','aktif'),(442,'24.3547','93616347','Kurnia Pradipta','P','X','Bisnis Daring dan Pemasaran','2024/2025','Surabaya','2009-11-21','Jl. Raya Semanan, Kalideres','Jane','Lantar','82511869658','kurniapradipta484@gmail.com','aktif'),(443,'24.3548','20728631','Lasmanto Megantara','P','X','Bisnis Daring dan Pemasaran','2024/2025','Surabaya','2008-08-20','Jl. Peta Selatan, Kalideres','Janet','Wadi','87205840308','lasmantomegantara154@gmail.com','aktif'),(444,'24.3549','53088967','Darman Hassanah','L','X','Bisnis Daring dan Pemasaran','2024/2025','Tegal','2008-11-28','Jl. Meruya Selatan, Kembangan','Titi','Gamblang','85949748058','darmanhassanah114@gmail.com','aktif'),(445,'24.355','70125265','Uchita Wacana','L','X','Bisnis Daring dan Pemasaran','2024/2025','Malang','2008-09-09','Jl. Meruya Selatan, Kembangan','Eva','Martani','85309160886','uchitawacana314@gmail.com','aktif'),(446,'24.3551','92981673','Bancar Wastuti','P','X','Bisnis Daring dan Pemasaran','2024/2025','Solo','2008-07-16','Jl. Raya Semanan, Kalideres','Jessica','Prasetya','86108654555','bancarwastuti303@gmail.com','aktif'),(447,'24.3552','42949947','Soleh Haryanto','L','X','Bisnis Daring dan Pemasaran','2024/2025','Purwokerto','2008-12-01','Jl. Peta Selatan, Kalideres','Karimah','Ihsan','81207491371','solehharyanto641@gmail.com','aktif'),(448,'24.3553','32803905','Umay Winarno','L','X','Bisnis Daring dan Pemasaran','2024/2025','Semarang','2009-12-06','Jl. Peta Selatan, Kalideres','Keisha','Marwata','82117469810','umaywinarno659@gmail.com','aktif'),(449,'24.3554','42072028','Vivi Manullang','L','X','Bisnis Daring dan Pemasaran','2024/2025','Solo','2009-12-21','Jl. Peta Selatan, Kalideres','Bella','Surya','84706435535','vivimanullang632@gmail.com','aktif'),(450,'24.3555','91621076','Mila Fujiati','P','X','Bisnis Daring dan Pemasaran','2024/2025','Blitar','2009-12-07','Jl. Meruya Selatan, Kembangan','Victoria','Galih','84718191244','milafujiati344@gmail.com','aktif'),(451,'24.3556','61150508','Daliman Mandala','P','X','Bisnis Daring dan Pemasaran','2024/2025','Surabaya','2008-09-15','Jl. Daan Mogot, Cengkareng','Rini','Empluk','81840440034','dalimanmandala773@gmail.com','aktif'),(452,'24.3557','60906269','Akarsana Saefullah','P','X','Bisnis Daring dan Pemasaran','2024/2025','Purwokerto','2009-03-09','Jl. Raya Semanan, Kalideres','Yunita','Wage','81209833899','akarsanasaefullah122@gmail.com','aktif'),(453,'24.3558','6182232','Jaiman Setiawan','L','X','Bisnis Daring dan Pemasaran','2024/2025','Blitar','2009-10-26','Jl. Daan Mogot, Cengkareng','Betania','Bancar','89468966722','jaimansetiawan260@gmail.com','aktif'),(454,'24.3559','60962461','Tami Saptono','P','X','Bisnis Daring dan Pemasaran','2024/2025','Cirebon','2008-12-30','Jl. Kembangan Raya, Kembangan','Sari','Bakti','89958202305','tamisaptono938@gmail.com','aktif'),(455,'24.356','82468663','Ajeng Budiyanto','L','X','Bisnis Daring dan Pemasaran','2024/2025','Blitar','2010-02-26','Jl. Daan Mogot, Cengkareng','Yulia','Garda','81324937904','ajengbudiyanto255@gmail.com','aktif'),(456,'24.3561','54673725','Bahuwarna Farida','P','X','Bisnis Daring dan Pemasaran','2024/2025','Surabaya','2009-10-04','Jl. Raya Semanan, Kalideres','Cinthia','Bakianto','83808305468','bahuwarnafarida255@gmail.com','aktif'),(457,'24.3562','52388312','Ganep Prasetya','L','X','Bisnis Daring dan Pemasaran','2024/2025','Surabaya','2010-01-28','Jl. Raya Semanan, Kalideres','Kani','Carub','84365362497','ganepprasetya675@gmail.com','aktif'),(458,'24.3563','78098497','Jinawi Kusumo','L','X','Bisnis Daring dan Pemasaran','2024/2025','Yogyakarta','2009-01-21','Jl. Peta Selatan, Kalideres','Vivi','Luwes','86266664971','jinawikusumo881@gmail.com','aktif'),(459,'23.3366','23297708','Gabriella Natsir','P','XI','Akuntansi Keuangan dan Lembaga','2024/2025','Surabaya','2008-05-03','Jl. Raya Semanan, Kalideres','Gabriella','Jefri','87569621538','gabriellanatsir956@gmail.com','aktif'),(460,'23.3367','22986557','Bagus Prasetyo','L','XI','Akuntansi Keuangan dan Lembaga','2024/2025','Purwokerto','2008-05-15','Jl. Kamal Raya, Cengkareng','Zelda','Bakianto','80460502754','bagusprasetyo623@gmail.com','aktif'),(461,'23.3368','75578158','Ulva Suryono','L','XI','Akuntansi Keuangan dan Lembaga','2024/2025','Surabaya','2007-06-04','Jl. Raya Semanan, Kalideres','Pia','Cakrajiya','81935461348','ulvasuryono163@gmail.com','aktif'),(462,'23.3369','39618224','Cakrajiya Safitri','L','XI','Akuntansi Keuangan dan Lembaga','2024/2025','Malang','2007-05-27','Jl. Kamal Raya, Cengkareng','Najwa','Galuh','82178481057','cakrajiyasafitri484@gmail.com','aktif'),(463,'23.337','68004493','Carub Wijayanti','L','XI','Akuntansi Keuangan dan Lembaga','2024/2025','Semarang','2008-03-28','Jl. Peta Selatan, Kalideres','Elma','Jaswadi','81619117817','carubwijayanti587@gmail.com','aktif'),(464,'23.3371','38356220','Julia Mayasari','L','XI','Akuntansi Keuangan dan Lembaga','2024/2025','Surabaya','2009-03-02','Jl. Peta Selatan, Kalideres','Silvia','Ega','87190510290','juliamayasari892@gmail.com','aktif'),(465,'23.3372','72924114','Cahya Nugroho','P','XI','Akuntansi Keuangan dan Lembaga','2024/2025','Yogyakarta','2009-03-23','Jl. Raya Semanan, Kalideres','Salwa','Kariman','88724221793','cahyanugroho342@gmail.com','aktif'),(466,'23.3373','81156842','Unggul Maheswara','P','XI','Akuntansi Keuangan dan Lembaga','2024/2025','Cirebon','2007-08-09','Jl. Kamal Raya, Cengkareng','Ira','Prabowo','88709598202','unggulmaheswara813@gmail.com','aktif'),(467,'23.3374','35784854','Kunthara Saputra','L','XI','Akuntansi Keuangan dan Lembaga','2024/2025','Yogyakarta','2008-07-16','Jl. Daan Mogot, Cengkareng','Betania','Jatmiko','82160761576','kuntharasaputra961@gmail.com','aktif'),(468,'23.3375','28983711','Dariati Prasetyo','L','XI','Akuntansi Keuangan dan Lembaga','2024/2025','Semarang','2009-01-30','Jl. Daan Mogot, Cengkareng','Febi','Cahyadi','81202064643','dariatiprasetyo620@gmail.com','aktif'),(469,'23.3376','97077428','Ivan Firgantoro','L','XI','Akuntansi Keuangan dan Lembaga','2024/2025','Blitar','2007-06-10','Jl. Peta Selatan, Kalideres','Hana','Ganjaran','88143573281','ivanfirgantoro205@gmail.com','aktif'),(470,'23.3377','63279868','Caraka Mustofa','L','XI','Akuntansi Keuangan dan Lembaga','2024/2025','Blitar','2007-09-03','Jl. Peta Selatan, Kalideres','Siti','Jasmani','83404312727','carakamustofa958@gmail.com','aktif'),(471,'23.3378','43113444','Galar Wibisono','L','XI','Akuntansi Keuangan dan Lembaga','2024/2025','Surabaya','2008-12-31','Jl. Kembangan Raya, Kembangan','Ida','Eman','83915667421','galarwibisono164@gmail.com','aktif'),(472,'23.3379','13059419','Samiah Jailani','L','XI','Akuntansi Keuangan dan Lembaga','2024/2025','Cirebon','2009-01-16','Jl. Raya Semanan, Kalideres','Faizah','Lanang','87058910338','samiahjailani135@gmail.com','aktif'),(473,'23.338','40000790','Maman Rajasa','L','XI','Akuntansi Keuangan dan Lembaga','2024/2025','Malang','2008-07-01','Jl. Meruya Selatan, Kembangan','Yance','Anggabaya','86824717799','mamanrajasa178@gmail.com','aktif'),(474,'23.3381','86533872','Parman Hakim','P','XI','Akuntansi Keuangan dan Lembaga','2024/2025','Surabaya','2009-04-21','Jl. Kembangan Raya, Kembangan','Fathonah','Kemal','81739975424','parmanhakim102@gmail.com','aktif'),(475,'23.3382','17989041','Oman Farida','L','XI','Akuntansi Keuangan dan Lembaga','2024/2025','Semarang','2008-07-28','Jl. Meruya Selatan, Kembangan','Ira','Mahmud','87412915606','omanfarida178@gmail.com','aktif'),(476,'23.3383','77619849','Raina Wasita','L','XI','Akuntansi Keuangan dan Lembaga','2024/2025','Semarang','2009-02-02','Jl. Kamal Raya, Cengkareng','Ana','Jail','88620228741','rainawasita384@gmail.com','aktif'),(477,'23.3384','51038076','Unggul Hassanah','P','XI','Akuntansi Keuangan dan Lembaga','2024/2025','Tegal','2009-03-03','Jl. Daan Mogot, Cengkareng','Irma','Gaduh','85702292733','unggulhassanah982@gmail.com','aktif'),(478,'23.3385','37522821','Sabri Fujiati','L','XI','Akuntansi Keuangan dan Lembaga','2024/2025','Blitar','2008-04-10','Jl. Daan Mogot, Cengkareng','Queen','Prima','82457914768','sabrifujiati691@gmail.com','aktif'),(479,'23.3386','80726044','Rafid Narpati','L','XI','Akuntansi Keuangan dan Lembaga','2024/2025','Malang','2008-04-14','Jl. Peta Selatan, Kalideres','Hafshah','Cahyanto','80669487942','rafidnarpati491@gmail.com','aktif'),(480,'23.3387','57534043','Kamidin Damanik','P','XI','Akuntansi Keuangan dan Lembaga','2024/2025','Blitar','2008-01-29','Jl. Kamal Raya, Cengkareng','Irma','Galur','81064272173','kamidindamanik514@gmail.com','aktif'),(481,'23.3388','59907465','Johan Irawan','P','XI','Akuntansi Keuangan dan Lembaga','2024/2025','Cirebon','2007-08-16','Jl. Daan Mogot, Cengkareng','Cornelia','Kalim','87641678860','johanirawan250@gmail.com','aktif'),(482,'23.3389','68687438','Balapati Suryatmi','L','XI','Akuntansi Keuangan dan Lembaga','2024/2025','Yogyakarta','2007-12-18','Jl. Raya Semanan, Kalideres','Alika','Kenes','87006670132','balapatisuryatmi366@gmail.com','aktif'),(483,'23.339','46908226','Jarwadi Pangestu','P','XI','Akuntansi Keuangan dan Lembaga','2024/2025','Malang','2007-12-03','Jl. Kembangan Raya, Kembangan','Uli','Darijan','86607234493','jarwadipangestu534@gmail.com','aktif'),(484,'23.3391','37445816','Dadap Irawan','P','XI','Akuntansi Keuangan dan Lembaga','2024/2025','Semarang','2007-11-09','Jl. Raya Semanan, Kalideres','Lintang','Catur','86113414779','dadapirawan109@gmail.com','aktif'),(485,'23.3392','91347011','Lurhur Simanjuntak','P','XI','Akuntansi Keuangan dan Lembaga','2024/2025','Purwokerto','2008-04-20','Jl. Kamal Raya, Cengkareng','Clara','Lukman','87157507073','lurhursimanjuntak499@gmail.com','aktif'),(486,'23.3393','30559299','Karen Kurniawan','P','XI','Akuntansi Keuangan dan Lembaga','2024/2025','Purwokerto','2008-09-27','Jl. Meruya Selatan, Kembangan','Zulaikha','Kenari','81893997076','karenkurniawan516@gmail.com','aktif'),(487,'23.3394','22333000','Reza Yuniar','P','XI','Akuntansi Keuangan dan Lembaga','2024/2025','Tegal','2008-03-03','Jl. Daan Mogot, Cengkareng','Rahmi','Heryanto','82876589392','rezayuniar287@gmail.com','aktif'),(488,'23.3395','46883389','Cengkir Suartini','P','XI','Akuntansi Keuangan dan Lembaga','2024/2025','Bandung','2008-07-19','Jl. Daan Mogot, Cengkareng','Lala','Wage','81609708709','cengkirsuartini648@gmail.com','aktif'),(489,'23.3396','74722794','Eva Wacana','L','XI','Akuntansi Keuangan dan Lembaga','2024/2025','Cirebon','2008-03-11','Jl. Peta Selatan, Kalideres','Ami','Mahesa','89405899667','evawacana293@gmail.com','aktif'),(490,'23.3397','22944839','Galang Lestari','P','XI','Akuntansi Keuangan dan Lembaga','2024/2025','Bandung','2009-03-06','Jl. Peta Selatan, Kalideres','Laila','Prakosa','89563956206','galanglestari547@gmail.com','aktif'),(491,'23.3398','89229454','Mahesa Prasetyo','P','XI','Akuntansi Keuangan dan Lembaga','2024/2025','Cirebon','2008-04-02','Jl. Peta Selatan, Kalideres','Oliva','Latif','83863455795','mahesaprasetyo845@gmail.com','aktif'),(492,'23.3399','85566505','Ganjaran Simanjuntak','P','XI','Teknik Komputer dan Jaringan','2024/2025','Yogyakarta','2009-04-04','Jl. Meruya Selatan, Kembangan','Olivia','Capa','81370742316','ganjaransimanjuntak923@gmail.com','aktif'),(493,'23.34','41560654','Bakiadi Tampubolon','P','XI','Teknik Komputer dan Jaringan','2024/2025','Bandung','2008-01-20','Jl. Meruya Selatan, Kembangan','Yessi','Estiawan','88052528863','bakiaditampubolon245@gmail.com','aktif'),(494,'23.3401','86462123','Ratih Suryatmi','P','XI','Teknik Komputer dan Jaringan','2024/2025','Surabaya','2008-10-16','Jl. Kamal Raya, Cengkareng','Uchita','Gamani','85020595801','ratihsuryatmi939@gmail.com','aktif'),(495,'23.3402','73720167','Prayogo Purwanti','L','XI','Teknik Komputer dan Jaringan','2024/2025','Purwokerto','2007-12-20','Jl. Peta Selatan, Kalideres','Nova','Lamar','84361689963','prayogopurwanti672@gmail.com','aktif'),(496,'23.3403','18761721','Prayitna Purwanti','P','XI','Teknik Komputer dan Jaringan','2024/2025','Surabaya','2007-08-03','Jl. Kamal Raya, Cengkareng','Oni','Wakiman','84740097600','prayitnapurwanti282@gmail.com','aktif'),(497,'23.3404','51794396','Wage Adriansyah','P','XI','Teknik Komputer dan Jaringan','2024/2025','Yogyakarta','2008-01-25','Jl. Raya Semanan, Kalideres','Eli','Kacung','88827722782','wageadriansyah274@gmail.com','aktif'),(498,'23.3405','17886646','Asmianto Saragih','P','XI','Teknik Komputer dan Jaringan','2024/2025','Yogyakarta','2007-06-25','Jl. Raya Semanan, Kalideres','Tania','Baktiadi','81378708268','asmiantosaragih704@gmail.com','aktif'),(499,'23.3406','43629518','Mulyanto Pradana','L','XI','Teknik Komputer dan Jaringan','2024/2025','Tegal','2008-04-10','Jl. Daan Mogot, Cengkareng','Zulaikha','Ganep','85113290064','mulyantopradana997@gmail.com','aktif'),(500,'23.3407','55787470','Gadang Tarihoran','L','XI','Teknik Komputer dan Jaringan','2024/2025','Surabaya','2008-06-28','Jl. Raya Semanan, Kalideres','Endah','Harsaya','80736452608','gadangtarihoran288@gmail.com','aktif'),(501,'23.3408','36686360','Nasim Wastuti','L','XI','Teknik Komputer dan Jaringan','2024/2025','Malang','2008-03-25','Jl. Daan Mogot, Cengkareng','Samiah','Raihan','85037329440','nasimwastuti546@gmail.com','aktif'),(502,'23.3409','92144543','Liman Mahendra','L','XI','Teknik Komputer dan Jaringan','2024/2025','Cirebon','2009-02-24','Jl. Daan Mogot, Cengkareng','Sakura','Drajat','88855410097','limanmahendra507@gmail.com','aktif'),(503,'23.341','86958459','Kunthara Nababan','P','XI','Teknik Komputer dan Jaringan','2024/2025','Semarang','2008-09-24','Jl. Kamal Raya, Cengkareng','Umi','Warsa','87889459023','kuntharanababan162@gmail.com','aktif'),(504,'23.3411','89539958','Harimurti Mayasari','L','XI','Teknik Komputer dan Jaringan','2024/2025','Cirebon','2008-04-26','Jl. Meruya Selatan, Kembangan','Padmi','Xanana','84851498100','harimurtimayasari309@gmail.com','aktif'),(505,'23.3412','60388085','Dipa Prasasta','P','XI','Teknik Komputer dan Jaringan','2024/2025','Malang','2008-09-13','Jl. Peta Selatan, Kalideres','Betania','Harjaya','83436625146','dipaprasasta282@gmail.com','aktif'),(506,'23.3413','61287338','Azalea Nababan','L','XI','Teknik Komputer dan Jaringan','2024/2025','Malang','2008-04-26','Jl. Peta Selatan, Kalideres','Uchita','Bakti','86087622025','azaleanababan408@gmail.com','aktif'),(507,'23.3414','49649704','Cecep Wacana','P','XI','Teknik Komputer dan Jaringan','2024/2025','Solo','2007-08-24','Jl. Peta Selatan, Kalideres','Endah','Artawan','80545058379','cecepwacana100@gmail.com','aktif'),(508,'23.3415','35394529','Tantri Utama','L','XI','Teknik Komputer dan Jaringan','2024/2025','Surabaya','2008-08-02','Jl. Meruya Selatan, Kembangan','Alika','Wira','82683938549','tantriutama972@gmail.com','aktif'),(509,'23.3416','50577651','Jayadi Usamah','P','XI','Teknik Komputer dan Jaringan','2024/2025','Surabaya','2007-12-17','Jl. Kembangan Raya, Kembangan','Nadia','Garang','87383609566','jayadiusamah583@gmail.com','aktif'),(510,'23.3417','10639690','Jaga Nashiruddin','L','XI','Teknik Komputer dan Jaringan','2024/2025','Bandung','2007-05-30','Jl. Raya Semanan, Kalideres','Hafshah','Garang','84942429932','jaganashiruddin538@gmail.com','aktif'),(511,'23.3418','72994563','Gada Suwarno','L','XI','Teknik Komputer dan Jaringan','2024/2025','Cirebon','2008-04-23','Jl. Kembangan Raya, Kembangan','Irma','Banawa','88398467214','gadasuwarno883@gmail.com','aktif'),(512,'23.3419','29167185','Lembah Pranowo','L','XI','Teknik Komputer dan Jaringan','2024/2025','Purwokerto','2009-04-11','Jl. Daan Mogot, Cengkareng','Dinda','Rafid','85043786796','lembahpranowo862@gmail.com','aktif'),(513,'23.342','77752756','Langgeng Wahyudin','L','XI','Teknik Komputer dan Jaringan','2024/2025','Cirebon','2008-11-17','Jl. Raya Semanan, Kalideres','Citra','Catur','80918392734','langgengwahyudin876@gmail.com','aktif'),(514,'23.3421','39944416','Pangestu Prasetya','L','XI','Teknik Komputer dan Jaringan','2024/2025','Cirebon','2007-11-10','Jl. Daan Mogot, Cengkareng','Ciaobella','Daliman','82375220751','pangestuprasetya325@gmail.com','aktif'),(515,'23.3422','28004043','Icha Handayani','P','XI','Teknik Komputer dan Jaringan','2024/2025','Semarang','2008-05-29','Jl. Raya Semanan, Kalideres','Tira','Irnanto','80098664428','ichahandayani314@gmail.com','aktif'),(516,'23.3423','75132564','Rahayu Hardiansyah','L','XI','Teknik Komputer dan Jaringan','2024/2025','Yogyakarta','2008-01-26','Jl. Daan Mogot, Cengkareng','Ilsa','Lega','85997385213','rahayuhardiansyah272@gmail.com','aktif'),(517,'23.3424','13497453','Viman Nugroho','P','XI','Teknik Komputer dan Jaringan','2024/2025','Yogyakarta','2008-10-23','Jl. Kamal Raya, Cengkareng','Agnes','Nasab','83221046270','vimannugroho446@gmail.com','aktif'),(518,'23.3425','65129249','Irma Mustofa','P','XI','Teknik Komputer dan Jaringan','2024/2025','Tegal','2009-02-15','Jl. Daan Mogot, Cengkareng','Pia','Karman','89549980390','irmamustofa961@gmail.com','aktif'),(519,'23.3426','77827213','Rika Anggriawan','P','XI','Teknik Komputer dan Jaringan','2024/2025','Bandung','2009-01-07','Jl. Kembangan Raya, Kembangan','Ajeng','Darmanto','87609033173','rikaanggriawan717@gmail.com','aktif'),(520,'23.3427','85927585','Kawaya Handayani','P','XI','Teknik Komputer dan Jaringan','2024/2025','Solo','2007-06-05','Jl. Kamal Raya, Cengkareng','Siti','Sabri','84809529534','kawayahandayani900@gmail.com','aktif'),(521,'23.3428','85626364','Lanang Saptono','P','XI','Teknik Komputer dan Jaringan','2024/2025','Surabaya','2009-01-28','Jl. Raya Semanan, Kalideres','Salwa','Langgeng','88545407584','lanangsaptono256@gmail.com','aktif'),(522,'23.3429','97915562','Drajat Rajata','P','XI','Teknik Komputer dan Jaringan','2024/2025','Yogyakarta','2007-12-22','Jl. Kembangan Raya, Kembangan','Zalindra','Langgeng','83160772357','drajatrajata254@gmail.com','aktif'),(523,'23.343','62614445','Hasna Melani','P','XI','Teknik Komputer dan Jaringan','2024/2025','Cirebon','2008-01-04','Jl. Meruya Selatan, Kembangan','Kasiyah','Prayogo','88703935104','hasnamelani919@gmail.com','aktif'),(524,'23.3431','54102738','Karma Wibowo','L','XI','Teknik Komputer dan Jaringan','2024/2025','Blitar','2007-11-06','Jl. Kembangan Raya, Kembangan','Gilda','Setya','83110008452','karmawibowo728@gmail.com','aktif'),(525,'23.3432','21773114','Luwes Marbun','L','XI','Bisnis Daring dan Pemasaran','2024/2025','Surabaya','2007-05-07','Jl. Kembangan Raya, Kembangan','Silvia','Cayadi','89841214334','luwesmarbun792@gmail.com','aktif'),(526,'23.3433','54608471','Ega Firgantoro','L','XI','Bisnis Daring dan Pemasaran','2024/2025','Blitar','2008-03-26','Jl. Kembangan Raya, Kembangan','Diana','Capa','85460460423','egafirgantoro788@gmail.com','aktif'),(527,'23.3434','58591197','Maman Nuraini','L','XI','Bisnis Daring dan Pemasaran','2024/2025','Tegal','2008-03-05','Jl. Kembangan Raya, Kembangan','Hesti','Prasetya','83320024771','mamannuraini446@gmail.com','aktif'),(528,'23.3435','83875881','Ade Saptono','L','XI','Bisnis Daring dan Pemasaran','2024/2025','Bandung','2008-05-25','Jl. Daan Mogot, Cengkareng','Gilda','Viktor','85124027293','adesaptono605@gmail.com','aktif'),(529,'23.3436','95154629','Irfan Suryatmi','P','XI','Bisnis Daring dan Pemasaran','2024/2025','Tegal','2008-02-02','Jl. Peta Selatan, Kalideres','Puspa','Cahyanto','83629710403','irfansuryatmi634@gmail.com','aktif'),(530,'23.3437','32361395','Bagas Sitompul','P','XI','Bisnis Daring dan Pemasaran','2024/2025','Semarang','2007-06-08','Jl. Meruya Selatan, Kembangan','Ika','Banawa','83403610499','bagassitompul954@gmail.com','aktif'),(531,'23.3438','40416272','Umar Wahyudin','L','XI','Bisnis Daring dan Pemasaran','2024/2025','Bandung','2008-01-09','Jl. Meruya Selatan, Kembangan','Zahra','Karta','82668546975','umarwahyudin979@gmail.com','aktif'),(532,'23.3439','2184563','Cengkir Anggraini','L','XI','Bisnis Daring dan Pemasaran','2024/2025','Bandung','2008-04-25','Jl. Peta Selatan, Kalideres','Karen','Ajimat','85513400968','cengkiranggraini675@gmail.com','aktif'),(533,'23.344','99574926','Humaira Uyainah','L','XI','Bisnis Daring dan Pemasaran','2024/2025','Solo','2007-12-01','Jl. Meruya Selatan, Kembangan','Ida','Gandi','89455163820','humairauyainah416@gmail.com','aktif'),(534,'23.3441','15592754','Vera Sihombing','L','XI','Bisnis Daring dan Pemasaran','2024/2025','Tegal','2007-10-21','Jl. Peta Selatan, Kalideres','Uli','Soleh','82693032380','verasihombing697@gmail.com','aktif'),(535,'23.3442','36137204','Tasnim Palastri','P','XI','Bisnis Daring dan Pemasaran','2024/2025','Yogyakarta','2008-08-26','Jl. Peta Selatan, Kalideres','Gina','Hardana','89223818160','tasnimpalastri882@gmail.com','aktif'),(536,'23.3443','81846491','Dimas Winarno','P','XI','Bisnis Daring dan Pemasaran','2024/2025','Purwokerto','2007-07-10','Jl. Kembangan Raya, Kembangan','Vivi','Reza','85294414411','dimaswinarno622@gmail.com','aktif'),(537,'23.3444','75746690','Among Adriansyah','L','XI','Bisnis Daring dan Pemasaran','2024/2025','Surabaya','2007-08-05','Jl. Meruya Selatan, Kembangan','Padmi','Ajiman','80101280708','amongadriansyah909@gmail.com','aktif'),(538,'23.3445','35219877','Agus Nasyidah','P','XI','Bisnis Daring dan Pemasaran','2024/2025','Semarang','2008-06-28','Jl. Raya Semanan, Kalideres','Genta','Harjaya','81445398279','agusnasyidah255@gmail.com','aktif'),(539,'23.3446','13592417','Alika Suryono','P','XI','Bisnis Daring dan Pemasaran','2024/2025','Blitar','2008-04-28','Jl. Kamal Raya, Cengkareng','Halima','Cawisadi','88805448060','alikasuryono707@gmail.com','aktif'),(540,'23.3447','92176235','Sidiq Agustina','L','XI','Bisnis Daring dan Pemasaran','2024/2025','Blitar','2008-03-16','Jl. Kamal Raya, Cengkareng','Siti','Hasan','89554457893','sidiqagustina808@gmail.com','aktif'),(541,'23.3448','44725205','Ega Natsir','L','XI','Bisnis Daring dan Pemasaran','2024/2025','Semarang','2007-09-21','Jl. Kembangan Raya, Kembangan','Diana','Jail','87605299196','eganatsir300@gmail.com','aktif'),(542,'23.3449','74517129','Oliva Sinaga','P','XI','Bisnis Daring dan Pemasaran','2024/2025','Tegal','2007-12-13','Jl. Kembangan Raya, Kembangan','Cindy','Hendri','81829774386','olivasinaga270@gmail.com','aktif'),(543,'23.345','6660666','Maryadi Santoso','P','XI','Bisnis Daring dan Pemasaran','2024/2025','Tegal','2009-02-10','Jl. Daan Mogot, Cengkareng','Siska','Daru','83732999238','maryadisantoso490@gmail.com','aktif'),(544,'23.3451','77399777','Yusuf Firmansyah','L','XI','Bisnis Daring dan Pemasaran','2024/2025','Yogyakarta','2008-07-21','Jl. Meruya Selatan, Kembangan','Hafshah','Halim','89364322749','yusuffirmansyah176@gmail.com','aktif'),(545,'23.3452','27698302','Asmuni Waluyo','P','XI','Bisnis Daring dan Pemasaran','2024/2025','Bandung','2007-05-08','Jl. Meruya Selatan, Kembangan','Novi','Cecep','85549681180','asmuniwaluyo584@gmail.com','aktif'),(546,'23.3453','86645838','Ade Lestari','L','XI','Bisnis Daring dan Pemasaran','2024/2025','Malang','2009-01-10','Jl. Raya Semanan, Kalideres','Syahrini','Ajiman','86815404857','adelestari557@gmail.com','non-aktif'),(547,'23.3454','26725828','Tantri Simbolon','L','XI','Bisnis Daring dan Pemasaran','2024/2025','Semarang','2009-03-30','Jl. Kamal Raya, Cengkareng','Putri','Bakiadi','81853397549','tantrisimbolon433@gmail.com','aktif'),(548,'23.3455','37420524','Edi Widodo','P','XI','Bisnis Daring dan Pemasaran','2024/2025','Malang','2008-11-03','Jl. Peta Selatan, Kalideres','Cici','Jais','81325127608','ediwidodo908@gmail.com','aktif'),(549,'23.3456','31911835','Puti Rahayu','L','XI','Bisnis Daring dan Pemasaran','2024/2025','Malang','2008-10-03','Jl. Daan Mogot, Cengkareng','Tiara','Darsirah','86996508807','putirahayu185@gmail.com','aktif'),(550,'23.3457','37585986','Narji Waluyo','L','XI','Bisnis Daring dan Pemasaran','2024/2025','Cirebon','2008-08-20','Jl. Kamal Raya, Cengkareng','Puji','Ganep','82379475232','narjiwaluyo527@gmail.com','aktif'),(551,'23.3458','56289891','Erik Palastri','L','XI','Bisnis Daring dan Pemasaran','2024/2025','Blitar','2008-04-06','Jl. Peta Selatan, Kalideres','Ira','Daliono','88532582753','erikpalastri762@gmail.com','aktif'),(552,'23.3459','94578549','Hartaka Prasetya','L','XI','Bisnis Daring dan Pemasaran','2024/2025','Semarang','2008-08-26','Jl. Kamal Raya, Cengkareng','Kania','Dipa','84422783293','hartakaprasetya260@gmail.com','aktif'),(553,'23.346','38383757','Gawati Anggriawan','P','XI','Bisnis Daring dan Pemasaran','2024/2025','Semarang','2008-09-21','Jl. Peta Selatan, Kalideres','Kezia','Damu','89399319713','gawatianggriawan834@gmail.com','aktif'),(554,'23.3461','75971849','Narji Farida','L','XI','Bisnis Daring dan Pemasaran','2024/2025','Cirebon','2009-01-13','Jl. Kamal Raya, Cengkareng','Dinda','Bagya','83610576166','narjifarida729@gmail.com','aktif'),(555,'23.3462','66323406','Nova Firmansyah','P','XI','Bisnis Daring dan Pemasaran','2024/2025','Semarang','2007-10-23','Jl. Kamal Raya, Cengkareng','Ciaobella','Cawuk','85171119223','novafirmansyah469@gmail.com','aktif'),(556,'23.3463','52618257','Kamila Saputra','P','XI','Bisnis Daring dan Pemasaran','2024/2025','Solo','2007-08-10','Jl. Raya Semanan, Kalideres','Wirda','Mustika','81698934214','kamilasaputra247@gmail.com','aktif'),(557,'23.3464','81611364','Aris Pradana','P','XI','Bisnis Daring dan Pemasaran','2024/2025','Tegal','2008-10-05','Jl. Raya Semanan, Kalideres','Kania','Bakijan','80657996711','arispradana630@gmail.com','aktif'),(558,'22.3267','33795633','Bambang Wulandari','L','XII','Akuntansi Keuangan dan Lembaga','2024/2025','Semarang','2006-05-15','Jl. Meruya Selatan, Kembangan','Nurul','Taswir','89683595546','bambangwulandari844@gmail.com','aktif'),(559,'22.3268','90160853','Daru Mulyani','P','XII','Akuntansi Keuangan dan Lembaga','2024/2025','Purwokerto','2006-12-20','Jl. Meruya Selatan, Kembangan','Alika','Irsad','88252493693','darumulyani756@gmail.com','aktif'),(560,'22.3269','24442938','Edi Salahudin','L','XII','Akuntansi Keuangan dan Lembaga','2024/2025','Solo','2008-04-13','Jl. Raya Semanan, Kalideres','Bella','Jaya','80955640237','edisalahudin296@gmail.com','aktif'),(561,'22.327','84472384','Pangestu Permata','L','XII','Akuntansi Keuangan dan Lembaga','2024/2025','Bandung','2007-08-09','Jl. Raya Semanan, Kalideres','Ina','Sidiq','85611933965','pangestupermata452@gmail.com','aktif'),(562,'22.3271','55298368','Edward Kurniawan','L','XII','Akuntansi Keuangan dan Lembaga','2024/2025','Bandung','2006-07-11','Jl. Meruya Selatan, Kembangan','Tantri','Yono','88120884286','edwardkurniawan898@gmail.com','aktif'),(563,'22.3272','7529458','Uchita Nuraini','P','XII','Akuntansi Keuangan dan Lembaga','2024/2025','Yogyakarta','2008-04-24','Jl. Kamal Raya, Cengkareng','Ira','Wadi','82543672870','uchitanuraini858@gmail.com','aktif'),(564,'22.3273','3440710','Catur Wahyudin','L','XII','Akuntansi Keuangan dan Lembaga','2024/2025','Malang','2006-12-20','Jl. Kamal Raya, Cengkareng','Anastasia','Hadi','82350518767','caturwahyudin759@gmail.com','aktif'),(565,'22.3274','24801969','Leo Maulana','L','XII','Akuntansi Keuangan dan Lembaga','2024/2025','Surabaya','2007-12-08','Jl. Meruya Selatan, Kembangan','Maimunah','Salman','87608517141','leomaulana606@gmail.com','aktif'),(566,'22.3275','37315084','Luhung Waskita','L','XII','Akuntansi Keuangan dan Lembaga','2024/2025','Semarang','2006-12-17','Jl. Peta Selatan, Kalideres','Michelle','Jagapati','83942841702','luhungwaskita219@gmail.com','aktif'),(567,'22.3276','87298937','Calista Rahimah','P','XII','Akuntansi Keuangan dan Lembaga','2024/2025','Malang','2007-09-15','Jl. Meruya Selatan, Kembangan','Hamima','Jayadi','86398595027','calistarahimah191@gmail.com','aktif'),(568,'22.3277','17326219','Ibrahim Wijayanti','P','XII','Akuntansi Keuangan dan Lembaga','2024/2025','Tegal','2008-01-02','Jl. Raya Semanan, Kalideres','Yani','Liman','81142356141','ibrahimwijayanti152@gmail.com','aktif'),(569,'22.3278','76405119','Bakianto Nababan','P','XII','Akuntansi Keuangan dan Lembaga','2024/2025','Solo','2007-12-11','Jl. Meruya Selatan, Kembangan','Zamira','Adinata','85283557869','bakiantonababan665@gmail.com','aktif'),(570,'22.3279','11088857','Dacin Handayani','P','XII','Akuntansi Keuangan dan Lembaga','2024/2025','Bandung','2007-05-09','Jl. Kembangan Raya, Kembangan','Paulin','Kuncara','80633590895','dacinhandayani819@gmail.com','aktif'),(571,'22.328','23108428','Wani Suwarno','P','XII','Akuntansi Keuangan dan Lembaga','2024/2025','Malang','2007-05-29','Jl. Daan Mogot, Cengkareng','Jessica','Capa','89218079514','wanisuwarno372@gmail.com','aktif'),(572,'22.3281','42955009','Hasna Pangestu','L','XII','Akuntansi Keuangan dan Lembaga','2024/2025','Semarang','2006-11-27','Jl. Meruya Selatan, Kembangan','Titi','Cemplunk','87800680266','hasnapangestu685@gmail.com','aktif'),(573,'22.3282','75366703','Endah Anggraini','P','XII','Akuntansi Keuangan dan Lembaga','2024/2025','Surabaya','2006-11-10','Jl. Meruya Selatan, Kembangan','Rina','Waluyo','81058076465','endahanggraini119@gmail.com','aktif'),(574,'22.3283','87653614','Amalia Suwarno','P','XII','Akuntansi Keuangan dan Lembaga','2024/2025','Blitar','2006-06-24','Jl. Meruya Selatan, Kembangan','Kayla','Adinata','89139185482','amaliasuwarno127@gmail.com','aktif'),(575,'22.3284','12610073','Laswi Najmudin','P','XII','Akuntansi Keuangan dan Lembaga','2024/2025','Yogyakarta','2008-03-27','Jl. Peta Selatan, Kalideres','Alika','Asmianto','87924801070','laswinajmudin509@gmail.com','aktif'),(576,'22.3285','37014272','Dimas Mahendra','L','XII','Akuntansi Keuangan dan Lembaga','2024/2025','Yogyakarta','2006-09-07','Jl. Daan Mogot, Cengkareng','Rina','Edison','89993433366','dimasmahendra368@gmail.com','aktif'),(577,'22.3286','85551339','Labuh Permadi','P','XII','Akuntansi Keuangan dan Lembaga','2024/2025','Surabaya','2006-06-08','Jl. Peta Selatan, Kalideres','Jessica','Heru','83786671737','labuhpermadi730@gmail.com','aktif'),(578,'22.3287','97086586','Wage Damanik','P','XII','Akuntansi Keuangan dan Lembaga','2024/2025','Yogyakarta','2008-05-04','Jl. Daan Mogot, Cengkareng','Putri','Purwa','81054533034','wagedamanik923@gmail.com','aktif'),(579,'22.3288','54805085','Candra Halim','P','XII','Akuntansi Keuangan dan Lembaga','2024/2025','Semarang','2007-06-30','Jl. Kembangan Raya, Kembangan','Yani','Cawisadi','81023546378','candrahalim315@gmail.com','aktif'),(580,'22.3289','70773099','Asmadi Suwarno','L','XII','Akuntansi Keuangan dan Lembaga','2024/2025','Yogyakarta','2006-06-03','Jl. Raya Semanan, Kalideres','Syahrini','Tirta','87595246745','asmadisuwarno516@gmail.com','aktif'),(581,'22.329','4362902','Bahuraksa Haryanti','L','XII','Akuntansi Keuangan dan Lembaga','2024/2025','Malang','2008-04-07','Jl. Meruya Selatan, Kembangan','Jane','Jono','85366686799','bahuraksaharyanti648@gmail.com','aktif'),(582,'22.3291','22235968','Yunita Uwais','L','XII','Akuntansi Keuangan dan Lembaga','2024/2025','Malang','2006-10-13','Jl. Peta Selatan, Kalideres','Ade','Mahdi','80030360070','yunitauwais668@gmail.com','aktif'),(583,'22.3292','69776471','Harja Thamrin','L','XII','Akuntansi Keuangan dan Lembaga','2024/2025','Malang','2007-06-04','Jl. Raya Semanan, Kalideres','Wirda','Jefri','80123662596','harjathamrin710@gmail.com','aktif'),(584,'22.3293','53429468','Kasim Natsir','L','XII','Akuntansi Keuangan dan Lembaga','2024/2025','Cirebon','2007-10-22','Jl. Meruya Selatan, Kembangan','Salwa','Arsipatra','87351094735','kasimnatsir478@gmail.com','aktif'),(585,'22.3294','64663890','Zamira Pudjiastuti','L','XII','Akuntansi Keuangan dan Lembaga','2024/2025','Tegal','2006-09-24','Jl. Kembangan Raya, Kembangan','Ami','Lembah','85263088902','zamirapudjiastuti817@gmail.com','aktif'),(586,'22.3295','58613931','Aurora Saputra','P','XII','Akuntansi Keuangan dan Lembaga','2024/2025','Purwokerto','2008-03-12','Jl. Kamal Raya, Cengkareng','Nadia','Hardana','83687193667','aurorasaputra277@gmail.com','aktif'),(587,'22.3296','36465792','Prayoga Ramadan','P','XII','Akuntansi Keuangan dan Lembaga','2024/2025','Bandung','2008-01-09','Jl. Meruya Selatan, Kembangan','Azalea','Bakiman','80925574780','prayogaramadan752@gmail.com','aktif'),(588,'22.3297','66245178','Adhiarja Laksita','P','XII','Akuntansi Keuangan dan Lembaga','2024/2025','Tegal','2007-08-17','Jl. Kamal Raya, Cengkareng','Ifa','Edi','86653055079','adhiarjalaksita582@gmail.com','aktif'),(589,'22.3298','18654933','Halima Gunarto','L','XII','Akuntansi Keuangan dan Lembaga','2024/2025','Yogyakarta','2007-07-19','Jl. Raya Semanan, Kalideres','Dinda','Lutfan','88753288259','halimagunarto980@gmail.com','aktif'),(590,'22.3299','96732909','Mumpuni Novitasari','P','XII','Akuntansi Keuangan dan Lembaga','2024/2025','Bandung','2007-04-11','Jl. Daan Mogot, Cengkareng','Gina','Labuh','89168728860','mumpuninovitasari501@gmail.com','aktif'),(591,'22.33','88926434','Luwes Uyainah','L','XII','Teknik Komputer dan Jaringan','2024/2025','Surabaya','2007-07-24','Jl. Kembangan Raya, Kembangan','Nabila','Arsipatra','87629590107','luwesuyainah396@gmail.com','aktif'),(592,'22.3301','79354732','Labuh Wahyuni','L','XII','Teknik Komputer dan Jaringan','2024/2025','Blitar','2007-12-27','Jl. Kembangan Raya, Kembangan','Nabila','Lukman','85954299001','labuhwahyuni758@gmail.com','aktif'),(593,'22.3302','92319702','Yani Maheswara','L','XII','Teknik Komputer dan Jaringan','2024/2025','Malang','2007-10-06','Jl. Peta Selatan, Kalideres','Gina','Dariati','89907251138','yanimaheswara185@gmail.com','aktif'),(594,'22.3303','52769990','Cinthia Mustofa','L','XII','Teknik Komputer dan Jaringan','2024/2025','Malang','2008-03-25','Jl. Peta Selatan, Kalideres','Maida','Lulut','82540867413','cinthiamustofa111@gmail.com','aktif'),(595,'22.3304','95869181','Harimurti Nurdiyanti','P','XII','Teknik Komputer dan Jaringan','2024/2025','Tegal','2006-09-14','Jl. Kamal Raya, Cengkareng','Puspa','Cagak','83282042578','harimurtinurdiyanti303@gmail.com','aktif'),(596,'22.3305','11244867','Ibrahim Pranowo','P','XII','Teknik Komputer dan Jaringan','2024/2025','Solo','2006-12-25','Jl. Raya Semanan, Kalideres','Yani','Kuncara','81137452248','ibrahimpranowo592@gmail.com','aktif'),(597,'22.3306','88288586','Pranawa Ramadan','P','XII','Teknik Komputer dan Jaringan','2024/2025','Tegal','2007-10-03','Jl. Kembangan Raya, Kembangan','Ilsa','Bakda','86021377192','pranawaramadan966@gmail.com','aktif'),(598,'22.3307','18173639','Viktor Purnawati','P','XII','Teknik Komputer dan Jaringan','2024/2025','Malang','2006-08-03','Jl. Daan Mogot, Cengkareng','Mala','Unggul','83930544716','viktorpurnawati153@gmail.com','aktif'),(599,'22.3308','30063412','Zamira Wacana','L','XII','Teknik Komputer dan Jaringan','2024/2025','Blitar','2006-10-10','Jl. Kamal Raya, Cengkareng','Nadia','Jasmani','84831982587','zamirawacana185@gmail.com','aktif'),(600,'22.3309','47393776','Heryanto Usada','P','XII','Teknik Komputer dan Jaringan','2024/2025','Tegal','2007-11-08','Jl. Daan Mogot, Cengkareng','Nilam','Yoga','88113244192','heryantousada497@gmail.com','aktif'),(601,'22.331','61393755','Pangestu Iswahyudi','P','XII','Teknik Komputer dan Jaringan','2024/2025','Bandung','2006-11-24','Jl. Kembangan Raya, Kembangan','Ajeng','Putu','87074860905','pangestuiswahyudi360@gmail.com','aktif'),(602,'22.3311','95066566','Empluk Nuraini','P','XII','Teknik Komputer dan Jaringan','2024/2025','Tegal','2008-02-16','Jl. Raya Semanan, Kalideres','Titi','Mustofa','85499166754','empluknuraini637@gmail.com','aktif'),(603,'22.3312','23358551','Opung Siregar','L','XII','Teknik Komputer dan Jaringan','2024/2025','Cirebon','2007-02-26','Jl. Kembangan Raya, Kembangan','Aurora','Kalim','87848032573','opungsiregar428@gmail.com','aktif'),(604,'22.3313','36935789','Harjaya Mulyani','L','XII','Teknik Komputer dan Jaringan','2024/2025','Yogyakarta','2007-05-05','Jl. Meruya Selatan, Kembangan','Bella','Nasrullah','85455823752','harjayamulyani711@gmail.com','aktif'),(605,'22.3314','19932253','Lulut Kuswoyo','P','XII','Teknik Komputer dan Jaringan','2024/2025','Tegal','2007-12-27','Jl. Daan Mogot, Cengkareng','Kamila','Rahmat','86059473477','lulutkuswoyo357@gmail.com','aktif'),(606,'22.3315','34578682','Gandewa Prabowo','P','XII','Teknik Komputer dan Jaringan','2024/2025','Yogyakarta','2007-12-11','Jl. Kamal Raya, Cengkareng','Tami','Kunthara','83506799940','gandewaprabowo464@gmail.com','aktif'),(607,'22.3316','17016887','Raditya Latupono','L','XII','Teknik Komputer dan Jaringan','2024/2025','Purwokerto','2007-01-23','Jl. Raya Semanan, Kalideres','Padmi','Nrima','84777764311','radityalatupono524@gmail.com','aktif'),(608,'22.3317','36835042','Darman Hastuti','P','XII','Teknik Komputer dan Jaringan','2024/2025','Purwokerto','2007-10-15','Jl. Peta Selatan, Kalideres','Julia','Leo','85476984443','darmanhastuti494@gmail.com','aktif'),(609,'22.3318','5187032','Karna Utama','L','XII','Teknik Komputer dan Jaringan','2024/2025','Solo','2006-11-01','Jl. Daan Mogot, Cengkareng','Rachel','Vino','88502795102','karnautama536@gmail.com','aktif'),(610,'22.3319','99022104','Kambali Jailani','L','XII','Teknik Komputer dan Jaringan','2024/2025','Cirebon','2006-12-21','Jl. Kamal Raya, Cengkareng','Humaira','Hendra','84811782476','kambalijailani436@gmail.com','aktif'),(611,'22.332','38552662','Latika Simanjuntak','P','XII','Teknik Komputer dan Jaringan','2024/2025','Yogyakarta','2007-07-28','Jl. Raya Semanan, Kalideres','Zelaya','Olga','89463054119','latikasimanjuntak914@gmail.com','aktif'),(612,'22.3321','96073033','Ayu Najmudin','P','XII','Teknik Komputer dan Jaringan','2024/2025','Cirebon','2007-04-29','Jl. Daan Mogot, Cengkareng','Novi','Hari','89380700616','ayunajmudin715@gmail.com','aktif'),(613,'22.3322','96362297','Jaya Maheswara','P','XII','Teknik Komputer dan Jaringan','2024/2025','Malang','2008-05-04','Jl. Raya Semanan, Kalideres','Anastasia','Gangsa','83075564453','jayamaheswara859@gmail.com','aktif'),(614,'22.3323','97850838','Agnes Thamrin','P','XII','Teknik Komputer dan Jaringan','2024/2025','Malang','2007-07-26','Jl. Kamal Raya, Cengkareng','Tantri','Nardi','84434183797','agnesthamrin791@gmail.com','aktif'),(615,'22.3324','35776036','Bagiya Lestari','P','XII','Teknik Komputer dan Jaringan','2024/2025','Surabaya','2006-10-23','Jl. Raya Semanan, Kalideres','Ella','Kamal','87243071683','bagiyalestari518@gmail.com','aktif'),(616,'22.3325','94533519','Kasiran Situmorang','P','XII','Teknik Komputer dan Jaringan','2024/2025','Yogyakarta','2008-05-03','Jl. Kembangan Raya, Kembangan','Zelda','Karja','86752646565','kasiransitumorang307@gmail.com','aktif'),(617,'22.3326','48195189','Indah Saputra','L','XII','Teknik Komputer dan Jaringan','2024/2025','Yogyakarta','2008-02-20','Jl. Kamal Raya, Cengkareng','Sadina','Garda','81028100686','indahsaputra535@gmail.com','aktif'),(618,'22.3327','26354013','Lili Gunarto','P','XII','Teknik Komputer dan Jaringan','2024/2025','Cirebon','2006-12-22','Jl. Daan Mogot, Cengkareng','Diana','Mursita','86412623400','liligunarto614@gmail.com','aktif'),(619,'22.3328','25313290','Cakrajiya Suwarno','P','XII','Teknik Komputer dan Jaringan','2024/2025','Bandung','2006-10-25','Jl. Peta Selatan, Kalideres','Vanya','Legawa','89838703056','cakrajiyasuwarno293@gmail.com','aktif'),(620,'22.3329','30604223','Empluk Maulana','P','XII','Teknik Komputer dan Jaringan','2024/2025','Cirebon','2007-04-21','Jl. Kembangan Raya, Kembangan','Ella','Warta','81734485735','emplukmaulana731@gmail.com','aktif'),(621,'22.333','21937892','Vivi Novitasari','L','XII','Teknik Komputer dan Jaringan','2024/2025','Solo','2007-02-16','Jl. Kembangan Raya, Kembangan','Elisa','Yoga','89254128297','vivinovitasari212@gmail.com','aktif'),(622,'22.3331','84817451','Garda Farida','L','XII','Teknik Komputer dan Jaringan','2024/2025','Blitar','2006-12-02','Jl. Daan Mogot, Cengkareng','Qori','Sidiq','80205184189','gardafarida312@gmail.com','aktif'),(623,'22.3332','85453291','Gada Kuswandari','L','XII','Teknik Komputer dan Jaringan','2024/2025','Malang','2007-01-09','Jl. Raya Semanan, Kalideres','Cinta','Irsad','82227437190','gadakuswandari953@gmail.com','aktif'),(624,'22.3333','16198856','Reksa Prakasa','P','XII','Bisnis Daring dan Pemasaran','2024/2025','Malang','2007-10-11','Jl. Meruya Selatan, Kembangan','Ayu','Prima','87285924023','reksaprakasa465@gmail.com','aktif'),(625,'22.3334','52440133','Ajimat Usada','P','XII','Bisnis Daring dan Pemasaran','2024/2025','Surabaya','2007-06-11','Jl. Peta Selatan, Kalideres','Yani','Ganda','89658242264','ajimatusada181@gmail.com','aktif'),(626,'22.3335','35117020','Lantar Tampubolon','L','XII','Bisnis Daring dan Pemasaran','2024/2025','Malang','2007-02-16','Jl. Kembangan Raya, Kembangan','Siti','Asmianto','80946342142','lantartampubolon824@gmail.com','aktif'),(627,'22.3336','25523241','Eluh Usada','P','XII','Bisnis Daring dan Pemasaran','2024/2025','Surabaya','2007-08-31','Jl. Kamal Raya, Cengkareng','Paulin','Radit','85190753571','eluhusada557@gmail.com','aktif'),(628,'22.3337','72516403','Imam Kusmawati','L','XII','Bisnis Daring dan Pemasaran','2024/2025','Surabaya','2007-06-25','Jl. Kamal Raya, Cengkareng','Icha','Himawan','84878066980','imamkusmawati213@gmail.com','aktif'),(629,'22.3338','32420276','Dadap Pradipta','P','XII','Bisnis Daring dan Pemasaran','2024/2025','Bandung','2007-03-15','Jl. Raya Semanan, Kalideres','Ilsa','Hardi','80081084654','dadappradipta495@gmail.com','aktif'),(630,'22.3339','87076744','Kawaya Wibisono','P','XII','Bisnis Daring dan Pemasaran','2024/2025','Tegal','2007-04-29','Jl. Meruya Selatan, Kembangan','Kartika','Balidin','88281578021','kawayawibisono207@gmail.com','aktif'),(631,'22.334','28145713','Nabila Budiman','L','XII','Bisnis Daring dan Pemasaran','2024/2025','Tegal','2006-11-18','Jl. Meruya Selatan, Kembangan','Maimunah','Gara','82844170726','nabilabudiman210@gmail.com','aktif'),(632,'22.3341','37270451','Wisnu Sitompul','P','XII','Bisnis Daring dan Pemasaran','2024/2025','Blitar','2006-09-17','Jl. Peta Selatan, Kalideres','Najwa','Nasim','86300621058','wisnusitompul802@gmail.com','aktif'),(633,'22.3342','95664632','Rahmi Rahayu','P','XII','Bisnis Daring dan Pemasaran','2024/2025','Yogyakarta','2006-12-27','Jl. Raya Semanan, Kalideres','Faizah','Darijan','85373585601','rahmirahayu925@gmail.com','aktif'),(634,'22.3343','3517942','Eka Farida','P','XII','Bisnis Daring dan Pemasaran','2024/2025','Tegal','2007-09-02','Jl. Kembangan Raya, Kembangan','Dian','Tasnim','88001946245','ekafarida804@gmail.com','aktif'),(635,'22.3344','25163190','Rahmi Marbun','P','XII','Bisnis Daring dan Pemasaran','2024/2025','Purwokerto','2007-11-27','Jl. Daan Mogot, Cengkareng','Indah','Harsaya','89626403757','rahmimarbun251@gmail.com','aktif'),(636,'22.3345','73224864','Dinda Situmorang','L','XII','Bisnis Daring dan Pemasaran','2024/2025','Semarang','2006-09-03','Jl. Kembangan Raya, Kembangan','Ciaobella','Harjaya','86135612856','dindasitumorang864@gmail.com','aktif'),(637,'22.3346','30487287','Caturangga Usamah','P','XII','Bisnis Daring dan Pemasaran','2024/2025','Tegal','2006-09-13','Jl. Meruya Selatan, Kembangan','Maria','Karna','88002627794','caturanggausamah631@gmail.com','aktif'),(638,'22.3347','95979886','Laswi Damanik','L','XII','Bisnis Daring dan Pemasaran','2024/2025','Malang','2006-10-04','Jl. Raya Semanan, Kalideres','Lili','Bahuwirya','86684892066','laswidamanik755@gmail.com','aktif'),(639,'22.3348','80117237','Balijan Mustofa','L','XII','Bisnis Daring dan Pemasaran','2024/2025','Blitar','2008-02-06','Jl. Peta Selatan, Kalideres','Vivi','Salman','80866736835','balijanmustofa282@gmail.com','aktif'),(640,'22.3349','85848747','Wasis Maryati','L','XII','Bisnis Daring dan Pemasaran','2024/2025','Malang','2007-07-01','Jl. Kembangan Raya, Kembangan','Jamalia','Jamal','81004692653','wasismaryati148@gmail.com','aktif'),(641,'22.335','31932508','Patricia Simbolon','P','XII','Bisnis Daring dan Pemasaran','2024/2025','Solo','2007-07-30','Jl. Raya Semanan, Kalideres','Shakila','Arsipatra','83939311975','patriciasimbolon928@gmail.com','aktif'),(642,'22.3351','7240039','Ika Rajasa','L','XII','Bisnis Daring dan Pemasaran','2024/2025','Semarang','2006-12-06','Jl. Daan Mogot, Cengkareng','Ira','Omar','84551948027','ikarajasa285@gmail.com','aktif'),(643,'22.3352','81901282','Tira Januar','P','XII','Bisnis Daring dan Pemasaran','2024/2025','Semarang','2006-12-24','Jl. Kembangan Raya, Kembangan','Rahmi','Lanjar','86090644996','tirajanuar322@gmail.com','aktif'),(644,'22.3353','21858655','Cindy Januar','P','XII','Bisnis Daring dan Pemasaran','2024/2025','Cirebon','2006-05-28','Jl. Meruya Selatan, Kembangan','Lintang','Candra','87210677378','cindyjanuar946@gmail.com','aktif'),(645,'22.3354','93266603','Bala Waluyo','L','XII','Bisnis Daring dan Pemasaran','2024/2025','Blitar','2007-09-10','Jl. Kembangan Raya, Kembangan','Winda','Galih','82561151436','balawaluyo890@gmail.com','aktif'),(646,'22.3355','67238732','Kamal Pratiwi','L','XII','Bisnis Daring dan Pemasaran','2024/2025','Blitar','2007-01-04','Jl. Meruya Selatan, Kembangan','Vicky','Wardaya','85912369093','kamalpratiwi380@gmail.com','aktif'),(647,'22.3356','19394371','Gatra Mayasari','P','XII','Bisnis Daring dan Pemasaran','2024/2025','Malang','2006-08-11','Jl. Meruya Selatan, Kembangan','Vanya','Adiarja','84954663824','gatramayasari918@gmail.com','aktif'),(648,'22.3357','6450877','Martana Pradana','P','XII','Bisnis Daring dan Pemasaran','2024/2025','Blitar','2007-08-23','Jl. Kamal Raya, Cengkareng','Ade','Damar','82766980609','martanapradana150@gmail.com','aktif'),(649,'22.3358','49587686','Febi Rahayu','P','XII','Bisnis Daring dan Pemasaran','2024/2025','Bandung','2008-02-28','Jl. Kamal Raya, Cengkareng','Laras','Galuh','87034417971','febirahayu322@gmail.com','aktif'),(650,'22.3359','48595623','Galuh Tampubolon','L','XII','Bisnis Daring dan Pemasaran','2024/2025','Purwokerto','2006-06-30','Jl. Kamal Raya, Cengkareng','Nabila','Galih','88462474587','galuhtampubolon827@gmail.com','aktif'),(651,'22.336','86130025','Purwa Rajasa','L','XII','Bisnis Daring dan Pemasaran','2024/2025','Purwokerto','2006-12-16','Jl. Kembangan Raya, Kembangan','Zulfa','Cemplunk','86518531020','purwarajasa913@gmail.com','aktif'),(652,'22.3361','82411662','Gading Setiawan','P','XII','Bisnis Daring dan Pemasaran','2024/2025','Purwokerto','2007-02-14','Jl. Raya Semanan, Kalideres','Amelia','Sabri','82928102116','gadingsetiawan445@gmail.com','aktif'),(653,'22.3362','10932572','Jarwa Prasetya','P','XII','Bisnis Daring dan Pemasaran','2024/2025','Cirebon','2006-09-16','Jl. Kembangan Raya, Kembangan','Anita','Bakijan','88651839676','jarwaprasetya184@gmail.com','aktif'),(654,'22.3363','55843518','Hilda Anggriawan','L','XII','Bisnis Daring dan Pemasaran','2024/2025','Cirebon','2006-05-09','Jl. Daan Mogot, Cengkareng','Eka','Garang','88078069583','hildaanggriawan465@gmail.com','aktif'),(655,'22.3364','7552608','Timbul Maheswara','L','XII','Bisnis Daring dan Pemasaran','2024/2025','Cirebon','2007-12-07','Jl. Daan Mogot, Cengkareng','Eva','Estiawan','83382599208','timbulmaheswara927@gmail.com','aktif'),(656,'22.3365','99518219','Mustofa Natsir','L','XII','Bisnis Daring dan Pemasaran','2024/2025','Semarang','2007-11-28','Jl. Meruya Selatan, Kembangan','Gilda','Wira','87411266132','mustofanatsir822@gmail.com','aktif');
/*!40000 ALTER TABLE `tb_siswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_administrasi_pemasukan`
--

DROP TABLE IF EXISTS `vw_administrasi_pemasukan`;
/*!50001 DROP VIEW IF EXISTS `vw_administrasi_pemasukan`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_administrasi_pemasukan` AS SELECT 
 1 AS `id_pem`,
 1 AS `id_siswa`,
 1 AS `id_jns`,
 1 AS `pembayaran`,
 1 AS `nom_pem`,
 1 AS `tgl_pem`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_lap_pem_kegiatan`
--

DROP TABLE IF EXISTS `vw_lap_pem_kegiatan`;
/*!50001 DROP VIEW IF EXISTS `vw_lap_pem_kegiatan`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_lap_pem_kegiatan` AS SELECT 
 1 AS `tanggal_pem`,
 1 AS `id_pem`,
 1 AS `kat_pem`,
 1 AS `jns_pem`,
 1 AS `nama_siswa`,
 1 AS `nom_pem`,
 1 AS `status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_lap_pem_spp`
--

DROP TABLE IF EXISTS `vw_lap_pem_spp`;
/*!50001 DROP VIEW IF EXISTS `vw_lap_pem_spp`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_lap_pem_spp` AS SELECT 
 1 AS `tanggal_pem`,
 1 AS `id_pem`,
 1 AS `kat_pem`,
 1 AS `jns_pem`,
 1 AS `nama_siswa`,
 1 AS `nom_pem`,
 1 AS `status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_lap_pem_ujian`
--

DROP TABLE IF EXISTS `vw_lap_pem_ujian`;
/*!50001 DROP VIEW IF EXISTS `vw_lap_pem_ujian`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_lap_pem_ujian` AS SELECT 
 1 AS `tanggal_pem`,
 1 AS `id_pem`,
 1 AS `kat_pem`,
 1 AS `jns_pem`,
 1 AS `nama_siswa`,
 1 AS `nom_pem`,
 1 AS `status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_pemasukan_list`
--

DROP TABLE IF EXISTS `vw_pemasukan_list`;
/*!50001 DROP VIEW IF EXISTS `vw_pemasukan_list`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_pemasukan_list` AS SELECT 
 1 AS `tanggal_pem`,
 1 AS `id_pem`,
 1 AS `kat_pem`,
 1 AS `jns_pem`,
 1 AS `nama_siswa`,
 1 AS `nom_pem`,
 1 AS `status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_sts_kegiatan_siswa`
--

DROP TABLE IF EXISTS `vw_sts_kegiatan_siswa`;
/*!50001 DROP VIEW IF EXISTS `vw_sts_kegiatan_siswa`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_sts_kegiatan_siswa` AS SELECT 
 1 AS `id`,
 1 AS `nis_siswa`,
 1 AS `nama_siswa`,
 1 AS `kls_siswa`,
 1 AS `prod_siswa`,
 1 AS `id_jns`,
 1 AS `jns_pem`,
 1 AS `jns_val`,
 1 AS `id_pem_keg`,
 1 AS `nom_pem`,
 1 AS `status_pem`,
 1 AS `tanggal_pem`,
 1 AS `id_adm`,
 1 AS `nama_adm`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_sts_spp_siswa`
--

DROP TABLE IF EXISTS `vw_sts_spp_siswa`;
/*!50001 DROP VIEW IF EXISTS `vw_sts_spp_siswa`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_sts_spp_siswa` AS SELECT 
 1 AS `id`,
 1 AS `nama_siswa`,
 1 AS `nis_siswa`,
 1 AS `kls_siswa`,
 1 AS `prod_siswa`,
 1 AS `id_jns`,
 1 AS `jns_pem`,
 1 AS `jns_val`,
 1 AS `id_pem_spp`,
 1 AS `status_spp`,
 1 AS `tanggal_pem`,
 1 AS `id_adm`,
 1 AS `nama_adm`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_sts_ujian_siswa`
--

DROP TABLE IF EXISTS `vw_sts_ujian_siswa`;
/*!50001 DROP VIEW IF EXISTS `vw_sts_ujian_siswa`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_sts_ujian_siswa` AS SELECT 
 1 AS `id`,
 1 AS `nis_siswa`,
 1 AS `nama_siswa`,
 1 AS `kls_siswa`,
 1 AS `prod_siswa`,
 1 AS `id_jns`,
 1 AS `jns_pem`,
 1 AS `jns_val`,
 1 AS `id_pem_ujian`,
 1 AS `nom_pem`,
 1 AS `status_pem`,
 1 AS `tanggal_pem`,
 1 AS `id_adm`,
 1 AS `nama_adm`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_administrasi_pemasukan`
--

/*!50001 DROP VIEW IF EXISTS `vw_administrasi_pemasukan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_administrasi_pemasukan` AS select `pem`.`id_pem_spp` AS `id_pem`,`pem`.`id_siswa` AS `id_siswa`,`pem`.`id_spp` AS `id_jns`,`spp`.`jns_pem` AS `pembayaran`,`spp`.`jns_val` AS `nom_pem`,`pem`.`tanggal_pem` AS `tgl_pem` from (`tb_pem_spp` `pem` left join `tb_jns_pem` `spp` on((`pem`.`id_spp` = `spp`.`id_jns`))) union all select `a`.`id_pem_ujian` AS `id_pem`,`a`.`id_siswa` AS `id_siswa`,`a`.`id_ujian` AS `id_jns`,`b`.`jns_pem` AS `pembayaran`,`a`.`nom_pem` AS `nom_pem`,`a`.`tanggal_pem` AS `tgl_pem` from (`tb_pem_ujian` `a` left join `tb_jns_pem` `b` on((`a`.`id_ujian` = `b`.`id_jns`))) union all select `a`.`id_pem_keg` AS `id_pem`,`a`.`id_siswa` AS `id_siswa`,`a`.`id_keg` AS `id_jns`,`b`.`jns_pem` AS `pembayaran`,`a`.`nom_pem` AS `nom_pem`,`a`.`tanggal_pem` AS `tgl_pem` from (`tb_pem_kegiatan` `a` left join `tb_jns_pem` `b` on((`a`.`id_keg` = `b`.`id_jns`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_lap_pem_kegiatan`
--

/*!50001 DROP VIEW IF EXISTS `vw_lap_pem_kegiatan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_lap_pem_kegiatan` AS select `aa`.`tanggal_pem` AS `tanggal_pem`,`aa`.`id_pem_keg` AS `id_pem`,`bb`.`jns_katg` AS `kat_pem`,`bb`.`jns_pem` AS `jns_pem`,concat(`cc`.`nis_siswa`,'|',`cc`.`nama_siswa`,'-',`cc`.`kls_siswa`,' ',`cc`.`prod_siswa`) AS `nama_siswa`,format(`aa`.`nom_pem`,0) AS `nom_pem`,`aa`.`status_pem` AS `status` from ((`tb_pem_kegiatan` `aa` left join `tb_jns_pem` `bb` on((`aa`.`id_keg` = `bb`.`id_jns`))) left join `tb_siswa` `cc` on((`aa`.`id_siswa` = `cc`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_lap_pem_spp`
--

/*!50001 DROP VIEW IF EXISTS `vw_lap_pem_spp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_lap_pem_spp` AS select `a`.`tanggal_pem` AS `tanggal_pem`,`a`.`id_pem_spp` AS `id_pem`,`b`.`jns_katg` AS `kat_pem`,`b`.`jns_pem` AS `jns_pem`,concat(`c`.`nis_siswa`,'|',`c`.`nama_siswa`,'-',`c`.`kls_siswa`,' ',`c`.`prod_siswa`) AS `nama_siswa`,format(`b`.`jns_val`,0) AS `nom_pem`,`a`.`status_spp` AS `status` from ((`tb_pem_spp` `a` left join `tb_jns_pem` `b` on((`a`.`id_spp` = `b`.`id_jns`))) left join `tb_siswa` `c` on((`a`.`id_siswa` = `c`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_lap_pem_ujian`
--

/*!50001 DROP VIEW IF EXISTS `vw_lap_pem_ujian`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_lap_pem_ujian` AS select `aa`.`tanggal_pem` AS `tanggal_pem`,`aa`.`id_pem_ujian` AS `id_pem`,`bb`.`jns_katg` AS `kat_pem`,`bb`.`jns_pem` AS `jns_pem`,concat(`cc`.`nis_siswa`,'|',`cc`.`nama_siswa`,'-',`cc`.`kls_siswa`,' ',`cc`.`prod_siswa`) AS `nama_siswa`,format(`aa`.`nom_pem`,0) AS `nom_pem`,`aa`.`status_pem` AS `status` from ((`tb_pem_ujian` `aa` left join `tb_jns_pem` `bb` on((`aa`.`id_ujian` = `bb`.`id_jns`))) left join `tb_siswa` `cc` on((`aa`.`id_siswa` = `cc`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_pemasukan_list`
--

/*!50001 DROP VIEW IF EXISTS `vw_pemasukan_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_pemasukan_list` AS select `a`.`tanggal_pem` AS `tanggal_pem`,`a`.`id_pem` AS `id_pem`,`a`.`kat_pem` AS `kat_pem`,`a`.`jns_pem` AS `jns_pem`,`a`.`nama_siswa` AS `nama_siswa`,`a`.`nom_pem` AS `nom_pem`,`a`.`status` AS `status` from `vw_lap_pem_spp` `a` union all select `b`.`tanggal_pem` AS `tanggal_pem`,`b`.`id_pem` AS `id_pem`,`b`.`kat_pem` AS `kat_pem`,`b`.`jns_pem` AS `jns_pem`,`b`.`nama_siswa` AS `nama_siswa`,`b`.`nom_pem` AS `nom_pem`,`b`.`status` AS `status` from `vw_lap_pem_ujian` `b` union all select `c`.`tanggal_pem` AS `tanggal_pem`,`c`.`id_pem` AS `id_pem`,`c`.`kat_pem` AS `kat_pem`,`c`.`jns_pem` AS `jns_pem`,`c`.`nama_siswa` AS `nama_siswa`,`c`.`nom_pem` AS `nom_pem`,`c`.`status` AS `status` from `vw_lap_pem_kegiatan` `c` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_sts_kegiatan_siswa`
--

/*!50001 DROP VIEW IF EXISTS `vw_sts_kegiatan_siswa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_sts_kegiatan_siswa` AS select `tb_siswa`.`id` AS `id`,`tb_siswa`.`nis_siswa` AS `nis_siswa`,`tb_siswa`.`nama_siswa` AS `nama_siswa`,`tb_siswa`.`kls_siswa` AS `kls_siswa`,`tb_siswa`.`prod_siswa` AS `prod_siswa`,`tb_jns_pem`.`id_jns` AS `id_jns`,`tb_jns_pem`.`jns_pem` AS `jns_pem`,`tb_jns_pem`.`jns_val` AS `jns_val`,`tb_pem_kegiatan`.`id_pem_keg` AS `id_pem_keg`,`tb_pem_kegiatan`.`nom_pem` AS `nom_pem`,`tb_pem_kegiatan`.`status_pem` AS `status_pem`,`tb_pem_kegiatan`.`tanggal_pem` AS `tanggal_pem`,`tb_admin`.`id_adm` AS `id_adm`,`tb_admin`.`nama_adm` AS `nama_adm` from (((`tb_pem_kegiatan` left join `tb_siswa` on((`tb_pem_kegiatan`.`id_siswa` = `tb_siswa`.`id`))) left join `tb_jns_pem` on((`tb_pem_kegiatan`.`id_keg` = `tb_jns_pem`.`id_jns`))) left join `tb_admin` on((`tb_pem_kegiatan`.`id_admin` = `tb_admin`.`id_adm`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_sts_spp_siswa`
--

/*!50001 DROP VIEW IF EXISTS `vw_sts_spp_siswa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_sts_spp_siswa` AS select `ts`.`id` AS `id`,`ts`.`nama_siswa` AS `nama_siswa`,`ts`.`nis_siswa` AS `nis_siswa`,`ts`.`kls_siswa` AS `kls_siswa`,`ts`.`prod_siswa` AS `prod_siswa`,`tjp`.`id_jns` AS `id_jns`,`tjp`.`jns_pem` AS `jns_pem`,`tjp`.`jns_val` AS `jns_val`,`tps`.`id_pem_spp` AS `id_pem_spp`,`tps`.`status_spp` AS `status_spp`,`tps`.`tanggal_pem` AS `tanggal_pem`,`ta`.`id_adm` AS `id_adm`,`ta`.`nama_adm` AS `nama_adm` from (((`tb_pem_spp` `tps` left join `tb_siswa` `ts` on((`tps`.`id_siswa` = `ts`.`id`))) left join `tb_jns_pem` `tjp` on((`tps`.`id_spp` = `tjp`.`id_jns`))) left join `tb_admin` `ta` on((`tps`.`id_admin` = `ta`.`id_adm`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_sts_ujian_siswa`
--

/*!50001 DROP VIEW IF EXISTS `vw_sts_ujian_siswa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_sts_ujian_siswa` AS select `tb_siswa`.`id` AS `id`,`tb_siswa`.`nis_siswa` AS `nis_siswa`,`tb_siswa`.`nama_siswa` AS `nama_siswa`,`tb_siswa`.`kls_siswa` AS `kls_siswa`,`tb_siswa`.`prod_siswa` AS `prod_siswa`,`tb_jns_pem`.`id_jns` AS `id_jns`,`tb_jns_pem`.`jns_pem` AS `jns_pem`,`tb_jns_pem`.`jns_val` AS `jns_val`,`tb_pem_ujian`.`id_pem_ujian` AS `id_pem_ujian`,`tb_pem_ujian`.`nom_pem` AS `nom_pem`,`tb_pem_ujian`.`status_pem` AS `status_pem`,`tb_pem_ujian`.`tanggal_pem` AS `tanggal_pem`,`tb_admin`.`id_adm` AS `id_adm`,`tb_admin`.`nama_adm` AS `nama_adm` from (((`tb_pem_ujian` left join `tb_siswa` on((`tb_pem_ujian`.`id_siswa` = `tb_siswa`.`id`))) left join `tb_jns_pem` on((`tb_pem_ujian`.`id_ujian` = `tb_jns_pem`.`id_jns`))) left join `tb_admin` on((`tb_pem_ujian`.`id_admin` = `tb_admin`.`id_adm`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-30 18:44:23
