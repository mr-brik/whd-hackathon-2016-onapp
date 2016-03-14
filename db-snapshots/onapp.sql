PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE location (
  id INT PRIMARY KEY,
  label TEXT NOT NULL,
  hypervisor_group_id INT NOT NULL UNIQUE
);
INSERT INTO "location" VALUES(NULL,'Estonia',4);
INSERT INTO "location" VALUES(NULL,'France',10);
INSERT INTO "location" VALUES(NULL,'Ukraine',7);
CREATE TABLE template (
  id INT PRIMARY KEY,
  label TEXT NOT NULL,
  location_id INT NOT NULL,
  min_disk_size INT,
  min_memory_size INT,
  operating_system TEXT NOT NULL,
  operating_system_distro TEXT NOT NULL,
  FOREIGN KEY(location_id) REFERENCES location(id)
);
INSERT INTO "template" VALUES(8,'CentOS 5.8 x64',1,5,256,'linux','rhel');
INSERT INTO "template" VALUES(16,'CentOS 5.8 x86',1,5,256,'linux','rhel');
INSERT INTO "template" VALUES(22,'CentOS 6.3 x64',1,5,384,'linux','rhel');
INSERT INTO "template" VALUES(11,'CentOS 6.3 x86',1,5,384,'linux','rhel');
INSERT INTO "template" VALUES(5,'CentOS 6.5 cPanel x64',1,9,384,'linux','rhel');
INSERT INTO "template" VALUES(19,'CentOS 6.5 x64',1,5,384,'linux','rhel');
INSERT INTO "template" VALUES(9,'CentOS 6.5 x86',1,5,384,'linux','rhel');
INSERT INTO "template" VALUES(24,'Debian 5.0 x64',1,5,128,'linux','ubuntu');
INSERT INTO "template" VALUES(20,'Debian 5.0 x86',1,5,128,'linux','ubuntu');
INSERT INTO "template" VALUES(7,'Debian 6.0 x64',1,5,128,'linux','ubuntu');
INSERT INTO "template" VALUES(25,'Debian 7.0 x64',1,5,128,'linux','ubuntu');
INSERT INTO "template" VALUES(18,'Debian 7.8 x64 Compute Performance Test',1,5,128,'linux','ubuntu');
INSERT INTO "template" VALUES(14,'Fedora 16 x64',1,5,256,'linux','rhel');
INSERT INTO "template" VALUES(30,'Fedora 16 x86',1,5,256,'linux','rhel');
INSERT INTO "template" VALUES(13,'openSUSE 12.1 x64',1,5,128,'linux','suse');
INSERT INTO "template" VALUES(23,'openSUSE 12.1 x86',1,5,128,'linux','suse');
INSERT INTO "template" VALUES(12,'Red Hat Enterprise Linux 5.8 x64',1,6,256,'linux','rhel');
INSERT INTO "template" VALUES(29,'Red Hat Enterprise Linux 5.8 x86',1,6,256,'linux','rhel');
INSERT INTO "template" VALUES(17,'Red Hat Enterprise Linux 6.3 x64',1,6,384,'linux','rhel');
INSERT INTO "template" VALUES(15,'Red Hat Enterprise Linux 6.3 x86',1,6,384,'linux','rhel');
INSERT INTO "template" VALUES(27,'Slackware 13.37 x64',1,5,256,'linux','slackware');
INSERT INTO "template" VALUES(6,'Slackware 13.37 x86',1,5,256,'linux','slackware');
INSERT INTO "template" VALUES(28,'Ubuntu 12.04 x64',1,5,128,'linux','ubuntu');
INSERT INTO "template" VALUES(10,'Ubuntu 12.04 x86',1,5,128,'linux','ubuntu');
INSERT INTO "template" VALUES(26,'Windows 2003 Standard Edition x64 xen',1,10,384,'windows','2003');
INSERT INTO "template" VALUES(21,'Windows 2008 Enterprise Edition R2 sql x64 xen',1,20,1024,'windows','2008');
INSERT INTO "template" VALUES(4,'Windows 2008 Standard Edition x64 xen',1,20,1024,'windows','2008');
INSERT INTO "template" VALUES(49,'Arch Linux 2015.04 x64',2,5,128,'linux','archlinux');
INSERT INTO "template" VALUES(81,'Arch Linux 2015.07 x64',2,5,128,'linux','archlinux');
INSERT INTO "template" VALUES(78,'CentOS 6.3 x64 BlueOnyx 5108R',2,5,384,'linux','rhel');
INSERT INTO "template" VALUES(60,'CentOS 6.3 x64 cPanel',2,9,384,'linux','rhel');
INSERT INTO "template" VALUES(69,'CentOS 6.3 x64 DeskPRO',2,5,384,'linux','rhel');
INSERT INTO "template" VALUES(64,'CentOS 6.4 x64',2,5,384,'linux','rhel');
INSERT INTO "template" VALUES(63,'CentOS 6.4 x64 LAMP',2,5,384,'linux','rhel');
INSERT INTO "template" VALUES(87,'CentOS 6.5 x64 cPanel',2,9,384,'linux','rhel');
INSERT INTO "template" VALUES(77,'CentOS 6.6 x64 cPanel',2,9,384,'linux','rhel');
INSERT INTO "template" VALUES(83,'CentOS 6.6 x64 R1 CDP SSA 2.20.3',2,5,384,'linux','rhel');
INSERT INTO "template" VALUES(70,'CentOS 6.7 x64 cPanel11 50',2,9,384,'linux','rhel');
INSERT INTO "template" VALUES(66,'CentOS 6.7 x64 LAMP WordPress',2,5,384,'linux','rhel');
INSERT INTO "template" VALUES(61,'CentOS 6.7 x64 McMyAdmin2',2,5,384,'linux','rhel');
INSERT INTO "template" VALUES(84,'CentOS 6.7 x64 Plesk12',2,5,384,'linux','rhel');
INSERT INTO "template" VALUES(50,'CentOS 6.7 x64 Plesk12 5',2,5,384,'linux','rhel');
INSERT INTO "template" VALUES(88,'CentOS 6.7 x64 Plesk12 5',2,5,384,'linux','rhel');
INSERT INTO "template" VALUES(51,'CentOS 7.1 x64',2,5,384,'linux','rhel');
INSERT INTO "template" VALUES(55,'CentOS 7.1 x64 cPanel11 5',2,9,384,'linux','rhel');
INSERT INTO "template" VALUES(71,'CentOS 7.1 x64 Plesk12 5',2,5,384,'linux','rhel');
INSERT INTO "template" VALUES(53,'CentOS 7.2 x64',2,5,384,'linux','rhel');
INSERT INTO "template" VALUES(72,'CentOS 7.2 x64 cPanel11 5',2,9,384,'linux','rhel');
INSERT INTO "template" VALUES(75,'CentOS 7.2 x64 Minimal',2,5,128,'linux','rhel');
INSERT INTO "template" VALUES(62,'ClearOS 6.6 x64',2,5,512,'linux','rhel');
INSERT INTO "template" VALUES(89,'CloudLinux Server 6.6 x64 cl6 hvm cPanel',2,9,512,'linux','rhel');
INSERT INTO "template" VALUES(92,'CloudLinux Server 6.6 x64 cl6 hvm Plesk',2,5,512,'linux','rhel');
INSERT INTO "template" VALUES(80,'CloudLinux Server 6.6 x64 cPanel',2,9,512,'linux','rhel');
INSERT INTO "template" VALUES(85,'Debian 7.0 x64',2,5,128,'linux','ubuntu');
INSERT INTO "template" VALUES(52,'Debian 7.8 x64 Compute Performance Test',2,5,128,'linux','ubuntu');
INSERT INTO "template" VALUES(79,'Debian 8.0 x64',2,5,128,'linux','ubuntu');
INSERT INTO "template" VALUES(90,'Elastix 2.4 x64',2,5,512,'linux','rhel');
INSERT INTO "template" VALUES(58,'Fedora 22 x64',2,5,128,'linux','rhel');
INSERT INTO "template" VALUES(57,'FreeBSD 10.1 x64',2,5,512,'freebsd','freebsd');
INSERT INTO "template" VALUES(59,'openSUSE 13.1 x64',2,5,128,'linux','suse');
INSERT INTO "template" VALUES(65,'openSUSE 13.2 x64',2,5,128,'linux','suse');
INSERT INTO "template" VALUES(91,'Scientific Linux 6.2 x64',2,5,384,'linux','rhel');
INSERT INTO "template" VALUES(86,'Ubuntu 12.04 x64 Stackato 2.0.5',2,5,256,'linux','ubuntu');
INSERT INTO "template" VALUES(76,'Ubuntu 14.04 x64 ',2,5,256,'linux','ubuntu');
INSERT INTO "template" VALUES(82,'Ubuntu 14.10 x64',2,5,256,'linux','ubuntu');
INSERT INTO "template" VALUES(74,'Ubuntu 15.04 x64',2,5,256,'linux','ubuntu');
INSERT INTO "template" VALUES(67,'Windows 2012 Standard Edition R2 x64 kvm_virtio',2,20,1024,'windows','2012');
INSERT INTO "template" VALUES(54,'Windows 2012 x64 DC R2',2,20,1024,'windows','2012');
INSERT INTO "template" VALUES(68,'Windows 2012 x64 STD R2 plesk12',2,30,1024,'windows','2012');
INSERT INTO "template" VALUES(56,'Windows 8.1 Professional Edition x64 kvm_virtio',2,20,1024,'windows','8.1');
INSERT INTO "template" VALUES(31,'CentOS 5.5 Optimized Hardened LAMP x64',3,5,256,'linux','rhel');
INSERT INTO "template" VALUES(41,'CentOS 5.5 Optimized Hardened LNMP x64',3,5,NULL,'linux','rhel');
INSERT INTO "template" VALUES(39,'CentOS 5.9 x64',3,5,256,'linux','rhel');
INSERT INTO "template" VALUES(46,'CentOS 6.4 x64',3,5,384,'linux','rhel');
INSERT INTO "template" VALUES(34,'CentOS 7.1 x64',3,5,384,'linux','rhel');
INSERT INTO "template" VALUES(33,'Debian 6.0.0 LAMP x64',3,5,NULL,'linux','ubuntu');
INSERT INTO "template" VALUES(44,'Debian 7.0 x64',3,5,128,'linux','ubuntu');
INSERT INTO "template" VALUES(40,'Debian 7.8 x64 Compute Performance Test',3,5,128,'linux','ubuntu');
INSERT INTO "template" VALUES(42,'Debian 8.0 x64',3,5,128,'linux','ubuntu');
INSERT INTO "template" VALUES(38,'debian-6.0-x64',3,5,128,'linux','ubuntu');
INSERT INTO "template" VALUES(45,'Fedora 18 x64',3,5,256,'linux','rhel');
INSERT INTO "template" VALUES(32,'FreeBSD 10.0 x64',3,5,256,'freebsd','freebsd');
INSERT INTO "template" VALUES(36,'Gentoo 12.1 x64',3,5,256,'linux','gentoo');
INSERT INTO "template" VALUES(35,'Ubuntu 12.04 x64',3,5,256,'linux','ubuntu');
INSERT INTO "template" VALUES(43,'Ubuntu 14.04 x64',3,5,256,'linux','ubuntu');
INSERT INTO "template" VALUES(47,'Ubuntu 15.04 x64',3,5,256,'linux','ubuntu');
INSERT INTO "template" VALUES(37,'Windows 2008 Standart R2 x64 kvm_virtio',3,20,1024,'windows','2008');
INSERT INTO "template" VALUES(48,'Windows 2012 Standart R2 x64 kvm_virtio',3,20,1024,'windows','2012');
CREATE TABLE server (
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  onapp_id TEXT NOT NULL,
  template_id INT NOT NULL,
  label TEXT NOT NULL,
  status TEXT NOT NULL DEFAULT 'building',
  cpus INT NOT NULL,
  disk_size INT NOT NULL,
  memory_size INT NOT NULL,
  ipv4_address TEXT NOT NULL,
  initial_root_password TEXT NOT NULL,
  FOREIGN KEY(template_id) REFERENCES template(id)
);
CREATE TABLE `user` (
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  email TEXT NOT NULL
);
INSERT INTO "user" VALUES(1,'han@example.org');
INSERT INTO "user" VALUES(2,'luke@example.org');
INSERT INTO "user" VALUES(3,'leia@example.org');
INSERT INTO "user" VALUES(4,'kylo@example.org');
INSERT INTO "user" VALUES(5,'rey@example.org');
INSERT INTO "user" VALUES(6,'finn@example.org');
INSERT INTO "user" VALUES(7,'poe@example.org');
CREATE TABLE user_server_link (
  user_id INT NOT NULL,
  server_id INT NOT NULL,
  UNIQUE(user_id, server_id),
  FOREIGN KEY(user_id) REFERENCES user(id),
  FOREIGN KEY(server_id) REFERENCES server(id)
);
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('user',7);
COMMIT;
