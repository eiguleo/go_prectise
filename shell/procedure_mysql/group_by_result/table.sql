CREATE TABLE `fpmx1016` (
	  `ID` varchar(36) NOT NULL DEFAULT '',
	  `PROVINCE_CODE` varchar(20) DEFAULT NULL,
	  `CITY_CODE` varchar(20) DEFAULT NULL,
	  `KPD` varchar(20) DEFAULT NULL,
	  `KJLY` varchar(20) NOT NULL,
	  `FPLXDM` varchar(20) NOT NULL,
	  `FPDM` varchar(20) NOT NULL,
	  `FPHM` varchar(20) NOT NULL,
	  `TSPZ` char(2) DEFAULT NULL,
	  `KPRQ` varchar(14) DEFAULT NULL,
	  `JQBH` varchar(12) DEFAULT NULL,
	  `SKM` varchar(200) DEFAULT NULL,
	  `GHDWMC` varchar(200) DEFAULT NULL,
	  `GHDWDM` varchar(20) DEFAULT NULL,
	  `GHDWDZDH` varchar(140) DEFAULT NULL,
	  `GHDWYHZH` varchar(140) DEFAULT NULL,
	  `XHDWMC` varchar(200) DEFAULT NULL,
	  `XHDWDM` varchar(20) DEFAULT NULL,
	  `XHDWDZDH` varchar(140) DEFAULT NULL,
	  `XHDWYHZH` varchar(160) DEFAULT NULL,
	  `ZYSPMC` varchar(200) DEFAULT NULL,
	  `ZHJC` varchar(200) DEFAULT NULL,
	  `SPSM` varchar(40) DEFAULT NULL,
	  `ZYSL` varchar(50) DEFAULT NULL,
	  `SKR` varchar(40) DEFAULT NULL,
	  `FHR` varchar(40) DEFAULT NULL,
	  `KPR` varchar(40) DEFAULT NULL,
	  `YFPDM` varchar(20) DEFAULT NULL,
	  `YFPHM` varchar(10) DEFAULT NULL,
	  `BBH` varchar(20) DEFAULT NULL,
	  `JYM` varchar(150) DEFAULT NULL,
	  `QMBZ` char(1) DEFAULT NULL,
	  `SCBZ` char(1) DEFAULT NULL,
	  `YQBZ` char(1) DEFAULT NULL,
	  `FPQQLSH` varchar(200) DEFAULT NULL,
	  `ZSFS` char(1) DEFAULT NULL,
	  `SFHC` char(1) DEFAULT NULL,
	  `HJJE` double(31,18) DEFAULT NULL,
	  `SE` double(31,18) DEFAULT NULL,
	  `JSHJ` double(31,18) DEFAULT NULL,
	  `XZRQ` varchar(14) DEFAULT NULL,
	  `XZQD` varchar(40) DEFAULT NULL,
	  `CJSJ` datetime DEFAULT NULL,
	  PRIMARY KEY (`ID`),
	  UNIQUE KEY `ZZFPDZ_FPMX_UNIQUE_201809` (`ID`),
	  UNIQUE KEY `ZSPDZ_FPMX_201809` (`FPDM`,`FPHM`) USING BTREE,
	  KEY `INDEX_FPMX_201809_KPRQ` (`KPRQ`) USING BTREE,
	  KEY `INDEX_FPMX_201809_PRO` (`PROVINCE_CODE`) USING BTREE,
	  KEY `INDEX_FPMX_201809_CITY` (`CITY_CODE`) USING BTREE,
	  KEY `INDEX_FPMX_201809_KPD` (`KPD`) USING BTREE,
	  KEY `INDEX_FPMX_201809_KJLY` (`KJLY`) USING BTREE,
	  KEY `INDEX_FPMX_201809_SFHC` (`SFHC`) USING BTREE,
	  KEY `INDEX_FPMX_201809_ZYSL` (`ZYSL`) USING BTREE,
	  KEY `INDEX_FPMX_201809_ZYSPMC` (`ZYSPMC`) USING BTREE,
	  KEY `INDEX_FPMX_201809_XHDWDM` (`XHDWDM`) USING BTREE,
	  KEY `INDEX_FPMX_201809_FPHM` (`FPHM`) USING BTREE,
	  KEY `INDEX_FPMX_201809_GHDWMC` (`GHDWMC`) USING BTREE,
	  KEY `INDEX_FPMX_201809_GHDWDM` (`GHDWDM`) USING BTREE,
	  KEY `INDEX_FPMX_201809_XZRQ` (`XZRQ`) USING BTREE,
	  KEY `INDEX_FPMX_201809_XZQD` (`XZQD`) USING BTREE,
	  KEY `INDEX_FPMX_201809_CJSJ` (`CJSJ`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;