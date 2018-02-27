/*
SQLyog  v12.2.6 (64 bit)
MySQL - 5.5.53 : Database - kettle
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kettle` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `kettle`;

/*Table structure for table `cr_task` */

DROP TABLE IF EXISTS `cr_task`;

CREATE TABLE `cr_task` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `STATE` int(10) NOT NULL COMMENT 'Áä∂ÊÄÅÔºö0=ÂÅúÊ≠¢Ôºå1=ÂêØÂä®',
  `NAME` varchar(255) NOT NULL COMMENT 'ÂêçÁß∞',
  `EXP` varchar(50) NOT NULL COMMENT 'Ë°®ËææÂºè',
  `JAVA_CLASS` varchar(255) NOT NULL COMMENT 'ÂÆûÁé∞Á±ª',
  `INFO` varchar(255) DEFAULT NULL COMMENT 'ËØ¥Êòé',
  `OID` varchar(32) NOT NULL COMMENT 'ÂØπË±°‰∏ªÈîÆ',
  `OCODE` varchar(100) DEFAULT NULL COMMENT 'ÂØπË±°‰ª£Á†Å',
  `ONAME` varchar(100) DEFAULT NULL COMMENT 'ÂØπË±°ÂêçÁß∞',
  `ODESCRIBE` text COMMENT 'ÂØπË±°ÊèèËø∞',
  `OORDER` int(11) DEFAULT NULL COMMENT 'ÂØπË±°ÊéíÂ∫è',
  `SIMPLE_SPELL` varchar(200) DEFAULT NULL COMMENT 'ÂØπË±°ÁÆÄÊãº',
  `FULL_SPELL` text COMMENT 'ÂØπË±°ÂÖ®Êãº',
  `CREATE_DATE` varchar(14) DEFAULT NULL COMMENT 'ÂàõÂª∫Êó∂Èó¥',
  `UPDATE_DATE` varchar(14) DEFAULT NULL COMMENT 'Êõ¥Êñ∞Êó∂Èó¥',
  `EXPAND` text COMMENT 'Êâ©Â±ï‰ø°ÊÅØ',
  `IS_DISABLE` varchar(10) DEFAULT NULL COMMENT 'ÊòØÂê¶Á¶ÅÁî®',
  `CONFIG_INFO` text COMMENT 'JSONÊ†ºÂºèÈÖçÁΩÆ',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='km‰Ωú‰∏öÂÆöÊó∂‰ªªÂä°Ë°®';

/*Data for the table `cr_task` */

insert  into `cr_task`(`ID`,`STATE`,`NAME`,`EXP`,`JAVA_CLASS`,`INFO`,`OID`,`OCODE`,`ONAME`,`ODESCRIBE`,`OORDER`,`SIMPLE_SPELL`,`FULL_SPELL`,`CREATE_DATE`,`UPDATE_DATE`,`EXPAND`,`IS_DISABLE`,`CONFIG_INFO`) values 
(1,1,'kettle‰Ωú‰∏öÁÆ°ÁêÜ','*/10 * * * * ?','io.renren.modules.kettle.engine.job.JobManager','ËøõË°å‰Ωú‰∏öÁä∂ÊÄÅÊõ¥Êñ∞ÔºåÊó•ÂøóÊñá‰ª∂ËÆ∞ÂΩïÁ≠â','1A2763192127443CBE2D6D4898168E63',NULL,NULL,NULL,NULL,NULL,NULL,'20170612094500','20170612094500',NULL,'0','{\r\n   \"ÊòØÂê¶ÂÜôÊó•ÂøóÊñá‰ª∂\" : true,\r\n   \"Êó•ÂøóÊñá‰ª∂Â§ßÂ∞è(M)\" : 10,\r\n   \"Êó•ÂøóÊñá‰ª∂Ë∑ØÂæÑ\" : \"/tmp/kettle-manager/logs/kettle\"\r\n}');

/*Table structure for table `job_log` */

DROP TABLE IF EXISTS `job_log`;

CREATE TABLE `job_log` (
  `OID` varchar(32) NOT NULL COMMENT 'ÂØπË±°‰∏ªÈîÆ',
  `OCODE` varchar(100) DEFAULT NULL COMMENT 'ÂØπË±°‰ª£Á†Å',
  `ONAME` varchar(100) DEFAULT NULL COMMENT 'ÂØπË±°ÂêçÁß∞',
  `ODESCRIBE` text COMMENT 'ÂØπË±°ÊèèËø∞',
  `OORDER` decimal(65,0) DEFAULT NULL COMMENT 'ÂØπË±°ÊéíÂ∫è',
  `SIMPLE_SPELL` varchar(200) DEFAULT NULL COMMENT 'ÂØπË±°ÁÆÄÊãº',
  `FULL_SPELL` text COMMENT 'ÂØπË±°ÂÖ®Êãº',
  `CREATE_DATE` varchar(14) DEFAULT NULL COMMENT 'ÂàõÂª∫Êó∂Èó¥',
  `UPDATE_DATE` varchar(14) DEFAULT NULL COMMENT 'Êõ¥Êñ∞Êó∂Èó¥',
  `CREATE_USER` varchar(100) DEFAULT NULL COMMENT 'ÂàõÂª∫‰∫∫',
  `UPDATE_USER` varchar(100) DEFAULT NULL COMMENT 'Êõ¥Êñ∞‰∫∫',
  `EXPAND` text COMMENT 'Êâ©Â±ï‰ø°ÊÅØ',
  `IS_DISABLE` varchar(10) DEFAULT NULL COMMENT 'ÊòØÂê¶Á¶ÅÁî®',
  `FLAG1` varchar(200) DEFAULT NULL COMMENT 'Â§áÁî®1',
  `FLAG2` varchar(200) DEFAULT NULL COMMENT 'Â§áÁî®2',
  `ID_JOB` decimal(65,30) DEFAULT NULL COMMENT '‰Ωú‰∏öID',
  `JOB_NAME` varchar(200) DEFAULT NULL COMMENT '‰Ωú‰∏öÂêçÁß∞',
  `START_DATE` varchar(14) DEFAULT NULL COMMENT 'ÂºÄÂßãÊó∂Èó¥',
  `END_DATE` varchar(14) DEFAULT NULL COMMENT 'ÁªìÊùüÊó∂Èó¥',
  `RESULT` varchar(200) DEFAULT NULL COMMENT 'ËøêË°åÁªìÊûú',
  `LOG_FILE` text COMMENT 'Êó•ÂøóÊñá‰ª∂'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='‰Ωú‰∏öÊó•Âøó';

/*Data for the table `job_log` */

insert  into `job_log`(`OID`,`OCODE`,`ONAME`,`ODESCRIBE`,`OORDER`,`SIMPLE_SPELL`,`FULL_SPELL`,`CREATE_DATE`,`UPDATE_DATE`,`CREATE_USER`,`UPDATE_USER`,`EXPAND`,`IS_DISABLE`,`FLAG1`,`FLAG2`,`ID_JOB`,`JOB_NAME`,`START_DATE`,`END_DATE`,`RESULT`,`LOG_FILE`) values 
('70B31953C21A4E6DB7E62CCC1EAA468C',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20170615144510',NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20170615144435','20170615144510','Finished','D:\\tmp\\kettle-manager\\logs\\kettle\\20170615\\xxx_144440.txt'),
('D4A06351F39C4B30BAC93C25210C7952',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171215111950',NULL,NULL,NULL,NULL,NULL,NULL,2.000000000000000000000000000000,'ËΩ¨Êç¢jsonÊñá‰ª∂','20171215111918','20171215111950','Finished','D:\\tmp\\kettle-manager\\logs\\kettle\\20171215\\ËΩ¨Êç¢jsonÊñá‰ª∂_111920.txt'),
('BB0467429BDF40FB8F20CA63211EB3A0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171215112010',NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171215111939','20171215112010','Finished','D:\\tmp\\kettle-manager\\logs\\kettle\\20171215\\xxx_111940.txt'),
('6C57E437A59146F19D040695D689636A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171215112040',NULL,NULL,NULL,NULL,NULL,NULL,2.000000000000000000000000000000,'ËΩ¨Êç¢jsonÊñá‰ª∂','20171215112032','20171215112040','Finished','D:\\tmp\\kettle-manager\\logs\\kettle\\20171215\\ËΩ¨Êç¢jsonÊñá‰ª∂_112040.txt'),
('CAF5EFAB1B4F4BCDA68C71E29CA03091',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171215112550',NULL,NULL,NULL,NULL,NULL,NULL,2.000000000000000000000000000000,'ËΩ¨Êç¢jsonÊñá‰ª∂','20171215112409','20171215112550','StopFailed','D:\\tmp\\kettle-manager\\logs\\kettle\\20171215\\ËΩ¨Êç¢jsonÊñá‰ª∂_112410.txt'),
('6656020B6E4248C48A6656A9B5094751',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171215133730',NULL,NULL,NULL,NULL,NULL,NULL,2.000000000000000000000000000000,'ËΩ¨Êç¢jsonÊñá‰ª∂','20171215113142','20171215133730','Stopped','D:\\tmp\\kettle-manager\\logs\\kettle\\20171215\\ËΩ¨Êç¢jsonÊñá‰ª∂_113150.txt'),
('811D128491F9490FA53782D62D17243E',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171215135640',NULL,NULL,NULL,NULL,NULL,NULL,2.000000000000000000000000000000,'ËΩ¨Êç¢jsonÊñá‰ª∂','20171215135530','20171215135640','Stopped','D:\\tmp\\kettle-manager\\logs\\kettle\\20171215\\ËΩ¨Êç¢jsonÊñá‰ª∂_135540.txt'),
('A1E5983F56B2493397528800C088DC65',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171218091350',NULL,NULL,NULL,NULL,NULL,NULL,2.000000000000000000000000000000,'ËΩ¨Êç¢jsonÊñá‰ª∂','20171218091256','20171218091350','StopFailed','D:\\tmp\\kettle-manager\\logs\\kettle\\20171218\\ËΩ¨Êç¢jsonÊñá‰ª∂_091300.txt'),
('78A4F96821254C7B9AEEA3F69287B88E',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171219145850',NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171219145814','20171219145850','StopFailed','D:\\tmp\\kettle-manager\\logs\\kettle\\20171219\\xxx_145820.txt'),
('8769187099574E67ACB13A906911C72B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171219150000',NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171219145957','20171219150000','Finished','D:\\tmp\\kettle-manager\\logs\\kettle\\20171219\\xxx_150000.txt'),
('8A70F5E0352A41389B28564BEF7FC269',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171219150800',NULL,NULL,NULL,NULL,NULL,NULL,2.000000000000000000000000000000,'ËΩ¨Êç¢jsonÊñá‰ª∂','20171219150720','20171219150800','StopFailed','D:\\tmp\\kettle-manager\\logs\\kettle\\20171219\\ËΩ¨Êç¢jsonÊñá‰ª∂_150730.txt'),
('CBDAC664D6EE4D6793C27F4AE5033706',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171219150850',NULL,NULL,NULL,NULL,NULL,NULL,2.000000000000000000000000000000,'ËΩ¨Êç¢jsonÊñá‰ª∂','20171219150841','20171219150850','StopFailed','D:\\tmp\\kettle-manager\\logs\\kettle\\20171219\\ËΩ¨Êç¢jsonÊñá‰ª∂_150850.txt'),
('D6177850D1EF4F18A77216487EA8B8D8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171219151045',NULL,NULL,'D:\\tmp\\kettle-manager\\logs\\kettle\\20171219\\xxx_151050.txt'),
('D5E8E2A550A640DEB112A84E6F1C91C6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171219151110',NULL,NULL,NULL,NULL,NULL,NULL,2.000000000000000000000000000000,'ËΩ¨Êç¢jsonÊñá‰ª∂','20171219151057','20171219151110','StopFailed','D:\\tmp\\kettle-manager\\logs\\kettle\\20171219\\ËΩ¨Êç¢jsonÊñá‰ª∂_151100.txt'),
('194B1BB3762E45828DA3EAB5E87D41CD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171220152935',NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171220152257','20171220152935','Stopped','D:\\tmp\\kettle-manager\\logs\\kettle\\20171220\\xxx_152934.txt'),
('C614F887CFEB4D79BF9F0CE8CCB35027',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171220153045',NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171220152935','20171220153045','Stopped','D:\\tmp\\kettle-manager\\logs\\kettle\\20171220\\xxx_153043.txt'),
('22A42BFC4CB64BA5BE92B39AC0C72670',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171220155012',NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171220154905','20171220155012','StopFailed','D:\\tmp\\kettle-manager\\logs\\kettle\\20171220\\xxx_155012.txt'),
('3D860945426F43ED8137FB958A09CFE4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171220155221',NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171220155012','20171220155221','Stopped','D:\\tmp\\kettle-manager\\logs\\kettle\\20171220\\xxx_155221.txt'),
('7B0BBCA49A174B4EABE52533D52F7284',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171220155734',NULL,NULL,'D:\\tmp\\kettle-manager\\logs\\kettle\\20171220\\xxx_155740.txt'),
('9062D30E31FB472585BEE820C060AB4D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171220160155',NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171220155221','20171220160155','Stopped','D:\\tmp\\kettle-manager\\logs\\kettle\\20171220\\xxx_160151.txt'),
('9DAFE32639774107BC068603E6A8AF71',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171220160851',NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171220160244','20171220160851','Stopped','D:\\tmp\\kettle-manager\\logs\\kettle\\20171220\\xxx_160851.txt'),
('30AA114C0A3E403B9CE0C7777C8A5721',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171220161025',NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171220160851','20171220161025','Stopped','D:\\tmp\\kettle-manager\\logs\\kettle\\20171220\\xxx_161025.txt'),
('F6B483785461468B8B3B9C0792FF52E1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171220161533',NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171220161025','20171220161533','Stopped','D:\\tmp\\kettle-manager\\logs\\kettle\\20171220\\xxx_161533.txt'),
('C99B1AC1BA934B24BBD3A2BAC3ED0E97',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171220161718',NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171220161533','20171220161718','Stopped','D:\\tmp\\kettle-manager\\logs\\kettle\\20171220\\xxx_161718.txt'),
('13A740D86DFB4AED9C15C1BBC1A00929',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171220162556',NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171220161718','20171220162526','Stopped','D:\\tmp\\kettle-manager\\logs\\kettle\\20171220\\xxx_162522.txt'),
('774ED5FA04084745B15460EE82F6F569',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171220162905',NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171220162619','20171220162902','Stopped','D:\\tmp\\kettle-manager\\logs\\kettle\\20171220\\xxx_162902.txt'),
('CEEC9F893F414EB39E01F1008F1A7121',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171220163004',NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171220162905','20171220163002','StopFailed','D:\\tmp\\kettle-manager\\logs\\kettle\\20171220\\xxx_163002.txt'),
('A5083ED9141C4F97AE18EB5BAE6835ED',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171220163140',NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171220163004','20171220163140','Stopped','D:\\tmp\\kettle-manager\\logs\\kettle\\20171220\\xxx_163140.txt'),
('1C8B2E48605A47538A8E1FF8DEB46748',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171220163440',NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171220163140','20171220163440','Stopped','D:\\tmp\\kettle-manager\\logs\\kettle\\20171220\\xxx_163440.txt'),
('4C76238A4B454E13BB6D2915AB2F7853',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171220163620',NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171220163440','20171220163620','Stopped','D:\\tmp\\kettle-manager\\logs\\kettle\\20171220\\xxx_163620.txt'),
('A6BF20AB576542C4BF37DF8A2965231C',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171220165102',NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171220163626','20171220165102','Stopped','D:\\tmp\\kettle-manager\\logs\\kettle\\20171220\\xxx_165102.txt'),
('81F91E0084B54B47B11768E37EA239C0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171220165507',NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171220165449','20171220165507','Stopped','D:\\tmp\\kettle-manager\\logs\\kettle\\20171220\\xxx_165507.txt'),
('DC3EEA076F814039B0FD233B10A62C4F',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171220165734',NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171220165507','20171220165734','Stopped','D:\\tmp\\kettle-manager\\logs\\kettle\\20171220\\xxx_165734.txt'),
('18E1B8B6EE344DEDA7472C6E834857DA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171220170154',NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171220165734','20171220170154','Stopped','D:\\tmp\\kettle-manager\\logs\\kettle\\20171220\\xxx_170154.txt'),
('92FBDAD4A32047B6A5839DDF88F3BD2D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171220170300',NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171220170154','20171220170300','Stopped','D:\\tmp\\kettle-manager\\logs\\kettle\\20171220\\xxx_170300.txt'),
('E595923D675F4B4A86F76AD1F5A8D649',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171220170658',NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171220170300','20171220170658','Stopped','D:\\tmp\\kettle-manager\\logs\\kettle\\20171220\\xxx_170658.txt'),
('AEC25BC9C8824E91979BAA4CD3961C6E',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171221102318',NULL,NULL,'D:\\tmp\\kettle-manager\\logs\\kettle\\20171221\\xxx_102325.txt'),
('D3051EF685A24176AFF638AC318ED46E',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171221102814',NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171221101957','20171221102814','Stopped','D:\\tmp\\kettle-manager\\logs\\kettle\\20171221\\xxx_102814.txt'),
('E2A9F44A8EB148D6B43CE961F4B5CAAE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171221171959',NULL,NULL,'D:\\tmp\\kettle-manager\\logs\\kettle\\20171221\\xxx_172000.txt'),
('D34807C4D2DA45ADB6E9D753CBAA80BE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171221172236',NULL,NULL,'D:\\tmp\\kettle-manager\\logs\\kettle\\20171221\\xxx_172240.txt'),
('578D814FF0B04FCF98723EE54D0018F8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171221174301',NULL,NULL,'D:\\tmp\\kettle-manager\\logs\\kettle\\20171221\\xxx_174350.txt'),
('9255BFA9283F43CC966755C2DD02546C',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171222085631',NULL,NULL,'D:\\tmp\\kettle-manager\\logs\\kettle\\20171222\\xxx_085640.txt'),
('E70A302257D149D5873271383408FADF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171222090120',NULL,NULL,'D:\\tmp\\kettle-manager\\logs\\kettle\\20171222\\xxx_090130.txt'),
('DEB1B8EC6EF344C5BC80E418CE4E52E4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171222091124',NULL,NULL,'D:\\tmp\\kettle-manager\\logs\\kettle\\20171222\\xxx_091130.txt'),
('210C4CD45BF34DE6B2E85B7FFDDBA731',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171222092104',NULL,NULL,'D:\\tmp\\kettle-manager\\logs\\kettle\\20171222\\xxx_092700.txt'),
('18917848F64349669FF8954EFCCFCC2C',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171222101739',NULL,NULL,'D:\\tmp\\kettle-manager\\logs\\kettle\\20171222\\xxx_101740.txt'),
('9DCF4BEE65604C2AAB338B63FACF2C53',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171222102952',NULL,NULL,'D:\\tmp\\kettle-manager\\logs\\kettle\\20171222\\xxx_103000.txt'),
('3491C4BE1E3C454EBAC33161237EA305',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171222164220',NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171222164139','20171222164220','Finished','D:\\tmp\\kettle-manager\\logs\\kettle\\20171222\\xxx_164140.txt'),
('7CE189057DE0443CA5CBD91E99DC8A93',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171225110939',NULL,NULL,'D:\\tmp\\kettle-manager\\logs\\kettle\\20171225\\xxx_110940.txt'),
('74D3A9C47B044BC0BE3A09BB465F8FB3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171225113716',NULL,NULL,'D:\\tmp\\kettle-manager\\logs\\kettle\\20171225\\xxx_113720.txt'),
('6522418D502E46A1951A5A0684AE22E1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171225151640',NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171225114039','20171225151640','Stopped','D:\\tmp\\kettle-manager\\logs\\kettle\\20171225\\xxx_114040.txt'),
('A477897D455942CBAD16F03E0A9BD941',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20171225144800',NULL,NULL,NULL,NULL,NULL,NULL,1.000000000000000000000000000000,'xxx','20171225141934','20171225144800','Stopped','D:\\tmp\\kettle-manager\\logs\\kettle\\20171225\\xxx_141940.txt');

/*Table structure for table `job_params` */

DROP TABLE IF EXISTS `job_params`;

CREATE TABLE `job_params` (
  `OID` varchar(32) NOT NULL COMMENT 'ÂØπË±°‰∏ªÈîÆ',
  `OCODE` varchar(100) DEFAULT NULL COMMENT 'ÂØπË±°‰ª£Á†Å',
  `ONAME` varchar(100) DEFAULT NULL COMMENT 'ÂØπË±°ÂêçÁß∞',
  `ODESCRIBE` text COMMENT 'ÂØπË±°ÊèèËø∞',
  `OORDER` decimal(65,0) DEFAULT NULL COMMENT 'ÂØπË±°ÊéíÂ∫è',
  `SIMPLE_SPELL` varchar(200) DEFAULT NULL COMMENT 'ÂØπË±°ÁÆÄÊãº',
  `FULL_SPELL` text COMMENT 'ÂØπË±°ÂÖ®Êãº',
  `CREATE_DATE` varchar(14) DEFAULT NULL COMMENT 'ÂàõÂª∫Êó∂Èó¥',
  `UPDATE_DATE` varchar(14) DEFAULT NULL COMMENT 'Êõ¥Êñ∞Êó∂Èó¥',
  `CREATE_USER` varchar(100) DEFAULT NULL COMMENT 'ÂàõÂª∫‰∫∫',
  `UPDATE_USER` varchar(100) DEFAULT NULL COMMENT 'Êõ¥Êñ∞‰∫∫',
  `EXPAND` text COMMENT 'Êâ©Â±ï‰ø°ÊÅØ',
  `IS_DISABLE` varchar(10) DEFAULT NULL COMMENT 'ÊòØÂê¶Á¶ÅÁî®',
  `FLAG1` varchar(200) DEFAULT NULL COMMENT 'Â§áÁî®1',
  `FLAG2` varchar(200) DEFAULT NULL COMMENT 'Â§áÁî®2',
  `ID_JOB` decimal(65,30) DEFAULT NULL COMMENT '‰Ωú‰∏ö',
  `VALUE` text COMMENT 'ÂèòÈáèÂÄº',
  PRIMARY KEY (`OID`),
  KEY `IDX_JOB_PARAMS_CREATE_DATE` (`CREATE_DATE`),
  KEY `IDX_JOB_PARAMS_ONAME` (`ONAME`),
  KEY `IDX_JOB_PARAMS_UPDATE_DATE` (`UPDATE_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='‰Ωú‰∏öÂèÇÊï∞ËÆæÁΩÆ';

/*Data for the table `job_params` */

/*Table structure for table `k_logs` */

DROP TABLE IF EXISTS `k_logs`;

CREATE TABLE `k_logs` (
  `id` varchar(24) NOT NULL DEFAULT '0',
  `mid` varchar(24) DEFAULT NULL,
  `logs` varchar(24) DEFAULT NULL,
  `creator` varchar(40) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modifier` varchar(40) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `k_logs` */

/*Table structure for table `k_repos` */

DROP TABLE IF EXISTS `k_repos`;

CREATE TABLE `k_repos` (
  `id` varchar(24) NOT NULL DEFAULT '0',
  `name` varchar(32) DEFAULT NULL,
  `type` varchar(24) DEFAULT NULL,
  `status` varchar(24) DEFAULT NULL,
  `user` varchar(16) DEFAULT NULL,
  `pass` varchar(16) DEFAULT NULL,
  `dialect` varchar(32) DEFAULT NULL,
  `server` varchar(32) DEFAULT NULL,
  `port` varchar(8) DEFAULT NULL,
  `access` varchar(8) DEFAULT NULL,
  `db` varchar(64) DEFAULT NULL,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `version` varchar(16) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_id` (`id`),
  UNIQUE KEY `idx_repo_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384;

/*Data for the table `k_repos` */

insert  into `k_repos`(`id`,`name`,`type`,`status`,`user`,`pass`,`dialect`,`server`,`port`,`access`,`db`,`username`,`password`,`version`,`remark`) values 
('51ff0d7d975f475110fe009s','kettle4db','KettleDatabaseRepository','ENABLED','admin','admin','MYSQL','127.0.0.1','3306','Native','kettle','root','root123',NULL,NULL);

/*Table structure for table `k_result` */

DROP TABLE IF EXISTS `k_result`;

CREATE TABLE `k_result` (
  `id` varchar(24) NOT NULL DEFAULT '0',
  `name` varchar(24) DEFAULT NULL,
  `logs` varchar(24) DEFAULT NULL,
  `group` varchar(24) DEFAULT NULL,
  `type` varchar(24) DEFAULT NULL,
  `status` varchar(24) DEFAULT NULL,
  `read` varchar(24) DEFAULT NULL,
  `written` varchar(24) DEFAULT NULL,
  `updated` varchar(24) DEFAULT NULL,
  `input` varchar(24) DEFAULT NULL,
  `output` varchar(24) DEFAULT NULL,
  `deleted` varchar(24) DEFAULT NULL,
  `retrieved` varchar(24) DEFAULT NULL,
  `rejected` varchar(24) DEFAULT NULL,
  `end_time` varchar(24) DEFAULT NULL,
  `start_time` varchar(24) DEFAULT NULL,
  `error` text,
  `params` text,
  `host` varchar(24) DEFAULT NULL,
  `again` varchar(24) DEFAULT NULL,
  `times` datetime DEFAULT NULL,
  `creator` varchar(40) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modifier` varchar(40) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `k_result` */

/*Table structure for table `k_spoon` */

DROP TABLE IF EXISTS `k_spoon`;

CREATE TABLE `k_spoon` (
  `id` varchar(24) NOT NULL DEFAULT '0',
  `rid` varchar(24) DEFAULT NULL,
  `method` varchar(256) DEFAULT NULL,
  `type` varchar(24) DEFAULT NULL,
  `status` varchar(24) DEFAULT NULL,
  `dir` varchar(128) DEFAULT NULL,
  `logs` varchar(32) DEFAULT NULL,
  `async` varchar(24) DEFAULT NULL,
  `params` varchar(1024) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `creator` varchar(40) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modifier` varchar(40) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_id` (`id`),
  KEY `idx_name` (`method`(255)),
  KEY `idx_status` (`status`),
  KEY `idx_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=5461;

/*Data for the table `k_spoon` */

insert  into `k_spoon`(`id`,`rid`,`method`,`type`,`status`,`dir`,`logs`,`async`,`params`,`remark`,`creator`,`created`,`modifier`,`modified`) values 
('52030a7d975fc3e9801a25ab','51358kfsfc682bfe3baf8136','taobao.trades.sold.increment.get.tradeonly','job','ENABLED','/com.taobao/comm',NULL,'1','[{\"db\":\"ehub\",\"api_id\":\"px2\",\"remark\":\"taobao.trades.sold.increment.get.tradeonly\",\"isAsync\":\"false\",\"app_key\":\"21249239\",\"type\":\"job\",\"id\":\"52030a7d975fc3e9801a25ab\",\"dir\":\"/com.taobao/comm\",\"rid\":\"51358kfsfc682bfe3baf8136\",\"description\":\"taobao.trades.sold.increment.get.tradeonly\",\"name\":\"Kettle\",\"domain\":\"com.taobao/trade\",\"method\":\"taobao.trades.sold.increment.get.tradeonly\",\"parameters\":\"-param:cmg_start_modified=2013-09-02 00:00:00@@-param:cmg_end_modified=2013-09-02 23:00:00\"}]','taobao.trades.sold.increment.get.tradeonly','Kettle','2013-08-08 11:03:25','Kettle','2013-09-02 16:04:13'),
('520339e9975f74452d1b7d0c','51358kfsfc682bfe3baf8136','yhd.orders.get','job','ENABLED','/com.yhd/comm',NULL,'1','[{\"id\":\"520339e9975f74452d1b7d0c\",\"db\":\"ehub\",\"api_id\":\"yhdx1\",\"remark\":\"yhd.orders.get\",\"dir\":\"/com.yhd/comm\",\"description\":\"yhd.orders.get\",\"name\":\"Kettle\",\"domain\":\"com.yhd/orders\",\"isAsync\":\"false\",\"method\":\"yhd.orders.get\",\"parameters\":\"-param:cmg_dateType=1@@-param:cmg_startTime=2013-08-07 09:00:00@@-param:cmg_endTime=2013-08-07 10:00:00\",\"type\":\"job\"}]','yhd.orders.get','Kettle','2013-08-08 14:25:45','Kettle','2013-08-28 10:21:45'),
('55093a54798e15874f9c3bb1','51358kfsfc682bfe3baf8136','taobao.trades.sold.get','job','ENABLED','/com.taobao/trade',NULL,'0','[{\"db\":\"cmg3ehub\",\"api_id\":\"px2\",\"remark\":\"org.ukettle.quartz.exec\",\"start_created\":\"2013-05-01 00:00:00\",\"app_key\":\"21249239\",\"type\":\"job\",\"async\":\"false\",\"nick\":\"??????\",\"dir\":\"/com.taobao/trade\",\"rid\":\"51358kfsfc682bfe3baf8136\",\"repo\":\"Kettle\",\"method\":\"taobao.trades.sold.get\",\"end_created\":\"2013-06-01 00:00:00\"}]','org.ukettle.quartz.exec','51ff0d7d975f475110fe800s','2015-03-18 16:41:56','51ff0d7d975f475110fe800s','2015-03-18 16:41:56');

/*Table structure for table `q_blob_triggers` */

DROP TABLE IF EXISTS `q_blob_triggers`;

CREATE TABLE `q_blob_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `q_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `q_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `q_blob_triggers` */

/*Table structure for table `q_calendars` */

DROP TABLE IF EXISTS `q_calendars`;

CREATE TABLE `q_calendars` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `q_calendars` */

/*Table structure for table `q_cron_triggers` */

DROP TABLE IF EXISTS `q_cron_triggers`;

CREATE TABLE `q_cron_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(120) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `q_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `q_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=134;

/*Data for the table `q_cron_triggers` */

insert  into `q_cron_triggers`(`sched_name`,`trigger_name`,`trigger_group`,`cron_expression`,`time_zone_id`) values 
('iQuartz','ALL_PP_EHUB_Item_CU_M_ALL','O_ITEM','0 * */4 * * ?','Asia/Shanghai'),
('iQuartz','AnMeiShi_DD_EOPS_Trade_C_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','AnMeiShi_DD_EOPS_Trade_U_M_ALL_1','CMG_OPS','0 15 */2 * * ?','Asia/Shanghai'),
('iQuartz','AnMeiShi_TB_EHUB_Trade_C_M_AM','O_TRADE','0 0 1,15 * * ?','Asia/Shanghai'),
('iQuartz','AnMeiShi_TB_EOPS_Trade_C_M_ALL_1','CMG_OPS','0 15 8-23 * * ?','Asia/Shanghai'),
('iQuartz','AnMeiShi_TB_EOPS_Trade_C_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','AnMeiShi_YHD_EHUB_Trade_U_M_ALL_1','O_TRADE','0 0 */2 * * ?','Asia/Shanghai'),
('iQuartz','AnMeiShi_YHD_EOPS_Trade_C_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','AnMeiShi_YHD_EOPS_Trade_U_M_ALL','CMG_OPS','0 15 */2 * * ?','Asia/Shanghai'),
('iQuartz','AnShuiBaoZY_TB_EOPS_Trade_C_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','AnShuiBao_DD_EHUB_Trade_U_D_AM_BIHOURLY','O_TRADE','0 0 */2 * * ?','Asia/Shanghai'),
('iQuartz','AnShuiBao_DD_EHUB_Trade_U_M_AM_BIHOURLY','O_TRADE','0 0 */2 * * ?','Asia/Shanghai'),
('iQuartz','AnShuiBao_DD_EOPS_Trade_C_M_ALL_1','CMG_OPS','0 30 8-23 * * ?','Asia/Shanghai'),
('iQuartz','AnShuiBao_TB_EHUB_Trade_U_M_AM','O_TRADE','0 30 1,15 * * ?','Asia/Shanghai'),
('iQuartz','AnShuiBao_TB_EOPS_Trade_C_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','AnShuiBao_TB_EOPS_Trade_U_M_ALL','CMG_OPS','0 15,45 8-23 * * ?','Asia/Shanghai'),
('iQuartz','AnShuiBao_TB_EOPS_Trade_U_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','AnShuiBao_YHD_EOPS_Trade_C_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','AnShuiBao_YHD_EOPS_Trade_U_M_ALL','CMG_OPS','0 30 8-23 * * ?','Asia/Shanghai'),
('iQuartz','AoXiNu_DD_EHUB_Trade_U_D_AM_BIHOURLY','O_TRADE','0 0 */2 * * ?','Asia/Shanghai'),
('iQuartz','AoXiNu_DD_EHUB_Trade_U_M_AM_BIHOURLY','O_TRADE','0 0 */2 * * ?','Asia/Shanghai'),
('iQuartz','AoXiNu_DD_EOPS_Trade_C_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','AoXiNu_DD_EOPS_Trade_U_M_ALL','CMG_OPS','0 30 */2 * * ?','Asia/Shanghai'),
('iQuartz','AoXiNu_TBFX_EHUB_Trade_U_M_ALL','O_TRADE','0 0 */2 * * ?','Asia/Shanghai'),
('iQuartz','AoXiNu_TB_EHUB_Trade_C_M_AM','O_TRADE','0 0 1,15 * * ?','Asia/Shanghai'),
('iQuartz','AoXiNu_TB_EOPS_Trade_C_M_ALL','CMG_OPS','0 15,45 8-23 * * ?','Asia/Shanghai'),
('iQuartz','AoXiNu_TB_EOPS_Trade_C_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','AoXiNu_TB_EOPS_Trade_U_M_ALL','CMG_OPS','0 30 8-23 * * ?','Asia/Shanghai'),
('iQuartz','AoXiNu_TB_EOPS_Trade_U_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','BBKZY_TB_EHUB_Trade_C_M_AM','O_TRADE','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','BBKZY_TB_EOPS_Trade_C_M_ALL_1','CMG_OPS','0 0 8-23 * * ?','Asia/Shanghai'),
('iQuartz','BBKZY_TB_EOPS_Trade_U_M_ALL_1','CMG_OPS','0 0 8-23 * * ?','Asia/Shanghai'),
('iQuartz','BBKZY_TB_EOPS_Trade_U_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','BBK_JD_EOPS_Trade_C_M_ALL','CMG_OPS','0 15 */2 * * ?','Asia/Shanghai'),
('iQuartz','BBK_JD_EOPS_Trade_C_M_AM','CMG_OPS','0 30 4,16 * * ?','Asia/Shanghai'),
('iQuartz','BBK_JD_EOPS_Trade_U_M_ALL','CMG_OPS','0 15 */2 * * ?','Asia/Shanghai'),
('iQuartz','BBK_JD_EOPS_Trade_U_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','BBK_TB_EOPS_Trade_C_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','BBK_TB_EOPS_Trade_U_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','BBK_YHD_EOPS_Trade_C_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','ChamagoFA_TB_EHUB_Trade_C_M_AM','O_TRADE','0 0 1,15 * * ?','Asia/Shanghai'),
('iQuartz','ChamagoFA_TB_EOPS_Trade_C_M_ALL','CMG_OPS','0 15 8-23 * * ?','Asia/Shanghai'),
('iQuartz','ChamagoFA_TB_EOPS_Trade_C_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','ChamagoFA_TB_EOPS_Trade_U_M_ALL','CMG_OPS','0 15 8-23 * * ?','Asia/Shanghai'),
('iQuartz','ChamagoFA_TB_EOPS_Trade_U_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','ChamagoZY_VANCL_EHUB_Trade_U_M_ALL_1','O_TRADE','0 0 7-23 * * ?','Asia/Shanghai'),
('iQuartz','ChamagoZY_VANCL_EHUB_Trade_U_M_AM','O_TRADE','0 0 1,15 * * ?','Asia/Shanghai'),
('iQuartz','ChamagoZY_VANCL_EOPS_Trade_C_M_ALL','CMG_OPS','0 15 8-23 * * ?','Asia/Shanghai'),
('iQuartz','ChamagoZY_VANCL_EOPS_Trade_C_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','ChamagoZY_VANCL_EOPS_Trade_U_M_ALL','CMG_OPS','0 15 8-23 * * ?','Asia/Shanghai'),
('iQuartz','ChamagoZY_VANCL_EOPS_Trade_U_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','DuoYangWuZY_TB_EHUB_Trade_U_M_AM','O_TRADE','0 30 1,15 * * ?','Asia/Shanghai'),
('iQuartz','DuoYangWu_PP_EOPS_Trade_C_M_ALL','CMG_OPS','0 15 8-23 * * ?','Asia/Shanghai'),
('iQuartz','DuoYangWu_TB_EHUB_Trade_C_M_AM','O_TRADE','0 0 1,15 * * ?','Asia/Shanghai'),
('iQuartz','DuoYangWu_TB_EHUB_Trade_U_M_AM','O_TRADE','0 30 1,15 * * ?','Asia/Shanghai'),
('iQuartz','DuoYangWu_TB_EOPS_Trade_C_M_ALL_1','CMG_OPS','0 15 8-23 * * ?','Asia/Shanghai'),
('iQuartz','DuoYangWu_TB_EOPS_Trade_C_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','DuoYangWu_TB_EOPS_Trade_U_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','DuoYangWu_YHD_EHUB_Trade_CU_D_AM_BIHOURLY','O_TRADE','0 0 */2 * * ?','Asia/Shanghai'),
('iQuartz','DuoYangWu_YHD_EOPS_Trade_C_M_ALL','CMG_OPS','0 15 */2 * * ?','Asia/Shanghai'),
('iQuartz','DuoYangWu_YHD_EOPS_Trade_C_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','DuoYangWu_YHD_EOPS_Trade_U_M_AM_BIHOURLY_1','CMG_OPS','0 15 */2 * * ?','Asia/Shanghai'),
('iQuartz','EREBZY_TB_EOPS_Trade_U_M_ALL','CMG_OPS','0 15 8-23 * * ?','Asia/Shanghai'),
('iQuartz','EREB_TB_EHUB_Trade_U_M_ALL_2','O_TRADE','0 0 */2 * * ?','Asia/Shanghai'),
('iQuartz','EREB_TB_EHUB_Trade_U_M_AM','O_TRADE','0 30 1,15 * * ?','Asia/Shanghai'),
('iQuartz','EREB_TB_EOPS_Trade_C_M_ALL','CMG_OPS','0 15 8-23 * * ?','Asia/Shanghai'),
('iQuartz','FeiLiPu_TB_EHUB_Trade_U_M_AM','O_TRADE','0 30 1,15 * * ?','Asia/Shanghai'),
('iQuartz','FeiLiPu_TB_EOPS_Trade_C_M_ALL','CMG_OPS','0 15 8-23 * * ?','Asia/Shanghai'),
('iQuartz','FeiLiPu_TB_EOPS_Trade_U_M_ALL','CMG_OPS','0 15 8-23 * * ?','Asia/Shanghai'),
('iQuartz','FeiLiPu_TB_EOPS_Trade_U_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','HJX_YHD_EHUB_Trade_CU_D_AM_BIHOURLY','O_TRADE','0 0 */2 * * ?','Asia/Shanghai'),
('iQuartz','HJX_YHD_EOPS_Trade_C_M_ALL','CMG_OPS','0 15 */2 * * ?','Asia/Shanghai'),
('iQuartz','HJX_YHD_EOPS_Trade_U_M_AM_BIHOURLY_1','CMG_OPS','0 15 */2 * * ?','Asia/Shanghai'),
('iQuartz','JiaDeBao_TB_EHUB_Trade_U_M_ALL_1','O_TRADE','0 0 */2 * * ?','Asia/Shanghai'),
('iQuartz','JiaDeBao_TB_EOPS_Trade_C_M_ALL','CMG_OPS','0 15 8-23 * * ?','Asia/Shanghai'),
('iQuartz','JiaDeBao_TB_EOPS_Trade_U_M_ALL','CMG_OPS','0 15 8-23 * * ?','Asia/Shanghai'),
('iQuartz','JiaDeBao_TB_EOPS_Trade_U_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','LangNeng_TB_EHUB_Trade_C_M_AM','CMG_OPS','0 0 1,15 * * ?','Asia/Shanghai'),
('iQuartz','LangNeng_TB_EOPS_Trade_C_M_AM','CMG_OPS','0 30 4,16 * * ?','Asia/Shanghai'),
('iQuartz','LangNeng_TB_EOPS_Trade_U_M_ALL','CMG_OPS','0 15 8-23 * * ?','Asia/Shanghai'),
('iQuartz','MaLanShi_TB_EHUB_Trade_C_M_ALL_1','O_TRADE','0 */30 7-23 * * ?','Asia/Shanghai'),
('iQuartz','MaLanShi_TB_EHUB_Trade_U_M_AM','O_TRADE','0 30 1,15 * * ?','Asia/Shanghai'),
('iQuartz','MaLanShi_TB_EOPS_Trade_C_M_ALL','CMG_OPS','0 15 8-23 * * ?','Asia/Shanghai'),
('iQuartz','MaLanShi_TB_EOPS_Trade_C_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','MaLanShi_TB_EOPS_Trade_U_M_ALL','CMG_OPS','0 15 8-23 * * ?','Asia/Shanghai'),
('iQuartz','MaLanShi_TB_EOPS_Trade_U_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','MBB_LB_BaiMa_Logistics_U_M_ALL','CMG_OPS','0 0 11,17 * * ?','Asia/Shanghai'),
('iQuartz','MeiYa_TB_EOPS_Trade_U_M_ALL','CMG_OPS','0 15 8-23 * * ?','Asia/Shanghai'),
('iQuartz','MeiYa_TB_EOPS_Trade_U_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','XGGJ_TB_EHUB_Trade_C_M_ALL','O_TRADE','0 */5 0.5-23 * * ?','Asia/Shanghai'),
('iQuartz','XGGJ_TB_EHUB_Trade_C_M_AM','O_TRADE','0 0 1,15 * * ?','Asia/Shanghai'),
('iQuartz','XGGJ_TB_EHUB_Trade_U_M_ALL_1','O_TRADE','0 0 */2 * * ?','Asia/Shanghai'),
('iQuartz','XGGJ_TB_EOPS_Trade_U_M_ALL','CMG_OPS','0 15 8-23 * * ?','Asia/Shanghai'),
('iQuartz','XGGJ_TB_EOPS_Trade_U_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','XiPinJi_JD_EOPS_Trade_C_M_ALL','CMG_OPS','0 30 */2 * * ?','Asia/Shanghai'),
('iQuartz','XiPinJi_JD_EOPS_Trade_U_M_ALL','CMG_OPS','0 30 */2 * * ?','Asia/Shanghai'),
('iQuartz','XiPinJi_JD_EOPS_Trade_U_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','XiPinJi_PP_EHUB_Trade_U_M_AM_BIHOURLY','O_TRADE','0 0 */2 * * ?','Asia/Shanghai'),
('iQuartz','XiPinJi_PP_EOPS_Trade_C_M_ALL','CMG_OPS','0 30 */2 * * ?','Asia/Shanghai'),
('iQuartz','XiPinJi_PP_EOPS_Trade_C_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','XiPinJi_TB_EOPS_Trade_C_M_ALL','CMG_OPS','0 30 8-23 * * ?','Asia/Shanghai'),
('iQuartz','XiPinJi_TB_EOPS_Trade_U_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','XiPinJi_YHD_EHUB_Trade_U_M_AM_BIHOURLY','O_TRADE','0 0 */2 * * ?','Asia/Shanghai'),
('iQuartz','YEJZY_TB_EOPS_Trade_C_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','YEJZY_TB_EOPS_Trade_U_M_ALL','CMG_OPS','0 15 8-23 * * ?','Asia/Shanghai'),
('iQuartz','YEJZY_TB_EOPS_Trade_U_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','YEJ_TB_EOPS_Trade_C_M_ALL','CMG_OPS','0 15 8-23 * * ?','Asia/Shanghai'),
('iQuartz','YEJ_TB_EOPS_Trade_C_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','YEJ_TB_EOPS_Trade_U_M_ALL','CMG_OPS','0 15 8-23 * * ?','Asia/Shanghai'),
('iQuartz','YEJ_TB_EOPS_Trade_U_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','YEJ_YHD_EHUB_Trade_CU_D_AM_BIHOURLY','O_TRADE','0 0 */2 * * ?','Asia/Shanghai'),
('iQuartz','YEJ_YHD_EHUB_Trade_U_M_AM_BIHOURLY','O_TRADE','0 0 */2 * * ?','Asia/Shanghai'),
('iQuartz','YEJ_YHD_EOPS_Trade_C_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai'),
('iQuartz','YEJ_YHD_EOPS_Trade_U_M_ALL','CMG_OPS','0 15 8-23 * * ?','Asia/Shanghai'),
('iQuartz','YEJ_YHD_EOPS_Trade_U_M_AM_BIHOURLY_1','CMG_OPS','0 15 8-23 * * ?','Asia/Shanghai'),
('iQuartz','YueDA_TB_EHUB_Trade_U_M_AM','O_TRADE','0 30 1,15 * * ?','Asia/Shanghai'),
('iQuartz','YueDA_TB_EOPS_Trade_C_M_ALL','CMG_OPS','0 15 8-23 * * ?','Asia/Shanghai'),
('iQuartz','YueDA_TB_EOPS_Trade_C_M_AM','CMG_OPS','0 30 4,16 * * ?','Asia/Shanghai'),
('iQuartz','YueDA_TB_EOPS_Trade_U_M_ALL','CMG_OPS','0 15 8-23 * * ?','Asia/Shanghai'),
('iQuartz','ZiJinHua_TB_EHUB_Trade_C_M_ALL_1','O_TRADE','0 0 7-23 * * ?','Asia/Shanghai'),
('iQuartz','ZiJinHua_TB_EOPS_Trade_C_M_ALL','CMG_OPS','0 15 8-23 * * ?','Asia/Shanghai'),
('iQuartz','ZiJinHua_TB_EOPS_Trade_C_M_AM','CMG_OPS','0 0 4,16 * * ?','Asia/Shanghai');

/*Table structure for table `q_fired_triggers` */

DROP TABLE IF EXISTS `q_fired_triggers`;

CREATE TABLE `q_fired_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`),
  KEY `idx_Q_ft_inst_job_req_rcvry` (`sched_name`,`instance_name`,`requests_recovery`),
  KEY `idx_Q_ft_j_g` (`sched_name`,`job_name`,`job_group`),
  KEY `idx_Q_ft_jg` (`sched_name`,`job_group`),
  KEY `idx_Q_ft_t_g` (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `idx_Q_ft_tg` (`sched_name`,`trigger_group`),
  KEY `idx_Q_ft_trig_inst_name` (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `q_fired_triggers` */

/*Table structure for table `q_group` */

DROP TABLE IF EXISTS `q_group`;

CREATE TABLE `q_group` (
  `id` varchar(24) NOT NULL DEFAULT '0',
  `name` varchar(256) DEFAULT NULL,
  `status` varchar(24) DEFAULT NULL,
  `type` varchar(24) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `creator` varchar(24) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_id` (`id`),
  KEY `idx_status` (`status`),
  KEY `idx_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=2340;

/*Data for the table `q_group` */

insert  into `q_group`(`id`,`name`,`status`,`type`,`description`,`creator`,`created`) values 
('1001','CMG_CRM','ENABLED','CMG','CRM','admin','2013-08-05 18:01:55'),
('1002','CMG_OPS','ENABLED','CMG','OPS','admin','2013-08-05 18:01:53'),
('1003','O_TRADE','ENABLED','TRADE','TRADE','admin','2013-08-05 17:58:25'),
('1004','O_USER','ENABLED','USER','USER','admin','2013-08-05 17:58:21'),
('1005','O_ITEM','ENABLED','ITEM','ITEM','admin','2013-08-05 17:58:12'),
('1006','O_ACOOKIE','ENABLED','ACOOKIE','ACOOKIE','admin','2013-08-05 17:58:11'),
('1007','O_EXPRESS','ENABLED','EXPRESS','EXPRESS','admin','2013-08-05 17:58:00');

/*Table structure for table `q_job_details` */

DROP TABLE IF EXISTS `q_job_details`;

CREATE TABLE `q_job_details` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`),
  KEY `idx_Q_j_grp` (`sched_name`,`job_group`),
  KEY `idx_Q_j_req_recovery` (`sched_name`,`requests_recovery`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=978;

/*Data for the table `q_job_details` */

insert  into `q_job_details`(`sched_name`,`job_name`,`job_group`,`description`,`job_class_name`,`is_durable`,`is_nonconcurrent`,`is_update_data`,`requests_recovery`,`job_data`) values 
('iQuartz','ALL_PP_EHUB_Item_CU_M_ALL','O_ITEM','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0dbt\0ehubt\0api_idt\0paipaiv2t\0dirt\0/com.paipai/commt\0repot\0Kettlet\0namet\0cmg.job.runner.paipait\0isAsynct\0falset\0domaint\0com.paipai/itemt\0app_keyt\0	700143427t\0loggingt\0\0t\0methodt\0paipai.seller.search.item.listt\0typet\0jobx\0'),
('iQuartz','AnMeiShi_DD_EOPS_Trade_C_M_AM','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec302t\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\010943t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','AnMeiShi_DD_EOPS_Trade_U_M_ALL_1','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec302t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-15t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\010943t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','AnMeiShi_TB_EHUB_Trade_C_M_AM','O_TRADE','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0dbt\0ehubt\0api_idt\0px2t\0nickt\0ÂÆâÁæéÊ∞èÊóóËà∞Â∫ót\0\rstart_createdt\0$-1800t\0dirt\0/com.taobao/tradet\0repot\0Kettlet\0namet\0&taobao.trades.sold.get.bythreads.hbaset\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\021249239t\0typet\0jobt\0end_createdt\0$0x\0'),
('iQuartz','AnMeiShi_TB_EOPS_Trade_C_M_ALL_1','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec101t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\0\n1730712135t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','AnMeiShi_TB_EOPS_Trade_C_M_AM','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec101t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\0\n1730712135t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','AnMeiShi_YHD_EHUB_Trade_U_M_ALL_1','O_TRADE','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0	startTimet\0$-180t\0api_idt\0yhdx1t\0dbt\0ehubt\0dirt\0/com.yhd/orderst\0repot\0Kettlet\0namet\0yhd.orders.gett\0isAsynct\0falset\0\nmerchantIdt\047855t\0loggingt\0\0t\0typet\0jobt\0endTimet\0$0t\0dateTypet\05x\0'),
('iQuartz','AnMeiShi_YHD_EOPS_Trade_C_M_AM','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec301t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\047855t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','AnMeiShi_YHD_EOPS_Trade_U_M_ALL','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec301t\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\047855t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','AnShuiBaoZY_TB_EOPS_Trade_C_M_AM','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec102t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\0	919104566t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','AnShuiBao_DD_EHUB_Trade_U_D_AM_BIHOURLY','O_TRADE','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0dbt\0ehubt\0api_idt\0ddx2t\0shop_idt\09146t\0dirt\0/com.dangdang/orderst\0end_timet\0$-150t\0repot\0Kettlet\0namet\0dangdang.order.detail.get.hbaset\0isAsynct\0falset\0\nstart_timet\0$0t\0loggingt\0\0t\0typet\0jobx\0'),
('iQuartz','AnShuiBao_DD_EHUB_Trade_U_M_AM_BIHOURLY','O_TRADE','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0ost\09999t\0dbt\0ehubt\0api_idt\0ddx2t\0shop_idt\09146t\0dirt\0/com.dangdang/orderst\0osdt\0$-150t\0repot\0Kettlet\0namet\0dangdang.orders.search.hbaset\0isAsynct\0falset\0loggingt\0\0t\0oedt\0$0t\0typet\0jobx\0'),
('iQuartz','AnShuiBao_DD_EOPS_Trade_C_M_ALL_1','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec301t\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\09146t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','AnShuiBao_TB_EHUB_Trade_U_M_AM','O_TRADE','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0api_idt\0px2t\0dbt\0ehubt\0nickt\0ÂÆâÁù°ÂÆùÂÆòÊñπÊóóËà∞Â∫ót\0dirt\0/com.taobao/tradet\0start_modifiedt\0$-1800t\0repot\0Kettlet\0namet\0&taobao.trades.sold.increment.get.hbaset\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\021249239t\0typet\0jobt\0end_modifiedt\0$0x\0'),
('iQuartz','AnShuiBao_TB_EOPS_Trade_C_M_AM','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec101t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\0	695171870t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','AnShuiBao_TB_EOPS_Trade_U_M_ALL','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec101t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\0	695171870t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','AnShuiBao_TB_EOPS_Trade_U_M_AM','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec101t\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\0	695171870t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','AnShuiBao_YHD_EOPS_Trade_C_M_AM','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec301t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\011684t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','AnShuiBao_YHD_EOPS_Trade_U_M_ALL','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec301t\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\011684t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','AoXiNu_DD_EHUB_Trade_U_D_AM_BIHOURLY','O_TRADE','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0dbt\0ehubt\0api_idt\0ddx2t\0shop_idt\09739t\0dirt\0/com.dangdang/orderst\0end_timet\0$-150t\0repot\0Kettlet\0namet\0dangdang.order.detail.get.hbaset\0isAsynct\0falset\0\nstart_timet\0$0t\0loggingt\0\0t\0typet\0jobx\0'),
('iQuartz','AoXiNu_DD_EHUB_Trade_U_M_AM_BIHOURLY','O_TRADE','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0ost\09999t\0dbt\0ehubt\0api_idt\0ddx2t\0shop_idt\09739t\0dirt\0/com.dangdang/orderst\0osdt\0$-150t\0repot\0Kettlet\0namet\0dangdang.orders.search.hbaset\0isAsynct\0falset\0loggingt\0\0t\0oedt\0$0t\0typet\0jobx\0'),
('iQuartz','AoXiNu_DD_EOPS_Trade_C_M_AM','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec302t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\09739t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','AoXiNu_DD_EOPS_Trade_U_M_ALL','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec302t\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\09739t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','AoXiNu_TBFX_EHUB_Trade_U_M_ALL','O_TRADE','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0\rt\0api_idt\0px2t\0dbt\0ehubt\0\rstart_createdt\0$-1440t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\021249239t\0typet\0jobt\0	time_typet\0update_time_typet\0nickt\0Êæ≥Ë•øÂ•¥ÂÆ∂Á∫∫ÊóóËà∞Â∫ót\0dirt\0/com.taobao/tradet\0repot\0Kettlet\0namet\0taobao.fenxiao.orders.get.hbaset\0end_createdt\0$0x\0'),
('iQuartz','AoXiNu_TB_EHUB_Trade_C_M_AM','O_TRADE','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0api_idt\0px2t\0dbt\0ehubt\0nickt\0Êæ≥Ë•øÂ•¥ÂÆ∂Á∫∫ÊóóËà∞Â∫ót\0\rstart_createdt\0$-1800t\0dirt\0/com.taobao/tradet\0repot\0Kettlet\0namet\0&taobao.trades.sold.get.bythreads.hbaset\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\021249239t\0typet\0jobt\0end_createdt\0$0x\0'),
('iQuartz','AoXiNu_TB_EOPS_Trade_C_M_ALL','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec101t\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\0	822841665t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','AoXiNu_TB_EOPS_Trade_C_M_AM','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec101t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\0	822841665t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','AoXiNu_TB_EOPS_Trade_U_M_ALL','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec101t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-180t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\0	822841665t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','AoXiNu_TB_EOPS_Trade_U_M_AM','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec101t\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\0	822841665t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','BBKZY_TB_EHUB_Trade_C_M_AM','O_TRADE','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0api_idt\0px2t\0dbt\0ehubt\0nickt\0ËÉåËÉå‰Ω≥Â∑•ÂéÇÁõ¥Ëê•Â∫ót\0\rstart_createdt\0$-1800t\0dirt\0/com.taobao/tradet\0repot\0Kettlet\0namet\0&taobao.trades.sold.get.bythreads.hbaset\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\021249239t\0typet\0jobt\0end_createdt\0$0x\0'),
('iQuartz','BBKZY_TB_EOPS_Trade_C_M_ALL_1','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec102t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\0	807871873t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','BBKZY_TB_EOPS_Trade_U_M_ALL_1','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec102t\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\0	807871873t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','BBKZY_TB_EOPS_Trade_U_M_AM','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec102t\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\0	807871873t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','BBK_JD_EOPS_Trade_C_M_ALL','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec303t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\032617t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','BBK_JD_EOPS_Trade_C_M_AM','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec303t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\032617t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','BBK_JD_EOPS_Trade_U_M_ALL','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec303t\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\032617t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','BBK_JD_EOPS_Trade_U_M_AM','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec303t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\032617t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','BBK_TB_EOPS_Trade_C_M_AM','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec101t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\0	806889602t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','BBK_TB_EOPS_Trade_U_M_AM','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec101t\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\0	806889602t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','BBK_YHD_EOPS_Trade_C_M_AM','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec301t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\04872t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','ChamagoFA_TB_EHUB_Trade_C_M_AM','O_TRADE','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0api_idt\0px2t\0dbt\0ehubt\0nickt\0Ëå∂È©¨Âè§ÈÅìÂÆ∂Ë£Ö‰∏ìËê•Â∫ót\0\rstart_createdt\0$-1800t\0dirt\0/com.taobao/tradet\0repot\0Kettlet\0namet\0&taobao.trades.sold.get.bythreads.hbaset\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\021249239t\0typet\0jobt\0end_createdt\0$0x\0'),
('iQuartz','ChamagoFA_TB_EOPS_Trade_C_M_ALL','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec101t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\0\n1635425978t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','ChamagoFA_TB_EOPS_Trade_C_M_AM','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec101t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\0\n1635425978t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','ChamagoFA_TB_EOPS_Trade_U_M_ALL','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec101t\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\0\n1635425978t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','ChamagoFA_TB_EOPS_Trade_U_M_AM','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec101t\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\0\n1635425978t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','ChamagoZY_VANCL_EHUB_Trade_U_M_ALL_1','O_TRADE','vancl.order.getall.hbase','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0api_idt\0vanclt\0dbt\0ehubt\0\nbegin_timet\0$-150t\0dirt\0/com.vancl/orderst\0end_timet\0$0t\0repot\0Kettlet\0namet\0vancl.order.getall.hbaset\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\0\nvanclchamat\0typet\0jobx\0'),
('iQuartz','ChamagoZY_VANCL_EHUB_Trade_U_M_AM','O_TRADE','vancl.order.getall.hbase','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0api_idt\0vanclt\0dbt\0ehubt\0\nbegin_timet\0$-1800t\0end_timet\0$0t\0dirt\0/com.vancl/orderst\0repot\0Kettlet\0namet\0vancl.order.getall.hbaset\0isAsynct\0falset\0app_keyt\0\nvanclchamat\0loggingt\0\0t\0typet\0jobx\0'),
('iQuartz','ChamagoZY_VANCL_EOPS_Trade_C_M_ALL','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec315t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\0\nvanclchamat\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\0P461t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','ChamagoZY_VANCL_EOPS_Trade_C_M_AM','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec315t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\0\nvanclchamat\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\0P461t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','ChamagoZY_VANCL_EOPS_Trade_U_M_ALL','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec315t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\0\nvanclchamat\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\0P461t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','ChamagoZY_VANCL_EOPS_Trade_U_M_AM','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec315t\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\0\nvanclchamat\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\0P461t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','CRM_BI_TB_SALE_DAILY','CMG_CRM','cmg.bi.sales.daily.taobao','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0	t\0api_idt\0px2t\0dbt\0ehubt\0dirt\0/com.chamago/dashboardt\0repot\0Kettlet\0namet\0cmg.bi.sales.daily.taobaot\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\021249239t\0typet\0jobx\0'),
('iQuartz','CRM_BI_TB_SALE_MONTHLY_SUCCESS','CMG_CRM','cmg.bi.sales.monthly.taobao.success','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0	t\0api_idt\0px2t\0dbt\0ehubt\0dirt\0/com.chamago/dashboardt\0repot\0Kettlet\0namet\0#cmg.bi.sales.monthly.taobao.successt\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\021249239t\0typet\0jobx\0'),
('iQuartz','DuoYangWuZY_TB_EHUB_Trade_U_M_AM','O_TRADE','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0api_idt\0px2t\0dbt\0ehubt\0nickt\0Â§öÊ†∑Â±ãÂîØ‰∏ÄÁõ¥Ëê•ÊéàÊùÉÂ∫ót\0dirt\0/com.taobao/tradet\0start_modifiedt\0$-1800t\0repot\0Kettlet\0namet\0&taobao.trades.sold.increment.get.hbaset\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\021249239t\0typet\0jobt\0end_modifiedt\0$0x\0'),
('iQuartz','DuoYangWu_PP_EOPS_Trade_C_M_ALL','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec309t\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\0\n2751999144t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','DuoYangWu_TB_EHUB_Trade_C_M_AM','O_TRADE','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0api_idt\0px2t\0dbt\0ehubt\0nickt\0Â§öÊ†∑Â±ãÂÆ∂Â±ÖÊóóËà∞Â∫ót\0\rstart_createdt\0$-1800t\0dirt\0/com.taobao/tradet\0repot\0Kettlet\0namet\0&taobao.trades.sold.get.bythreads.hbaset\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\021249239t\0typet\0jobt\0end_createdt\0$0x\0'),
('iQuartz','DuoYangWu_TB_EHUB_Trade_U_M_AM','O_TRADE','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0api_idt\0px2t\0dbt\0ehubt\0nickt\0Â§öÊ†∑Â±ãÂÆ∂Â±ÖÊóóËà∞Â∫ót\0dirt\0/com.taobao/tradet\0start_modifiedt\0$-1800t\0repot\0Kettlet\0namet\0&taobao.trades.sold.increment.get.hbaset\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\021249239t\0typet\0jobt\0end_modifiedt\0$0x\0'),
('iQuartz','DuoYangWu_TB_EOPS_Trade_C_M_ALL_1','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec101t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\0	106931504t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','DuoYangWu_TB_EOPS_Trade_C_M_AM','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec101t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\0	106931504t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','DuoYangWu_TB_EOPS_Trade_U_M_AM','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec101t\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\0	106931504t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','DuoYangWu_YHD_EHUB_Trade_CU_D_AM_BIHOURLY','O_TRADE','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0	startTimet\0$-150t\0dbt\0ehubt\0api_idt\0yhdx1t\0dirt\0/com.yhd/orderst\0repot\0Kettlet\0namet\0yhd.orders.detail.get.hbaset\0isAsynct\0falset\0\nmerchantIdt\021151t\0loggingt\0\0t\0typet\0jobt\0endTimet\0$0x\0'),
('iQuartz','DuoYangWu_YHD_EOPS_Trade_C_M_ALL','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec301t\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\021151t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','DuoYangWu_YHD_EOPS_Trade_C_M_AM','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec301t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\021151t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','DuoYangWu_YHD_EOPS_Trade_U_M_AM_BIHOURLY_1','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec301t\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\021151t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','EREBZY_TB_EOPS_Trade_U_M_ALL','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec102t\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\0	871585317t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','EREB_TB_EHUB_Trade_U_M_ALL_2','O_TRADE','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0api_idt\0px2t\0dbt\0ehubt\0nickt\0e‰∫∫eÊú¨ÊóóËà∞Â∫ót\0dirt\0/com.taobao/tradet\0start_modifiedt\0$-180t\0repot\0Kettlet\0namet\0&taobao.trades.sold.increment.get.hbaset\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\021249239t\0typet\0jobt\0end_modifiedt\0$0x\0'),
('iQuartz','EREB_TB_EHUB_Trade_U_M_AM','O_TRADE','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0api_idt\0px2t\0dbt\0ehubt\0nickt\0e‰∫∫eÊú¨ÊóóËà∞Â∫ót\0dirt\0/com.taobao/tradet\0start_modifiedt\0$-1800t\0repot\0Kettlet\0namet\0&taobao.trades.sold.increment.get.hbaset\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\021249239t\0typet\0jobt\0end_modifiedt\0$0x\0'),
('iQuartz','EREB_TB_EOPS_Trade_C_M_ALL','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec101t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\0	698781522t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','FeiLiPu_TB_EHUB_Trade_U_M_AM','O_TRADE','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0api_idt\0px2t\0dbt\0ehubt\0nickt\0È£ûÂà©Êµ¶Ëå∂È©¨Âè§ÈÅì‰∏ìÂçñÂ∫ót\0dirt\0/com.taobao/tradet\0start_modifiedt\0$-1800t\0repot\0Kettlet\0namet\0&taobao.trades.sold.increment.get.hbaset\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\021249239t\0typet\0jobt\0end_modifiedt\0$0x\0'),
('iQuartz','FeiLiPu_TB_EOPS_Trade_C_M_ALL','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec101t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\0\n1063153255t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','FeiLiPu_TB_EOPS_Trade_U_M_ALL','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec101t\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\0\n1063153255t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','FeiLiPu_TB_EOPS_Trade_U_M_AM','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec101t\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\0\n1063153255t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','HJX_YHD_EHUB_Trade_CU_D_AM_BIHOURLY','O_TRADE','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0	startTimet\0$-150t\0dbt\0ehubt\0api_idt\0yhdx1t\0dirt\0/com.yhd/orderst\0repot\0Kettlet\0namet\0yhd.orders.detail.get.hbaset\0isAsynct\0falset\0\nmerchantIdt\0HJX_YHD_EHUB_Trade_CU_D_ALLt\0loggingt\0\0t\0typet\0jobt\0endTimet\0$0x\0'),
('iQuartz','HJX_YHD_EOPS_Trade_C_M_ALL','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec301t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-120t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\024056t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','HJX_YHD_EOPS_Trade_U_M_AM_BIHOURLY_1','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec301t\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\024056t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','JiaDeBao_TB_EHUB_Trade_U_M_ALL_1','O_TRADE','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0api_idt\0px2t\0dbt\0ehubt\0nickt\0ÂÆ∂ÂæóÂÆùÂÆòÊñπÊóóËà∞Â∫ót\0dirt\0/com.taobao/tradet\0start_modifiedt\0$-180t\0repot\0Kettlet\0namet\0&taobao.trades.sold.increment.get.hbaset\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\021249239t\0typet\0jobt\0end_modifiedt\0$0x\0'),
('iQuartz','JiaDeBao_TB_EOPS_Trade_C_M_ALL','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec101t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\0\n1665345942t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','JiaDeBao_TB_EOPS_Trade_U_M_ALL','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec101t\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\0\n1665345942t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','JiaDeBao_TB_EOPS_Trade_U_M_AM','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec101t\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\0\n1665345942t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','LangNeng_TB_EHUB_Trade_C_M_AM','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0api_idt\0px2t\0dbt\0ehubt\0nickt\0ÊúóËÉΩÂÆòÊñπÊóóËà∞Â∫ót\0\rstart_createdt\0$-1800t\0dirt\0/com.taobao/tradet\0repot\0Kettlet\0namet\0&taobao.trades.sold.get.bythreads.hbaset\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\021249239t\0typet\0jobt\0end_createdt\0$0x\0'),
('iQuartz','LangNeng_TB_EOPS_Trade_C_M_AM','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec101t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\0\n1726693563t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','LangNeng_TB_EOPS_Trade_U_M_ALL','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec101t\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\0\n1726693563t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','MaLanShi_TB_EHUB_Trade_C_M_ALL_1','O_TRADE','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0api_idt\0px2t\0dbt\0ehubt\0nickt\0È©¨ÂÖ∞Â£´ÂÆòÊñπÊóóËà∞Â∫ót\0\rstart_createdt\0$-120t\0dirt\0/com.taobao/tradet\0repot\0Kettlet\0namet\0&taobao.trades.sold.get.bythreads.hbaset\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\021249239t\0typet\0jobt\0end_createdt\0$0x\0'),
('iQuartz','MaLanShi_TB_EHUB_Trade_U_M_AM','O_TRADE','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0api_idt\0px2t\0dbt\0ehubt\0nickt\0È©¨ÂÖ∞Â£´ÂÆòÊñπÊóóËà∞Â∫ót\0dirt\0/com.taobao/tradet\0start_modifiedt\0$-1800t\0repot\0Kettlet\0namet\0&taobao.trades.sold.increment.get.hbaset\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\021249239t\0typet\0jobt\0end_modifiedt\0$0x\0'),
('iQuartz','MaLanShi_TB_EOPS_Trade_C_M_ALL','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec101t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\0	776218341t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','MaLanShi_TB_EOPS_Trade_C_M_AM','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec101t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\0	776218341t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','MaLanShi_TB_EOPS_Trade_U_M_ALL','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec101t\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\0	776218341t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','MaLanShi_TB_EOPS_Trade_U_M_AM','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec101t\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\0	776218341t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','MBB_LB_BaiMa_Logistics_U_M_ALL','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0dirt\0/com.luxurybeautyt\0repot\0Kettlet\0namet\0UpdateLogisticsStatusFromBaiMat\0isAsynct\0falset\0loggingt\0\0t\0typet\0jobx\0'),
('iQuartz','MeiYa_TB_EOPS_Trade_U_M_ALL','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec101t\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\0	894246909t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','MeiYa_TB_EOPS_Trade_U_M_AM','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec101t\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\0	894246909t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','XGGJ_TB_EHUB_Trade_C_M_ALL','O_TRADE','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0api_idt\0px2t\0dbt\0ehubt\0nickt\0Ê©°ÊûúÂõΩÈôÖÂÆòÊñπÊóóËà∞Â∫ót\0\rstart_createdt\0$-15t\0dirt\0/com.taobao/tradet\0repot\0Kettlet\0namet\0&taobao.trades.sold.get.bythreads.hbaset\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\021249239t\0typet\0jobt\0end_createdt\0$0x\0'),
('iQuartz','XGGJ_TB_EHUB_Trade_C_M_AM','O_TRADE','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0api_idt\0px2t\0dbt\0ehubt\0nickt\0Ê©°ÊûúÂõΩÈôÖÂÆòÊñπÊóóËà∞Â∫ót\0\rstart_createdt\0$-1800t\0dirt\0/com.taobao/tradet\0repot\0Kettlet\0namet\0&taobao.trades.sold.get.bythreads.hbaset\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\021249239t\0typet\0jobt\0end_createdt\0$0x\0'),
('iQuartz','XGGJ_TB_EHUB_Trade_U_M_ALL_1','O_TRADE','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0dbt\0ehubt\0api_idt\0px2t\0nickt\0Ê©°ÊûúÂõΩÈôÖÂÆòÊñπÊóóËà∞Â∫ót\0dirt\0/com.taobao/tradet\0start_modifiedt\0$-180t\0repot\0Kettlet\0namet\0&taobao.trades.sold.increment.get.hbaset\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\021249239t\0typet\0jobt\0end_modifiedt\0$0x\0'),
('iQuartz','XGGJ_TB_EOPS_Trade_U_M_ALL','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec101t\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\0	912054893t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','XGGJ_TB_EOPS_Trade_U_M_AM','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec101t\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\0	912054893t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','XiPinJi_JD_EOPS_Trade_C_M_ALL','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec303t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\026172t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','XiPinJi_JD_EOPS_Trade_U_M_ALL','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec303t\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\026172t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','XiPinJi_JD_EOPS_Trade_U_M_AM','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec303t\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\026172t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','XiPinJi_PP_EHUB_Trade_U_M_AM_BIHOURLY','O_TRADE','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0user_uint\0\n2450543158t\0	page_sizet\020t\0dbt\0ehubt\0api_idt\0paipaiv2t\0\npage_indext\01t\0\ntime_begint\0$-150t\0isAsynct\0falset\0app_keyt\0	700143427t\0loggingt\0\0t\0typet\0jobt\0dirt\0/com.paipai/orderst\0repot\0Kettlet\0namet\0paipai.seller.search.deal.listt\0time_endt\0$0x\0'),
('iQuartz','XiPinJi_PP_EOPS_Trade_C_M_ALL','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec309t\0start_modifiedt\0$-180t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\0\n2450543158t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','XiPinJi_PP_EOPS_Trade_C_M_AM','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec309t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\0\n2450543158t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','XiPinJi_TB_EOPS_Trade_C_M_ALL','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec101t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\0	875959680t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','XiPinJi_TB_EOPS_Trade_U_M_AM','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec101t\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\0	875959680t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','XiPinJi_YHD_EHUB_Trade_U_M_AM_BIHOURLY','O_TRADE','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0	startTimet\0$0t\0api_idt\0yhdx1t\0dbt\0ehubt\0dirt\0/com.yhd/orderst\0repot\0Kettlet\0namet\0yhd.orders.gett\0isAsynct\0falset\0\nmerchantIdt\023270t\0loggingt\0\0t\0typet\0jobt\0endTimet\0$-150t\0dateTypet\01x\0'),
('iQuartz','YEJZY_TB_EOPS_Trade_C_M_AM','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec102t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\0	872464781t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','YEJZY_TB_EOPS_Trade_U_M_ALL','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec102t\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\0	872464781t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','YEJZY_TB_EOPS_Trade_U_M_AM','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec102t\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\0	872464781t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','YEJ_TB_EOPS_Trade_C_M_ALL','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec101t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\0	872464781t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','YEJ_TB_EOPS_Trade_C_M_AM','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec101t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-1800t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\0	872464781t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','YEJ_TB_EOPS_Trade_U_M_ALL','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec101t\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\0	853641722t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','YEJ_TB_EOPS_Trade_U_M_AM','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec101t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\0	853641722t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','YEJ_YHD_EHUB_Trade_CU_D_AM_BIHOURLY','O_TRADE','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0	startTimet\0$-150t\0dbt\0ehubt\0api_idt\0yhdx1t\0dirt\0/com.yhd/orderst\0repot\0Kettlet\0namet\0yhd.orders.detail.get.hbaset\0isAsynct\0falset\0\nmerchantIdt\08735t\0loggingt\0\0t\0typet\0jobt\0endTimet\0$0x\0'),
('iQuartz','YEJ_YHD_EHUB_Trade_U_M_AM_BIHOURLY','O_TRADE','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0	startTimet\0$0t\0dbt\0ehubt\0api_idt\0yhdx1t\0dirt\0/com.yhd/orderst\0repot\0Kettlet\0namet\0yhd.orders.gett\0isAsynct\0falset\0\nmerchantIdt\08735t\0loggingt\0\0t\0typet\0jobt\0endTimet\0$-150t\0dateTypet\05x\0'),
('iQuartz','YEJ_YHD_EOPS_Trade_C_M_AM','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec301t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\08735t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','YEJ_YHD_EOPS_Trade_U_M_ALL','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec301t\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\08735t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','YEJ_YHD_EOPS_Trade_U_M_AM_BIHOURLY_1','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec301t\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\08735t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','YueDA_TB_EHUB_Trade_U_M_AM','O_TRADE','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0api_idt\0px2t\0dbt\0ehubt\0nickt\0ÊÇ¶ËææÂÆ∂Á∫∫ÂÆ∂Â±ÖÊóóËà∞Â∫ót\0dirt\0/com.taobao/tradet\0start_modifiedt\0$-1800t\0repot\0Kettlet\0namet\0&taobao.trades.sold.increment.get.hbaset\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\021249239t\0typet\0jobt\0end_modifiedt\0$0x\0'),
('iQuartz','YueDA_TB_EOPS_Trade_C_M_ALL','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec101t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\0\n1620903538t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','YueDA_TB_EOPS_Trade_C_M_AM','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec101t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\0\n1620903538t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','YueDA_TB_EOPS_Trade_U_M_ALL','CMG_OPS','cmg.ehub.trade.increment.get','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0api_idt\0ehubt\0dbt\0eopst\0platformt\0ec101t\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.increment.gett\0user_idt\0\n1620903538t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','ZiJinHua_TB_EHUB_Trade_C_M_ALL_1','O_TRADE','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0api_idt\0px2t\0dbt\0ehubt\0nickt\0Á¥´ËçÜËä±ÂÆòÊñπÊóóËà∞Â∫ót\0\rstart_createdt\0$-150t\0dirt\0/com.taobao/tradet\0repot\0Kettlet\0namet\0&taobao.trades.sold.get.bythreads.hbaset\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\021249239t\0typet\0jobt\0end_createdt\0$0x\0'),
('iQuartz','ZiJinHua_TB_EOPS_Trade_C_M_ALL','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec101t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-150t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\0	902688752t\0page_not\00t\0end_modifiedt\0$0x\0'),
('iQuartz','ZiJinHua_TB_EOPS_Trade_C_M_AM','CMG_OPS','','org.ukettle.service.execute.KettleExecService','0','0','0','0','¨Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇË√˚≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapÊ.≠(v\nŒ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0 \0\0\0t\0platformt\0ec101t\0dbt\0eopst\0api_idt\0ehubt\0start_modifiedt\0$-1980t\0isAsynct\0falset\0loggingt\0\0t\0app_keyt\010000103t\0typet\0jobt\0dirt\0/com.chamago/e-hub/tradet\0repot\0Kettlet\0namet\0cmg.ehub.trade.sold.gett\0user_idt\0	902688752t\0page_not\00t\0end_modifiedt\0$0x\0');

/*Table structure for table `q_locks` */

DROP TABLE IF EXISTS `q_locks`;

CREATE TABLE `q_locks` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192;

/*Data for the table `q_locks` */

insert  into `q_locks`(`sched_name`,`lock_name`) values 
('iQuartz','STATE_ACCESS'),
('iQuartz','TRIGGER_ACCESS');

/*Table structure for table `q_paused_trigger_grps` */

DROP TABLE IF EXISTS `q_paused_trigger_grps`;

CREATE TABLE `q_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `q_paused_trigger_grps` */

/*Table structure for table `q_scheduler_state` */

DROP TABLE IF EXISTS `q_scheduler_state`;

CREATE TABLE `q_scheduler_state` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384;

/*Data for the table `q_scheduler_state` */

insert  into `q_scheduler_state`(`sched_name`,`instance_name`,`last_checkin_time`,`checkin_interval`) values 
('iQuartz','Miracle1427864860176',1427867570919,20000);

/*Table structure for table `q_simple_triggers` */

DROP TABLE IF EXISTS `q_simple_triggers`;

CREATE TABLE `q_simple_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `q_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `q_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192;

/*Data for the table `q_simple_triggers` */

insert  into `q_simple_triggers`(`sched_name`,`trigger_name`,`trigger_group`,`repeat_count`,`repeat_interval`,`times_triggered`) values 
('iQuartz','CRM_BI_TB_SALE_DAILY','CMG_CRM',-1,900000,45397),
('iQuartz','CRM_BI_TB_SALE_MONTHLY_SUCCESS','CMG_CRM',-1,900000,45397);

/*Table structure for table `q_simprop_triggers` */

DROP TABLE IF EXISTS `q_simprop_triggers`;

CREATE TABLE `q_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int(11) DEFAULT NULL,
  `int_prop_2` int(11) DEFAULT NULL,
  `long_prop_1` bigint(20) DEFAULT NULL,
  `long_prop_2` bigint(20) DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `q_simprop_triggers_pk` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `q_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `q_simprop_triggers` */

/*Table structure for table `q_triggers` */

DROP TABLE IF EXISTS `q_triggers`;

CREATE TABLE `q_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint(13) DEFAULT NULL,
  `prev_fire_time` bigint(13) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint(2) DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `idx_Q_t_c` (`sched_name`,`calendar_name`),
  KEY `idx_Q_t_g` (`sched_name`,`trigger_group`),
  KEY `idx_Q_t_j` (`sched_name`,`job_name`,`job_group`),
  KEY `idx_Q_t_jg` (`sched_name`,`job_group`),
  KEY `idx_Q_t_n_g_state` (`sched_name`,`trigger_group`,`trigger_state`),
  KEY `idx_Q_t_n_state` (`sched_name`,`trigger_name`,`trigger_group`,`trigger_state`),
  KEY `idx_Q_t_next_fire_time` (`sched_name`,`next_fire_time`),
  KEY `idx_Q_t_nft_misfire` (`sched_name`,`misfire_instr`,`next_fire_time`),
  KEY `idx_Q_t_nft_st` (`sched_name`,`trigger_state`,`next_fire_time`),
  KEY `idx_Q_t_nft_st_misfire` (`sched_name`,`misfire_instr`,`next_fire_time`,`trigger_state`),
  KEY `idx_Q_t_nft_st_misfire_grp` (`sched_name`,`misfire_instr`,`next_fire_time`,`trigger_group`,`trigger_state`),
  KEY `idx_Q_t_state` (`sched_name`,`trigger_state`),
  CONSTRAINT `q_triggers_pk` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `q_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=450;

/*Data for the table `q_triggers` */

insert  into `q_triggers`(`sched_name`,`trigger_name`,`trigger_group`,`job_name`,`job_group`,`description`,`next_fire_time`,`prev_fire_time`,`priority`,`trigger_state`,`trigger_type`,`start_time`,`end_time`,`calendar_name`,`misfire_instr`,`job_data`) values 
('iQuartz','ALL_PP_EHUB_Item_CU_M_ALL','O_ITEM','ALL_PP_EHUB_Item_CU_M_ALL','O_ITEM','',1381924800000,1381913940000,5,'PAUSED','CRON',1381297402000,0,NULL,0,''),
('iQuartz','AnMeiShi_DD_EOPS_Trade_C_M_AM','CMG_OPS','AnMeiShi_DD_EOPS_Trade_C_M_AM','CMG_OPS','',1387958400000,1387915200000,5,'PAUSED','CRON',1380165750000,0,NULL,0,''),
('iQuartz','AnMeiShi_DD_EOPS_Trade_U_M_ALL_1','CMG_OPS','AnMeiShi_DD_EOPS_Trade_U_M_ALL_1','CMG_OPS','',1387944900000,1387937700000,5,'PAUSED','CRON',1383620610000,0,NULL,0,''),
('iQuartz','AnMeiShi_TB_EHUB_Trade_C_M_AM','O_TRADE','AnMeiShi_TB_EHUB_Trade_C_M_AM','O_TRADE','',1422205200000,1422170354011,5,'PAUSED','CRON',1381314048000,0,NULL,0,''),
('iQuartz','AnMeiShi_TB_EOPS_Trade_C_M_ALL_1','CMG_OPS','AnMeiShi_TB_EOPS_Trade_C_M_ALL_1','CMG_OPS','',1384042500000,1384010100000,5,'PAUSED','CRON',1383620324000,0,NULL,0,''),
('iQuartz','AnMeiShi_TB_EOPS_Trade_C_M_AM','CMG_OPS','AnMeiShi_TB_EOPS_Trade_C_M_AM','CMG_OPS','',1384027200000,1383984000000,5,'PAUSED','CRON',1380162559000,0,NULL,0,''),
('iQuartz','AnMeiShi_YHD_EHUB_Trade_U_M_ALL_1','O_TRADE','AnMeiShi_YHD_EHUB_Trade_U_M_ALL_1','O_TRADE','',1422172800000,1422170352874,5,'PAUSED','CRON',1383213021000,0,NULL,0,''),
('iQuartz','AnMeiShi_YHD_EOPS_Trade_C_M_AM','CMG_OPS','AnMeiShi_YHD_EOPS_Trade_C_M_AM','CMG_OPS','',1387958400000,1387915200000,5,'PAUSED','CRON',1380164114000,0,NULL,0,''),
('iQuartz','AnMeiShi_YHD_EOPS_Trade_U_M_ALL','CMG_OPS','AnMeiShi_YHD_EOPS_Trade_U_M_ALL','CMG_OPS','',1387944900000,1387937700000,5,'PAUSED','CRON',1383620466000,0,NULL,0,''),
('iQuartz','AnShuiBaoZY_TB_EOPS_Trade_C_M_AM','CMG_OPS','AnShuiBaoZY_TB_EOPS_Trade_C_M_AM','CMG_OPS','',1384027200000,1383984000000,5,'PAUSED','CRON',1381314204000,0,NULL,0,''),
('iQuartz','AnShuiBao_DD_EHUB_Trade_U_D_AM_BIHOURLY','O_TRADE','AnShuiBao_DD_EHUB_Trade_U_D_AM_BIHOURLY','O_TRADE','',1422172800000,1422170353622,5,'PAUSED','CRON',1381486084000,0,NULL,0,''),
('iQuartz','AnShuiBao_DD_EHUB_Trade_U_M_AM_BIHOURLY','O_TRADE','AnShuiBao_DD_EHUB_Trade_U_M_AM_BIHOURLY','O_TRADE','',1422172800000,1422170353637,5,'PAUSED','CRON',1381485994000,0,NULL,0,''),
('iQuartz','AnShuiBao_DD_EOPS_Trade_C_M_ALL_1','CMG_OPS','AnShuiBao_DD_EOPS_Trade_C_M_ALL_1','CMG_OPS','',1387945800000,1387942200000,5,'PAUSED','CRON',1383618668000,0,NULL,0,''),
('iQuartz','AnShuiBao_TB_EHUB_Trade_U_M_AM','O_TRADE','AnShuiBao_TB_EHUB_Trade_U_M_AM','O_TRADE','',1422171000000,1422170539700,5,'PAUSED','CRON',1381314124000,0,NULL,0,''),
('iQuartz','AnShuiBao_TB_EOPS_Trade_C_M_AM','CMG_OPS','AnShuiBao_TB_EOPS_Trade_C_M_AM','CMG_OPS','',1384027200000,1383984000000,5,'PAUSED','CRON',1380166803000,0,NULL,0,''),
('iQuartz','AnShuiBao_TB_EOPS_Trade_U_M_ALL','CMG_OPS','AnShuiBao_TB_EOPS_Trade_U_M_ALL','CMG_OPS','',1389323700000,1389321900000,5,'PAUSED','CRON',1383557294000,0,NULL,0,''),
('iQuartz','AnShuiBao_TB_EOPS_Trade_U_M_AM','CMG_OPS','AnShuiBao_TB_EOPS_Trade_U_M_AM','CMG_OPS','cmg.ehub.trade.increment.get',1384027200000,1383984000000,5,'PAUSED','CRON',1381314417000,0,NULL,0,''),
('iQuartz','AnShuiBao_YHD_EOPS_Trade_C_M_AM','CMG_OPS','AnShuiBao_YHD_EOPS_Trade_C_M_AM','CMG_OPS','',1387958400000,1387915200000,5,'PAUSED','CRON',1380166081000,0,NULL,0,''),
('iQuartz','AnShuiBao_YHD_EOPS_Trade_U_M_ALL','CMG_OPS','AnShuiBao_YHD_EOPS_Trade_U_M_ALL','CMG_OPS','',1387945800000,1387942200000,5,'PAUSED','CRON',1383618823000,0,NULL,0,''),
('iQuartz','AoXiNu_DD_EHUB_Trade_U_D_AM_BIHOURLY','O_TRADE','AoXiNu_DD_EHUB_Trade_U_D_AM_BIHOURLY','O_TRADE','',1422172800000,1422170353252,5,'PAUSED','CRON',1381487571000,0,NULL,0,''),
('iQuartz','AoXiNu_DD_EHUB_Trade_U_M_AM_BIHOURLY','O_TRADE','AoXiNu_DD_EHUB_Trade_U_M_AM_BIHOURLY','O_TRADE','',1422172800000,1422170353256,5,'PAUSED','CRON',1381487509000,0,NULL,0,''),
('iQuartz','AoXiNu_DD_EOPS_Trade_C_M_AM','CMG_OPS','AoXiNu_DD_EOPS_Trade_C_M_AM','CMG_OPS','',1387958400000,1387915200000,5,'PAUSED','CRON',1380170617000,0,NULL,0,''),
('iQuartz','AoXiNu_DD_EOPS_Trade_U_M_ALL','CMG_OPS','AoXiNu_DD_EOPS_Trade_U_M_ALL','CMG_OPS','cmg.ehub.trade.increment.get',1387945800000,1387938600000,5,'PAUSED','CRON',1383620110000,0,NULL,0,''),
('iQuartz','AoXiNu_TBFX_EHUB_Trade_U_M_ALL','O_TRADE','AoXiNu_TBFX_EHUB_Trade_U_M_ALL','O_TRADE','',1422172800000,1422170352347,5,'PAUSED','CRON',1384248377000,0,NULL,0,''),
('iQuartz','AoXiNu_TB_EHUB_Trade_C_M_AM','O_TRADE','AoXiNu_TB_EHUB_Trade_C_M_AM','O_TRADE','',1422205200000,1422170354000,5,'PAUSED','CRON',1381314077000,0,NULL,0,''),
('iQuartz','AoXiNu_TB_EOPS_Trade_C_M_ALL','CMG_OPS','AoXiNu_TB_EOPS_Trade_C_M_ALL','CMG_OPS','',1389323700000,1389321900000,5,'PAUSED','CRON',1383559258000,0,NULL,0,''),
('iQuartz','AoXiNu_TB_EOPS_Trade_C_M_AM','CMG_OPS','AoXiNu_TB_EOPS_Trade_C_M_AM','CMG_OPS','',1384027200000,1383984000000,5,'PAUSED','CRON',1380170433000,0,NULL,0,''),
('iQuartz','AoXiNu_TB_EOPS_Trade_U_M_ALL','CMG_OPS','AoXiNu_TB_EOPS_Trade_U_M_ALL','CMG_OPS','',1389324600000,1389321000000,5,'PAUSED','CRON',1383620064000,0,NULL,0,''),
('iQuartz','AoXiNu_TB_EOPS_Trade_U_M_AM','CMG_OPS','AoXiNu_TB_EOPS_Trade_U_M_AM','CMG_OPS','cmg.ehub.trade.increment.get',1384027200000,1383984000000,5,'PAUSED','CRON',1381314291000,0,NULL,0,''),
('iQuartz','BBKZY_TB_EHUB_Trade_C_M_AM','O_TRADE','BBKZY_TB_EHUB_Trade_C_M_AM','O_TRADE','',1422172800000,1422170539731,5,'PAUSED','CRON',1380264208000,0,NULL,0,''),
('iQuartz','BBKZY_TB_EOPS_Trade_C_M_ALL_1','CMG_OPS','BBKZY_TB_EOPS_Trade_C_M_ALL_1','CMG_OPS','',1384041600000,1384009200000,5,'PAUSED','CRON',1383547835000,0,NULL,0,''),
('iQuartz','BBKZY_TB_EOPS_Trade_U_M_ALL_1','CMG_OPS','BBKZY_TB_EOPS_Trade_U_M_ALL_1','CMG_OPS','cmg.ehub.trade.increment.get',1384041600000,1384009200000,5,'PAUSED','CRON',1383547810000,0,NULL,0,''),
('iQuartz','BBKZY_TB_EOPS_Trade_U_M_AM','CMG_OPS','BBKZY_TB_EOPS_Trade_U_M_AM','CMG_OPS','cmg.ehub.trade.increment.get',1384027200000,1383984000000,5,'PAUSED','CRON',1381314256000,0,NULL,0,''),
('iQuartz','BBK_JD_EOPS_Trade_C_M_ALL','CMG_OPS','BBK_JD_EOPS_Trade_C_M_ALL','CMG_OPS','',1387944900000,1387937700000,5,'PAUSED','CRON',1383621167000,0,NULL,0,''),
('iQuartz','BBK_JD_EOPS_Trade_C_M_AM','CMG_OPS','BBK_JD_EOPS_Trade_C_M_AM','CMG_OPS','',1387960200000,1387917000000,5,'PAUSED','CRON',1381893087000,0,NULL,0,''),
('iQuartz','BBK_JD_EOPS_Trade_U_M_ALL','CMG_OPS','BBK_JD_EOPS_Trade_U_M_ALL','CMG_OPS','cmg.ehub.trade.increment.get',1387944900000,1387937700000,5,'PAUSED','CRON',1383621122000,0,NULL,0,''),
('iQuartz','BBK_JD_EOPS_Trade_U_M_AM','CMG_OPS','BBK_JD_EOPS_Trade_U_M_AM','CMG_OPS','cmg.ehub.trade.increment.get',1387958400000,1387915200000,5,'PAUSED','CRON',1381892948000,0,NULL,0,''),
('iQuartz','BBK_TB_EOPS_Trade_C_M_AM','CMG_OPS','BBK_TB_EOPS_Trade_C_M_AM','CMG_OPS','',1384027200000,1383984000000,5,'PAUSED','CRON',1380170948000,0,NULL,0,''),
('iQuartz','BBK_TB_EOPS_Trade_U_M_AM','CMG_OPS','BBK_TB_EOPS_Trade_U_M_AM','CMG_OPS','cmg.ehub.trade.increment.get',1384027200000,1383984000000,5,'PAUSED','CRON',1381314468000,0,NULL,0,''),
('iQuartz','BBK_YHD_EOPS_Trade_C_M_AM','CMG_OPS','BBK_YHD_EOPS_Trade_C_M_AM','CMG_OPS','',1387958400000,1387915200000,5,'PAUSED','CRON',1380170803000,0,NULL,0,''),
('iQuartz','ChamagoFA_TB_EHUB_Trade_C_M_AM','O_TRADE','ChamagoFA_TB_EHUB_Trade_C_M_AM','O_TRADE','',1422205200000,1422170539495,5,'PAUSED','CRON',1380261775000,0,NULL,0,''),
('iQuartz','ChamagoFA_TB_EOPS_Trade_C_M_ALL','CMG_OPS','ChamagoFA_TB_EOPS_Trade_C_M_ALL','CMG_OPS','',1384042500000,1384010100000,5,'PAUSED','CRON',1383622542000,0,NULL,0,''),
('iQuartz','ChamagoFA_TB_EOPS_Trade_C_M_AM','CMG_OPS','ChamagoFA_TB_EOPS_Trade_C_M_AM','CMG_OPS','',1384027200000,1383984000000,5,'PAUSED','CRON',1380262096000,0,NULL,0,''),
('iQuartz','ChamagoFA_TB_EOPS_Trade_U_M_ALL','CMG_OPS','ChamagoFA_TB_EOPS_Trade_U_M_ALL','CMG_OPS','cmg.ehub.trade.increment.get',1384042500000,1384010100000,5,'PAUSED','CRON',1383622527000,0,NULL,0,''),
('iQuartz','ChamagoFA_TB_EOPS_Trade_U_M_AM','CMG_OPS','ChamagoFA_TB_EOPS_Trade_U_M_AM','CMG_OPS','cmg.ehub.trade.increment.get',1384027200000,1383984000000,5,'PAUSED','CRON',1380261958000,0,NULL,0,''),
('iQuartz','ChamagoZY_VANCL_EHUB_Trade_U_M_ALL_1','O_TRADE','ChamagoZY_VANCL_EHUB_Trade_U_M_ALL_1','O_TRADE','vancl.order.getall.hbase',1422172800000,1422170352284,5,'PAUSED','CRON',1383535446000,0,NULL,0,''),
('iQuartz','ChamagoZY_VANCL_EHUB_Trade_U_M_AM','O_TRADE','ChamagoZY_VANCL_EHUB_Trade_U_M_AM','O_TRADE','vancl.order.getall.hbase',1422205200000,1422170539514,5,'PAUSED','CRON',1380267334000,0,NULL,0,''),
('iQuartz','ChamagoZY_VANCL_EOPS_Trade_C_M_ALL','CMG_OPS','ChamagoZY_VANCL_EOPS_Trade_C_M_ALL','CMG_OPS','',1422173700000,1422170352292,5,'PAUSED','CRON',1383622596000,0,NULL,0,''),
('iQuartz','ChamagoZY_VANCL_EOPS_Trade_C_M_AM','CMG_OPS','ChamagoZY_VANCL_EOPS_Trade_C_M_AM','CMG_OPS','',1422172800000,1422170539735,5,'PAUSED','CRON',1380267236000,0,NULL,0,''),
('iQuartz','ChamagoZY_VANCL_EOPS_Trade_U_M_ALL','CMG_OPS','ChamagoZY_VANCL_EOPS_Trade_U_M_ALL','CMG_OPS','cmg.ehub.trade.increment.get',1422173700000,1422170352296,5,'PAUSED','CRON',1383622578000,0,NULL,0,''),
('iQuartz','ChamagoZY_VANCL_EOPS_Trade_U_M_AM','CMG_OPS','ChamagoZY_VANCL_EOPS_Trade_U_M_AM','CMG_OPS','cmg.ehub.trade.increment.get',1422172800000,1422170539740,5,'PAUSED','CRON',1380267099000,0,NULL,0,''),
('iQuartz','CRM_BI_TB_SALE_DAILY','CMG_CRM','CRM_BI_TB_SALE_DAILY','CMG_CRM','cmg.bi.sales.daily.taobao',1422171034908,1390912234908,5,'PAUSED','SIMPLE',1381313734908,0,NULL,0,''),
('iQuartz','CRM_BI_TB_SALE_MONTHLY_SUCCESS','CMG_CRM','CRM_BI_TB_SALE_MONTHLY_SUCCESS','CMG_CRM','cmg.bi.sales.monthly.taobao.success',1422171092118,1390912292118,5,'PAUSED','SIMPLE',1381313792118,0,NULL,0,''),
('iQuartz','DuoYangWuZY_TB_EHUB_Trade_U_M_AM','O_TRADE','DuoYangWuZY_TB_EHUB_Trade_U_M_AM','O_TRADE','',1422171000000,1422170539718,5,'PAUSED','CRON',1380275302000,0,NULL,0,''),
('iQuartz','DuoYangWu_PP_EOPS_Trade_C_M_ALL','CMG_OPS','DuoYangWu_PP_EOPS_Trade_C_M_ALL','CMG_OPS','',1389323700000,1389320100000,5,'PAUSED','CRON',1383620821000,0,NULL,0,''),
('iQuartz','DuoYangWu_TB_EHUB_Trade_C_M_AM','O_TRADE','DuoYangWu_TB_EHUB_Trade_C_M_AM','O_TRADE','',1422205200000,1422170539500,5,'PAUSED','CRON',1381314102000,0,NULL,0,''),
('iQuartz','DuoYangWu_TB_EHUB_Trade_U_M_AM','O_TRADE','DuoYangWu_TB_EHUB_Trade_U_M_AM','O_TRADE','',1422171000000,1422170539713,5,'PAUSED','CRON',1381314038000,0,NULL,0,''),
('iQuartz','DuoYangWu_TB_EOPS_Trade_C_M_ALL_1','CMG_OPS','DuoYangWu_TB_EOPS_Trade_C_M_ALL_1','CMG_OPS','',1389323700000,1389320100000,5,'PAUSED','CRON',1383620676000,0,NULL,0,''),
('iQuartz','DuoYangWu_TB_EOPS_Trade_C_M_AM','CMG_OPS','DuoYangWu_TB_EOPS_Trade_C_M_AM','CMG_OPS','',1384027200000,1383984000000,5,'PAUSED','CRON',1380169250000,0,NULL,0,''),
('iQuartz','DuoYangWu_TB_EOPS_Trade_U_M_AM','CMG_OPS','DuoYangWu_TB_EOPS_Trade_U_M_AM','CMG_OPS','cmg.ehub.trade.increment.get',1384027200000,1383984000000,5,'PAUSED','CRON',1381314268000,0,NULL,0,''),
('iQuartz','DuoYangWu_YHD_EHUB_Trade_CU_D_AM_BIHOURLY','O_TRADE','DuoYangWu_YHD_EHUB_Trade_CU_D_AM_BIHOURLY','O_TRADE','',1422172800000,1422170353947,5,'PAUSED','CRON',1381486463000,0,NULL,0,''),
('iQuartz','DuoYangWu_YHD_EOPS_Trade_C_M_ALL','CMG_OPS','DuoYangWu_YHD_EOPS_Trade_C_M_ALL','CMG_OPS','',1387944900000,1387937700000,5,'PAUSED','CRON',1383620745000,0,NULL,0,''),
('iQuartz','DuoYangWu_YHD_EOPS_Trade_C_M_AM','CMG_OPS','DuoYangWu_YHD_EOPS_Trade_C_M_AM','CMG_OPS','',1387958400000,1387915200000,5,'PAUSED','CRON',1380167582000,0,NULL,0,''),
('iQuartz','DuoYangWu_YHD_EOPS_Trade_U_M_AM_BIHOURLY_1','CMG_OPS','DuoYangWu_YHD_EOPS_Trade_U_M_AM_BIHOURLY_1','CMG_OPS','cmg.ehub.trade.increment.get',1384488900000,1384481700000,5,'PAUSED','CRON',1383620762000,0,NULL,0,''),
('iQuartz','EREBZY_TB_EOPS_Trade_U_M_ALL','CMG_OPS','EREBZY_TB_EOPS_Trade_U_M_ALL','CMG_OPS','cmg.ehub.trade.increment.get',1384042500000,1384010100000,5,'PAUSED','CRON',1383622695000,0,NULL,0,''),
('iQuartz','EREB_TB_EHUB_Trade_U_M_ALL_2','O_TRADE','EREB_TB_EHUB_Trade_U_M_ALL_2','O_TRADE','',1422172800000,1422170352315,5,'PAUSED','CRON',1383213601000,0,NULL,0,''),
('iQuartz','EREB_TB_EHUB_Trade_U_M_AM','O_TRADE','EREB_TB_EHUB_Trade_U_M_AM','O_TRADE','',1422171000000,1422170539526,5,'PAUSED','CRON',1380274200000,0,NULL,0,''),
('iQuartz','EREB_TB_EOPS_Trade_C_M_ALL','CMG_OPS','EREB_TB_EOPS_Trade_C_M_ALL','CMG_OPS','',1384042500000,1384010100000,5,'PAUSED','CRON',1383622660000,0,NULL,0,''),
('iQuartz','FeiLiPu_TB_EHUB_Trade_U_M_AM','O_TRADE','FeiLiPu_TB_EHUB_Trade_U_M_AM','O_TRADE','',1422171000000,1422170539554,5,'PAUSED','CRON',1380259950000,0,NULL,0,''),
('iQuartz','FeiLiPu_TB_EOPS_Trade_C_M_ALL','CMG_OPS','FeiLiPu_TB_EOPS_Trade_C_M_ALL','CMG_OPS','',1384042500000,1384010100000,5,'PAUSED','CRON',1383622423000,0,NULL,0,''),
('iQuartz','FeiLiPu_TB_EOPS_Trade_U_M_ALL','CMG_OPS','FeiLiPu_TB_EOPS_Trade_U_M_ALL','CMG_OPS','cmg.ehub.trade.increment.get',1384042500000,1384010100000,5,'PAUSED','CRON',1383622445000,0,NULL,0,''),
('iQuartz','FeiLiPu_TB_EOPS_Trade_U_M_AM','CMG_OPS','FeiLiPu_TB_EOPS_Trade_U_M_AM','CMG_OPS','cmg.ehub.trade.increment.get',1384027200000,1383984000000,5,'PAUSED','CRON',1380254263000,0,NULL,0,''),
('iQuartz','HJX_YHD_EHUB_Trade_CU_D_AM_BIHOURLY','O_TRADE','HJX_YHD_EHUB_Trade_CU_D_AM_BIHOURLY','O_TRADE','',1422172800000,1422170353246,5,'PAUSED','CRON',1381487960000,0,NULL,0,''),
('iQuartz','HJX_YHD_EOPS_Trade_C_M_ALL','CMG_OPS','HJX_YHD_EOPS_Trade_C_M_ALL','CMG_OPS','',1387944900000,1387937700000,5,'PAUSED','CRON',1383621225000,0,NULL,0,''),
('iQuartz','HJX_YHD_EOPS_Trade_U_M_AM_BIHOURLY_1','CMG_OPS','HJX_YHD_EOPS_Trade_U_M_AM_BIHOURLY_1','CMG_OPS','cmg.ehub.trade.increment.get',1384488900000,1384481700000,5,'PAUSED','CRON',1383621298000,0,NULL,0,''),
('iQuartz','JiaDeBao_TB_EHUB_Trade_U_M_ALL_1','O_TRADE','JiaDeBao_TB_EHUB_Trade_U_M_ALL_1','O_TRADE','',1422172800000,1422170352847,5,'PAUSED','CRON',1383215760000,0,NULL,0,''),
('iQuartz','JiaDeBao_TB_EOPS_Trade_C_M_ALL','CMG_OPS','JiaDeBao_TB_EOPS_Trade_C_M_ALL','CMG_OPS','',1384042500000,1384010100000,5,'PAUSED','CRON',1383622266000,0,NULL,0,''),
('iQuartz','JiaDeBao_TB_EOPS_Trade_U_M_ALL','CMG_OPS','JiaDeBao_TB_EOPS_Trade_U_M_ALL','CMG_OPS','cmg.ehub.trade.increment.get',1384042500000,1384010100000,5,'PAUSED','CRON',1383622281000,0,NULL,0,''),
('iQuartz','JiaDeBao_TB_EOPS_Trade_U_M_AM','CMG_OPS','JiaDeBao_TB_EOPS_Trade_U_M_AM','CMG_OPS','cmg.ehub.trade.increment.get',1384027200000,1383984000000,5,'PAUSED','CRON',1380251998000,0,NULL,0,''),
('iQuartz','LangNeng_TB_EHUB_Trade_C_M_AM','CMG_OPS','LangNeng_TB_EHUB_Trade_C_M_AM','CMG_OPS','',1384016400000,1383980400000,5,'PAUSED','CRON',1380443416000,0,NULL,0,''),
('iQuartz','LangNeng_TB_EOPS_Trade_C_M_AM','CMG_OPS','LangNeng_TB_EOPS_Trade_C_M_AM','CMG_OPS','',1384029000000,1383985800000,5,'PAUSED','CRON',1380443699000,0,NULL,0,''),
('iQuartz','LangNeng_TB_EOPS_Trade_U_M_ALL','CMG_OPS','LangNeng_TB_EOPS_Trade_U_M_ALL','CMG_OPS','cmg.ehub.trade.increment.get',1384042500000,1384010100000,5,'PAUSED','CRON',1383622804000,0,NULL,0,''),
('iQuartz','MaLanShi_TB_EHUB_Trade_C_M_ALL_1','O_TRADE','MaLanShi_TB_EHUB_Trade_C_M_ALL_1','O_TRADE','',1422171000000,1422170352131,5,'PAUSED','CRON',1383297475000,0,NULL,0,''),
('iQuartz','MaLanShi_TB_EHUB_Trade_U_M_AM','O_TRADE','MaLanShi_TB_EHUB_Trade_U_M_AM','O_TRADE','',1422171000000,1422170539683,5,'PAUSED','CRON',1380260542000,0,NULL,0,''),
('iQuartz','MaLanShi_TB_EOPS_Trade_C_M_ALL','CMG_OPS','MaLanShi_TB_EOPS_Trade_C_M_ALL','CMG_OPS','',1384042500000,1384010100000,5,'PAUSED','CRON',1383622479000,0,NULL,0,''),
('iQuartz','MaLanShi_TB_EOPS_Trade_C_M_AM','CMG_OPS','MaLanShi_TB_EOPS_Trade_C_M_AM','CMG_OPS','',1384027200000,1383984000000,5,'PAUSED','CRON',1380255045000,0,NULL,0,''),
('iQuartz','MaLanShi_TB_EOPS_Trade_U_M_ALL','CMG_OPS','MaLanShi_TB_EOPS_Trade_U_M_ALL','CMG_OPS','cmg.ehub.trade.increment.get',1384042500000,1384010100000,5,'PAUSED','CRON',1383622493000,0,NULL,0,''),
('iQuartz','MaLanShi_TB_EOPS_Trade_U_M_AM','CMG_OPS','MaLanShi_TB_EOPS_Trade_U_M_AM','CMG_OPS','cmg.ehub.trade.increment.get',1384027200000,1383984000000,5,'PAUSED','CRON',1380254854000,0,NULL,0,''),
('iQuartz','MBB_LB_BaiMa_Logistics_U_M_ALL','CMG_OPS','MBB_LB_BaiMa_Logistics_U_M_ALL','CMG_OPS','',1387962000000,1387940400000,5,'PAUSED','CRON',1379945155000,0,NULL,0,''),
('iQuartz','MeiYa_TB_EOPS_Trade_U_M_ALL','CMG_OPS','MeiYa_TB_EOPS_Trade_U_M_ALL','CMG_OPS','cmg.ehub.trade.increment.get',1384251300000,1384248774496,5,'PAUSED','CRON',1383622384000,0,NULL,0,''),
('iQuartz','MeiYa_TB_EOPS_Trade_U_M_AM','CMG_OPS','MeiYa_TB_EOPS_Trade_U_M_AM','CMG_OPS','cmg.ehub.trade.increment.get',1384027200000,1383984000000,5,'PAUSED','CRON',1380253910000,0,NULL,0,''),
('iQuartz','XGGJ_TB_EHUB_Trade_C_M_ALL','O_TRADE','XGGJ_TB_EHUB_Trade_C_M_ALL','O_TRADE','',1422201600000,1422170353961,5,'PAUSED','CRON',1380249822000,0,NULL,0,''),
('iQuartz','XGGJ_TB_EHUB_Trade_C_M_AM','O_TRADE','XGGJ_TB_EHUB_Trade_C_M_AM','O_TRADE','',1422205200000,1422170353986,5,'PAUSED','CRON',1380250144000,0,NULL,0,''),
('iQuartz','XGGJ_TB_EHUB_Trade_U_M_ALL_1','O_TRADE','XGGJ_TB_EHUB_Trade_U_M_ALL_1','O_TRADE','',1422172800000,1422170352319,5,'PAUSED','CRON',1383214892000,0,NULL,0,''),
('iQuartz','XGGJ_TB_EOPS_Trade_U_M_ALL','CMG_OPS','XGGJ_TB_EOPS_Trade_U_M_ALL','CMG_OPS','cmg.ehub.trade.increment.get',1384042500000,1384010100000,5,'PAUSED','CRON',1383621719000,0,NULL,0,''),
('iQuartz','XGGJ_TB_EOPS_Trade_U_M_AM','CMG_OPS','XGGJ_TB_EOPS_Trade_U_M_AM','CMG_OPS','cmg.ehub.trade.increment.get',1384027200000,1383984000000,5,'PAUSED','CRON',1380250544000,0,NULL,0,''),
('iQuartz','XiPinJi_JD_EOPS_Trade_C_M_ALL','CMG_OPS','XiPinJi_JD_EOPS_Trade_C_M_ALL','CMG_OPS','',1387945800000,1387938600000,5,'PAUSED','CRON',1383619934000,0,NULL,0,''),
('iQuartz','XiPinJi_JD_EOPS_Trade_U_M_ALL','CMG_OPS','XiPinJi_JD_EOPS_Trade_U_M_ALL','CMG_OPS','cmg.ehub.trade.increment.get',1387945800000,1387938600000,5,'PAUSED','CRON',1383619958000,0,NULL,0,''),
('iQuartz','XiPinJi_JD_EOPS_Trade_U_M_AM','CMG_OPS','XiPinJi_JD_EOPS_Trade_U_M_AM','CMG_OPS','cmg.ehub.trade.increment.get',1387958400000,1387915200000,5,'PAUSED','CRON',1381892308000,0,NULL,0,''),
('iQuartz','XiPinJi_PP_EHUB_Trade_U_M_AM_BIHOURLY','O_TRADE','XiPinJi_PP_EHUB_Trade_U_M_AM_BIHOURLY','O_TRADE','',1422172800000,1422170353536,5,'PAUSED','CRON',1381487032000,0,NULL,0,''),
('iQuartz','XiPinJi_PP_EOPS_Trade_C_M_ALL','CMG_OPS','XiPinJi_PP_EOPS_Trade_C_M_ALL','CMG_OPS','',1389328200000,1389321000000,5,'PAUSED','CRON',1383619739000,0,NULL,0,''),
('iQuartz','XiPinJi_PP_EOPS_Trade_C_M_AM','CMG_OPS','XiPinJi_PP_EOPS_Trade_C_M_AM','CMG_OPS','',1389340800000,1389297600000,5,'PAUSED','CRON',1380169992000,0,NULL,0,''),
('iQuartz','XiPinJi_TB_EOPS_Trade_C_M_ALL','CMG_OPS','XiPinJi_TB_EOPS_Trade_C_M_ALL','CMG_OPS','',1389324600000,1389321000000,5,'PAUSED','CRON',1383619657000,0,NULL,0,''),
('iQuartz','XiPinJi_TB_EOPS_Trade_U_M_AM','CMG_OPS','XiPinJi_TB_EOPS_Trade_U_M_AM','CMG_OPS','cmg.ehub.trade.increment.get',1384027200000,1383984000000,5,'PAUSED','CRON',1381314238000,0,NULL,0,''),
('iQuartz','XiPinJi_YHD_EHUB_Trade_U_M_AM_BIHOURLY','O_TRADE','XiPinJi_YHD_EHUB_Trade_U_M_AM_BIHOURLY','O_TRADE','',1422172800000,1422170353552,5,'PAUSED','CRON',1381486758000,0,NULL,0,''),
('iQuartz','YEJZY_TB_EOPS_Trade_C_M_AM','CMG_OPS','YEJZY_TB_EOPS_Trade_C_M_AM','CMG_OPS','',1384027200000,1383984000000,5,'PAUSED','CRON',1381314278000,0,NULL,0,''),
('iQuartz','YEJZY_TB_EOPS_Trade_U_M_ALL','CMG_OPS','YEJZY_TB_EOPS_Trade_U_M_ALL','CMG_OPS','cmg.ehub.trade.increment.get',1384042500000,1384010100000,5,'PAUSED','CRON',1383621644000,0,NULL,0,''),
('iQuartz','YEJZY_TB_EOPS_Trade_U_M_AM','CMG_OPS','YEJZY_TB_EOPS_Trade_U_M_AM','CMG_OPS','cmg.ehub.trade.increment.get',1384027200000,1383984000000,5,'PAUSED','CRON',1381314328000,0,NULL,0,''),
('iQuartz','YEJ_TB_EOPS_Trade_C_M_ALL','CMG_OPS','YEJ_TB_EOPS_Trade_C_M_ALL','CMG_OPS','',1384042500000,1384010100000,5,'PAUSED','CRON',1383621581000,0,NULL,0,''),
('iQuartz','YEJ_TB_EOPS_Trade_C_M_AM','CMG_OPS','YEJ_TB_EOPS_Trade_C_M_AM','CMG_OPS','',1384027200000,1383984000000,5,'PAUSED','CRON',1380263282000,0,NULL,0,''),
('iQuartz','YEJ_TB_EOPS_Trade_U_M_ALL','CMG_OPS','YEJ_TB_EOPS_Trade_U_M_ALL','CMG_OPS','cmg.ehub.trade.increment.get',1384042500000,1384010100000,5,'PAUSED','CRON',1383621594000,0,NULL,0,''),
('iQuartz','YEJ_TB_EOPS_Trade_U_M_AM','CMG_OPS','YEJ_TB_EOPS_Trade_U_M_AM','CMG_OPS','cmg.ehub.trade.increment.get',1384027200000,1383984000000,5,'PAUSED','CRON',1380263102000,0,NULL,0,''),
('iQuartz','YEJ_YHD_EHUB_Trade_CU_D_AM_BIHOURLY','O_TRADE','YEJ_YHD_EHUB_Trade_CU_D_AM_BIHOURLY','O_TRADE','',1422172800000,1422170353249,5,'PAUSED','CRON',1381488175000,0,NULL,0,''),
('iQuartz','YEJ_YHD_EHUB_Trade_U_M_AM_BIHOURLY','O_TRADE','YEJ_YHD_EHUB_Trade_U_M_AM_BIHOURLY','O_TRADE','',1422172800000,1422170352945,5,'PAUSED','CRON',1381488114000,0,NULL,0,''),
('iQuartz','YEJ_YHD_EOPS_Trade_C_M_AM','CMG_OPS','YEJ_YHD_EOPS_Trade_C_M_AM','CMG_OPS','',1387958400000,1387915200000,5,'PAUSED','CRON',1380171299000,0,NULL,0,''),
('iQuartz','YEJ_YHD_EOPS_Trade_U_M_ALL','CMG_OPS','YEJ_YHD_EOPS_Trade_U_M_ALL','CMG_OPS','cmg.ehub.trade.increment.get',1387944900000,1387941300000,5,'PAUSED','CRON',1383621480000,0,NULL,0,''),
('iQuartz','YEJ_YHD_EOPS_Trade_U_M_AM_BIHOURLY_1','CMG_OPS','YEJ_YHD_EOPS_Trade_U_M_AM_BIHOURLY_1','CMG_OPS','cmg.ehub.trade.increment.get',1384485300000,1384481700000,5,'PAUSED','CRON',1383621534000,0,NULL,0,''),
('iQuartz','YueDA_TB_EHUB_Trade_U_M_AM','O_TRADE','YueDA_TB_EHUB_Trade_U_M_AM','O_TRADE','',1422171000000,1422170539546,5,'PAUSED','CRON',1380442908000,0,NULL,0,''),
('iQuartz','YueDA_TB_EOPS_Trade_C_M_ALL','CMG_OPS','YueDA_TB_EOPS_Trade_C_M_ALL','CMG_OPS','',1384042500000,1384010100000,5,'PAUSED','CRON',1383622735000,0,NULL,0,''),
('iQuartz','YueDA_TB_EOPS_Trade_C_M_AM','CMG_OPS','YueDA_TB_EOPS_Trade_C_M_AM','CMG_OPS','',1384029000000,1383985800000,5,'PAUSED','CRON',1380443145000,0,NULL,0,''),
('iQuartz','YueDA_TB_EOPS_Trade_U_M_ALL','CMG_OPS','YueDA_TB_EOPS_Trade_U_M_ALL','CMG_OPS','cmg.ehub.trade.increment.get',1384042500000,1384010100000,5,'PAUSED','CRON',1383622776000,0,NULL,0,''),
('iQuartz','ZiJinHua_TB_EHUB_Trade_C_M_ALL_1','O_TRADE','ZiJinHua_TB_EHUB_Trade_C_M_ALL_1','O_TRADE','',1422172800000,1422170352138,5,'PAUSED','CRON',1383535239000,0,NULL,0,''),
('iQuartz','ZiJinHua_TB_EOPS_Trade_C_M_ALL','CMG_OPS','ZiJinHua_TB_EOPS_Trade_C_M_ALL','CMG_OPS','',1384251300000,1384248776944,5,'PAUSED','CRON',1383622313000,0,NULL,0,''),
('iQuartz','ZiJinHua_TB_EOPS_Trade_C_M_AM','CMG_OPS','ZiJinHua_TB_EOPS_Trade_C_M_AM','CMG_OPS','',1384027200000,1383984000000,5,'PAUSED','CRON',1380253413000,0,NULL,0,'');

/*Table structure for table `r_cluster` */

DROP TABLE IF EXISTS `r_cluster`;

CREATE TABLE `r_cluster` (
  `id_cluster` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `base_port` varchar(255) DEFAULT NULL,
  `sockets_buffer_size` varchar(255) DEFAULT NULL,
  `sockets_flush_interval` varchar(255) DEFAULT NULL,
  `sockets_compressed` char(1) DEFAULT NULL,
  `dynamic_cluster` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_cluster`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_cluster` */

/*Table structure for table `r_cluster_slave` */

DROP TABLE IF EXISTS `r_cluster_slave`;

CREATE TABLE `r_cluster_slave` (
  `id_cluster_slave` bigint(20) NOT NULL,
  `id_cluster` int(11) DEFAULT NULL,
  `id_slave` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cluster_slave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_cluster_slave` */

/*Table structure for table `r_condition` */

DROP TABLE IF EXISTS `r_condition`;

CREATE TABLE `r_condition` (
  `id_condition` bigint(20) NOT NULL,
  `id_condition_parent` int(11) DEFAULT NULL,
  `negated` char(1) DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `left_name` varchar(255) DEFAULT NULL,
  `condition_function` varchar(255) DEFAULT NULL,
  `right_name` varchar(255) DEFAULT NULL,
  `id_value_right` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_condition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_condition` */

/*Table structure for table `r_database` */

DROP TABLE IF EXISTS `r_database`;

CREATE TABLE `r_database` (
  `id_database` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `id_database_type` int(11) DEFAULT NULL,
  `id_database_contype` int(11) DEFAULT NULL,
  `host_name` varchar(255) DEFAULT NULL,
  `database_name` mediumtext,
  `port` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `servername` varchar(255) DEFAULT NULL,
  `data_tbs` varchar(255) DEFAULT NULL,
  `index_tbs` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_database`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_database` */

insert  into `r_database`(`id_database`,`name`,`id_database_type`,`id_database_contype`,`host_name`,`database_name`,`port`,`username`,`password`,`servername`,`data_tbs`,`index_tbs`) values 
(1,'Êú¨Êú∫-‰∫§ÂèâË°®Â∫ì',31,1,'127.0.0.1','‰∫§ÂèâË°®',3306,'root','Encrypted 2be98afc86aa7f2e4cb79ff228dc6fa8c',NULL,NULL,NULL),
(2,'AgileBI',27,1,'localhost','pentaho-instaview',50000,'monetdb','Encrypted 2be98afc86aa7f2e4cb14a17edb86abd8',NULL,NULL,NULL),
(3,'healthcare',36,1,'192.168.1.23','healthcare',1521,'chenrui','Encrypted 2be98afc86aa7f2e4cb1aa675d080bad3',NULL,NULL,NULL),
(4,'cr_cloud',31,1,'222.165.97.234','cr_cloud',3306,'root','Encrypted 2be98afc86aa7f2e4cb79ff228dc6fa8c',NULL,NULL,NULL);

/*Table structure for table `r_database_attribute` */

DROP TABLE IF EXISTS `r_database_attribute`;

CREATE TABLE `r_database_attribute` (
  `id_database_attribute` bigint(20) NOT NULL,
  `id_database` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `value_str` mediumtext,
  PRIMARY KEY (`id_database_attribute`),
  UNIQUE KEY `idx_rdat` (`id_database`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_database_attribute` */

insert  into `r_database_attribute`(`id_database_attribute`,`id_database`,`code`,`value_str`) values 
(154,2,'EXTRA_OPTION_MYSQL.defaultFetchSize','500'),
(155,2,'EXTRA_OPTION_MYSQL.useCursorFetch','true'),
(156,2,'EXTRA_OPTION_INFOBRIGHT.characterEncoding','UTF-8'),
(157,2,'PORT_NUMBER','50000'),
(158,4,'EXTRA_OPTION_MYSQL.defaultFetchSize','500'),
(159,4,'EXTRA_OPTION_MYSQL.useCursorFetch','true'),
(160,4,'FORCE_IDENTIFIERS_TO_LOWERCASE','Y'),
(161,4,'SUPPORTS_TIMESTAMP_DATA_TYPE','Y'),
(162,4,'EXTRA_OPTION_INFOBRIGHT.characterEncoding','UTF-8'),
(163,4,'SUPPORTS_BOOLEAN_DATA_TYPE','Y'),
(164,4,'PORT_NUMBER','3306'),
(165,3,'EXTRA_OPTION_MYSQL.defaultFetchSize','500'),
(166,3,'EXTRA_OPTION_MYSQL.useCursorFetch','true'),
(167,3,'FORCE_IDENTIFIERS_TO_LOWERCASE','Y'),
(168,3,'SUPPORTS_TIMESTAMP_DATA_TYPE','Y'),
(169,3,'EXTRA_OPTION_INFOBRIGHT.characterEncoding','UTF-8'),
(170,3,'SUPPORTS_BOOLEAN_DATA_TYPE','Y'),
(171,3,'PORT_NUMBER','1521'),
(172,1,'EXTRA_OPTION_MYSQL.useCursorFetch','true'),
(173,1,'USE_POOLING','N'),
(174,1,'PRESERVE_RESERVED_WORD_CASE','N'),
(175,1,'SUPPORTS_TIMESTAMP_DATA_TYPE','Y'),
(176,1,'IS_CLUSTERED','N'),
(177,1,'SUPPORTS_BOOLEAN_DATA_TYPE','Y'),
(178,1,'STREAM_RESULTS','Y'),
(179,1,'EXTRA_OPTION_MYSQL.defaultFetchSize','500'),
(180,1,'PORT_NUMBER','3306'),
(181,1,'FORCE_IDENTIFIERS_TO_UPPERCASE','N'),
(182,1,'FORCE_IDENTIFIERS_TO_LOWERCASE','N'),
(183,1,'PREFERRED_SCHEMA_NAME',NULL),
(184,1,'SQL_CONNECT',NULL),
(185,1,'QUOTE_ALL_FIELDS','N');

/*Table structure for table `r_database_contype` */

DROP TABLE IF EXISTS `r_database_contype`;

CREATE TABLE `r_database_contype` (
  `id_database_contype` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_database_contype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_database_contype` */

insert  into `r_database_contype`(`id_database_contype`,`code`,`description`) values 
(1,'Native','Native (JDBC)'),
(2,'ODBC','ODBC'),
(3,'OCI','OCI'),
(4,'Plugin','Plugin specific access method'),
(5,'JNDI','JNDI'),
(6,',','Custom');

/*Table structure for table `r_database_type` */

DROP TABLE IF EXISTS `r_database_type`;

CREATE TABLE `r_database_type` (
  `id_database_type` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_database_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_database_type` */

insert  into `r_database_type`(`id_database_type`,`code`,`description`) values 
(1,'DERBY','Apache Derby'),
(2,'AS/400','AS/400'),
(3,'INTERBASE','Borland Interbase'),
(4,'INFINIDB','Calpont InfiniDB'),
(5,'DBASE','dBase III, IV or 5'),
(6,'EXASOL4','Exasol 4'),
(7,'EXTENDB','ExtenDB'),
(8,'FIREBIRD','Firebird SQL'),
(9,'GENERIC','Generic database'),
(10,'GREENPLUM','Greenplum'),
(11,'SQLBASE','Gupta SQL Base'),
(12,'H2','H2'),
(13,'HIVE','Hadoop Hive'),
(14,'HIVE2','Hadoop Hive 2'),
(15,'HYPERSONIC','Hypersonic'),
(16,'DB2','IBM DB2'),
(17,'IMPALA','Impala'),
(18,'INFOBRIGHT','Infobright'),
(19,'INFORMIX','Informix'),
(20,'INGRES','Ingres'),
(21,'VECTORWISE','Ingres VectorWise'),
(22,'CACHE','Intersystems Cache'),
(23,'KettleThin','Kettle thin JDBC driver'),
(24,'KINGBASEES','KingbaseES'),
(25,'LucidDB','LucidDB'),
(26,'SAPDB','MaxDB (SAP DB)'),
(27,'MONETDB','MonetDB'),
(28,'MSACCESS','MS Access'),
(29,'MSSQL','MS SQL Server'),
(30,'MSSQLNATIVE','MS SQL Server (Native)'),
(31,'MYSQL','MySQL'),
(32,'MONDRIAN','Native Mondrian'),
(33,'NEOVIEW','Neoview'),
(34,'NETEZZA','Netezza'),
(35,'OpenERPDatabaseMeta','OpenERP Server'),
(36,'ORACLE','Oracle'),
(37,'ORACLERDB','Oracle RDB'),
(38,'PALO','Palo MOLAP Server'),
(39,'POSTGRESQL','PostgreSQL'),
(40,'REDSHIFT','Redshift'),
(41,'REMEDY-AR-SYSTEM','Remedy Action Request System'),
(42,'SAPR3','SAP ERP System'),
(43,'SQLITE','SQLite'),
(44,'SYBASE','Sybase'),
(45,'SYBASEIQ','SybaseIQ'),
(46,'TERADATA','Teradata'),
(47,'UNIVERSE','UniVerse database'),
(48,'VERTICA','Vertica'),
(49,'VERTICA5','Vertica 5+');

/*Table structure for table `r_dependency` */

DROP TABLE IF EXISTS `r_dependency`;

CREATE TABLE `r_dependency` (
  `id_dependency` bigint(20) NOT NULL,
  `id_transformation` int(11) DEFAULT NULL,
  `id_database` int(11) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_dependency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_dependency` */

/*Table structure for table `r_directory` */

DROP TABLE IF EXISTS `r_directory`;

CREATE TABLE `r_directory` (
  `id_directory` bigint(20) NOT NULL,
  `id_directory_parent` int(11) DEFAULT NULL,
  `directory_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_directory`),
  UNIQUE KEY `idx_rdir` (`id_directory_parent`,`directory_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_directory` */

insert  into `r_directory`(`id_directory`,`id_directory_parent`,`directory_name`) values 
(1,0,'km_auto_gen');

/*Table structure for table `r_element` */

DROP TABLE IF EXISTS `r_element`;

CREATE TABLE `r_element` (
  `id_element` bigint(20) NOT NULL,
  `id_element_type` int(11) DEFAULT NULL,
  `name` mediumtext,
  PRIMARY KEY (`id_element`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_element` */

/*Table structure for table `r_element_attribute` */

DROP TABLE IF EXISTS `r_element_attribute`;

CREATE TABLE `r_element_attribute` (
  `id_element_attribute` bigint(20) NOT NULL,
  `id_element` int(11) DEFAULT NULL,
  `id_element_attribute_parent` int(11) DEFAULT NULL,
  `attr_key` varchar(255) DEFAULT NULL,
  `attr_value` mediumtext,
  PRIMARY KEY (`id_element_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_element_attribute` */

/*Table structure for table `r_element_type` */

DROP TABLE IF EXISTS `r_element_type`;

CREATE TABLE `r_element_type` (
  `id_element_type` bigint(20) NOT NULL,
  `id_namespace` int(11) DEFAULT NULL,
  `name` mediumtext,
  `description` mediumtext,
  PRIMARY KEY (`id_element_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_element_type` */

/*Table structure for table `r_job` */

DROP TABLE IF EXISTS `r_job`;

CREATE TABLE `r_job` (
  `id_job` bigint(20) NOT NULL,
  `id_directory` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` mediumtext,
  `extended_description` mediumtext,
  `job_version` varchar(255) DEFAULT NULL,
  `job_status` int(11) DEFAULT NULL,
  `id_database_log` int(11) DEFAULT NULL,
  `table_name_log` varchar(255) DEFAULT NULL,
  `created_user` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_user` varchar(255) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `use_batch_id` char(1) DEFAULT NULL,
  `pass_batch_id` char(1) DEFAULT NULL,
  `use_logfield` char(1) DEFAULT NULL,
  `shared_file` varchar(255) DEFAULT NULL,
  `RUN_STATUS` varchar(100) DEFAULT 'Stopped' COMMENT 'ËøêË°åÁä∂ÊÄÅ',
  `LAST_UPDATE` varchar(14) DEFAULT NULL COMMENT 'ÊúÄÂêéÊõ¥Êñ∞Êó∂Èó¥',
  `AUTO_RESTART_NUM` varchar(10) DEFAULT '0' COMMENT 'Ëá™Âä®ÈáçÂêØÊ¨°Êï∞',
  `REPOSITORY_CODE` varchar(200) DEFAULT 'KETTLE_DEFAULT' COMMENT 'ËµÑÊ∫êÂ∫ì‰ª£Á†Å',
  `PROJECT_CODE` varchar(200) DEFAULT 'KM_LOCALHOST_82' COMMENT 'ËøêË°åÂú®',
  PRIMARY KEY (`id_job`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_job` */

insert  into `r_job`(`id_job`,`id_directory`,`name`,`description`,`extended_description`,`job_version`,`job_status`,`id_database_log`,`table_name_log`,`created_user`,`created_date`,`modified_user`,`modified_date`,`use_batch_id`,`pass_batch_id`,`use_logfield`,`shared_file`,`RUN_STATUS`,`LAST_UPDATE`,`AUTO_RESTART_NUM`,`REPOSITORY_CODE`,`PROJECT_CODE`) values 
(1,1,'xxx','‰Ω†Â•Ω',NULL,'shell',2,-1,NULL,'-','2017-06-13 21:55:57','-','2017-06-13 21:55:57','1','0','1',NULL,'Stopped',NULL,'0','KETTLE_DEFAULT','KM_LOCALHOST_82'),
(2,0,'ËΩ¨Êç¢jsonÊñá‰ª∂',NULL,NULL,NULL,0,-1,NULL,'-','2017-12-15 11:14:56','admin','2017-12-15 11:23:21','1','0','1',NULL,'Stopped','20171220170339','0','KETTLE_DEFAULT','KM_LOCALHOST_82');

/*Table structure for table `r_job_attribute` */

DROP TABLE IF EXISTS `r_job_attribute`;

CREATE TABLE `r_job_attribute` (
  `id_job_attribute` bigint(20) NOT NULL,
  `id_job` int(11) DEFAULT NULL,
  `nr` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `value_num` bigint(20) DEFAULT NULL,
  `value_str` mediumtext,
  PRIMARY KEY (`id_job_attribute`),
  UNIQUE KEY `idx_jatt` (`id_job`,`code`,`nr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_job_attribute` */

insert  into `r_job_attribute`(`id_job_attribute`,`id_job`,`nr`,`code`,`value_num`,`value_str`) values 
(166,2,0,'LOG_SIZE_LIMIT',0,NULL),
(167,2,0,'JOB_LOG_TABLE_CONNECTION_NAME',0,NULL),
(168,2,0,'JOB_LOG_TABLE_SCHEMA_NAME',0,NULL),
(169,2,0,'JOB_LOG_TABLE_TABLE_NAME',0,NULL),
(170,2,0,'JOB_LOG_TABLE_TIMEOUT_IN_DAYS',0,NULL),
(171,2,0,'JOB_LOG_TABLE_FIELD_ID0',0,'ID_JOB'),
(172,2,0,'JOB_LOG_TABLE_FIELD_NAME0',0,'ID_JOB'),
(173,2,0,'JOB_LOG_TABLE_FIELD_ENABLED0',0,'Y'),
(174,2,0,'JOB_LOG_TABLE_FIELD_ID1',0,'CHANNEL_ID'),
(175,2,0,'JOB_LOG_TABLE_FIELD_NAME1',0,'CHANNEL_ID'),
(176,2,0,'JOB_LOG_TABLE_FIELD_ENABLED1',0,'Y'),
(177,2,0,'JOB_LOG_TABLE_FIELD_ID2',0,'JOBNAME'),
(178,2,0,'JOB_LOG_TABLE_FIELD_NAME2',0,'JOBNAME'),
(179,2,0,'JOB_LOG_TABLE_FIELD_ENABLED2',0,'Y'),
(180,2,0,'JOB_LOG_TABLE_FIELD_ID3',0,'STATUS'),
(181,2,0,'JOB_LOG_TABLE_FIELD_NAME3',0,'STATUS'),
(182,2,0,'JOB_LOG_TABLE_FIELD_ENABLED3',0,'Y'),
(183,2,0,'JOB_LOG_TABLE_FIELD_ID4',0,'LINES_READ'),
(184,2,0,'JOB_LOG_TABLE_FIELD_NAME4',0,'LINES_READ'),
(185,2,0,'JOB_LOG_TABLE_FIELD_ENABLED4',0,'Y'),
(186,2,0,'JOB_LOG_TABLE_FIELD_ID5',0,'LINES_WRITTEN'),
(187,2,0,'JOB_LOG_TABLE_FIELD_NAME5',0,'LINES_WRITTEN'),
(188,2,0,'JOB_LOG_TABLE_FIELD_ENABLED5',0,'Y'),
(189,2,0,'JOB_LOG_TABLE_FIELD_ID6',0,'LINES_UPDATED'),
(190,2,0,'JOB_LOG_TABLE_FIELD_NAME6',0,'LINES_UPDATED'),
(191,2,0,'JOB_LOG_TABLE_FIELD_ENABLED6',0,'Y'),
(192,2,0,'JOB_LOG_TABLE_FIELD_ID7',0,'LINES_INPUT'),
(193,2,0,'JOB_LOG_TABLE_FIELD_NAME7',0,'LINES_INPUT'),
(194,2,0,'JOB_LOG_TABLE_FIELD_ENABLED7',0,'Y'),
(195,2,0,'JOB_LOG_TABLE_FIELD_ID8',0,'LINES_OUTPUT'),
(196,2,0,'JOB_LOG_TABLE_FIELD_NAME8',0,'LINES_OUTPUT'),
(197,2,0,'JOB_LOG_TABLE_FIELD_ENABLED8',0,'Y'),
(198,2,0,'JOB_LOG_TABLE_FIELD_ID9',0,'LINES_REJECTED'),
(199,2,0,'JOB_LOG_TABLE_FIELD_NAME9',0,'LINES_REJECTED'),
(200,2,0,'JOB_LOG_TABLE_FIELD_ENABLED9',0,'Y'),
(201,2,0,'JOB_LOG_TABLE_FIELD_ID10',0,'ERRORS'),
(202,2,0,'JOB_LOG_TABLE_FIELD_NAME10',0,'ERRORS'),
(203,2,0,'JOB_LOG_TABLE_FIELD_ENABLED10',0,'Y'),
(204,2,0,'JOB_LOG_TABLE_FIELD_ID11',0,'STARTDATE'),
(205,2,0,'JOB_LOG_TABLE_FIELD_NAME11',0,'STARTDATE'),
(206,2,0,'JOB_LOG_TABLE_FIELD_ENABLED11',0,'Y'),
(207,2,0,'JOB_LOG_TABLE_FIELD_ID12',0,'ENDDATE'),
(208,2,0,'JOB_LOG_TABLE_FIELD_NAME12',0,'ENDDATE'),
(209,2,0,'JOB_LOG_TABLE_FIELD_ENABLED12',0,'Y'),
(210,2,0,'JOB_LOG_TABLE_FIELD_ID13',0,'LOGDATE'),
(211,2,0,'JOB_LOG_TABLE_FIELD_NAME13',0,'LOGDATE'),
(212,2,0,'JOB_LOG_TABLE_FIELD_ENABLED13',0,'Y'),
(213,2,0,'JOB_LOG_TABLE_FIELD_ID14',0,'DEPDATE'),
(214,2,0,'JOB_LOG_TABLE_FIELD_NAME14',0,'DEPDATE'),
(215,2,0,'JOB_LOG_TABLE_FIELD_ENABLED14',0,'Y'),
(216,2,0,'JOB_LOG_TABLE_FIELD_ID15',0,'REPLAYDATE'),
(217,2,0,'JOB_LOG_TABLE_FIELD_NAME15',0,'REPLAYDATE'),
(218,2,0,'JOB_LOG_TABLE_FIELD_ENABLED15',0,'Y'),
(219,2,0,'JOB_LOG_TABLE_FIELD_ID16',0,'LOG_FIELD'),
(220,2,0,'JOB_LOG_TABLE_FIELD_NAME16',0,'LOG_FIELD'),
(221,2,0,'JOB_LOG_TABLE_FIELD_ENABLED16',0,'Y'),
(222,2,0,'JOB_LOG_TABLE_FIELD_ID17',0,'EXECUTING_SERVER'),
(223,2,0,'JOB_LOG_TABLE_FIELD_NAME17',0,'EXECUTING_SERVER'),
(224,2,0,'JOB_LOG_TABLE_FIELD_ENABLED17',0,'N'),
(225,2,0,'JOB_LOG_TABLE_FIELD_ID18',0,'EXECUTING_USER'),
(226,2,0,'JOB_LOG_TABLE_FIELD_NAME18',0,'EXECUTING_USER'),
(227,2,0,'JOB_LOG_TABLE_FIELD_ENABLED18',0,'N'),
(228,2,0,'JOB_LOG_TABLE_FIELD_ID19',0,'START_JOB_ENTRY'),
(229,2,0,'JOB_LOG_TABLE_FIELD_NAME19',0,'START_JOB_ENTRY'),
(230,2,0,'JOB_LOG_TABLE_FIELD_ENABLED19',0,'N'),
(231,2,0,'JOB_LOG_TABLE_FIELD_ID20',0,'CLIENT'),
(232,2,0,'JOB_LOG_TABLE_FIELD_NAME20',0,'CLIENT'),
(233,2,0,'JOB_LOG_TABLE_FIELD_ENABLED20',0,'N'),
(234,2,0,'JOBLOG_TABLE_INTERVAL',0,NULL),
(235,2,0,'JOBLOG_TABLE_SIZE_LIMIT',0,NULL),
(236,2,0,'JOB_ENTRY_LOG_TABLE_CONNECTION_NAME',0,NULL),
(237,2,0,'JOB_ENTRY_LOG_TABLE_SCHEMA_NAME',0,NULL),
(238,2,0,'JOB_ENTRY_LOG_TABLE_TABLE_NAME',0,NULL),
(239,2,0,'JOB_ENTRY_LOG_TABLE_TIMEOUT_IN_DAYS',0,NULL),
(240,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID0',0,'ID_BATCH'),
(241,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME0',0,'ID_BATCH'),
(242,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED0',0,'Y'),
(243,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID1',0,'CHANNEL_ID'),
(244,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME1',0,'CHANNEL_ID'),
(245,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED1',0,'Y'),
(246,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID2',0,'LOG_DATE'),
(247,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME2',0,'LOG_DATE'),
(248,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED2',0,'Y'),
(249,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID3',0,'JOBNAME'),
(250,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME3',0,'TRANSNAME'),
(251,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED3',0,'Y'),
(252,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID4',0,'JOBENTRYNAME'),
(253,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME4',0,'STEPNAME'),
(254,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED4',0,'Y'),
(255,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID5',0,'LINES_READ'),
(256,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME5',0,'LINES_READ'),
(257,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED5',0,'Y'),
(258,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID6',0,'LINES_WRITTEN'),
(259,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME6',0,'LINES_WRITTEN'),
(260,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED6',0,'Y'),
(261,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID7',0,'LINES_UPDATED'),
(262,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME7',0,'LINES_UPDATED'),
(263,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED7',0,'Y'),
(264,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID8',0,'LINES_INPUT'),
(265,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME8',0,'LINES_INPUT'),
(266,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED8',0,'Y'),
(267,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID9',0,'LINES_OUTPUT'),
(268,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME9',0,'LINES_OUTPUT'),
(269,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED9',0,'Y'),
(270,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID10',0,'LINES_REJECTED'),
(271,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME10',0,'LINES_REJECTED'),
(272,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED10',0,'Y'),
(273,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID11',0,'ERRORS'),
(274,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME11',0,'ERRORS'),
(275,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED11',0,'Y'),
(276,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID12',0,'RESULT'),
(277,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME12',0,'RESULT'),
(278,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED12',0,'Y'),
(279,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID13',0,'NR_RESULT_ROWS'),
(280,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME13',0,'NR_RESULT_ROWS'),
(281,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED13',0,'Y'),
(282,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID14',0,'NR_RESULT_FILES'),
(283,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME14',0,'NR_RESULT_FILES'),
(284,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED14',0,'Y'),
(285,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID15',0,'LOG_FIELD'),
(286,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME15',0,'LOG_FIELD'),
(287,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED15',0,'N'),
(288,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID16',0,'COPY_NR'),
(289,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME16',0,'COPY_NR'),
(290,2,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED16',0,'N'),
(291,2,0,'CHANNEL_LOG_TABLE_CONNECTION_NAME',0,NULL),
(292,2,0,'CHANNEL_LOG_TABLE_SCHEMA_NAME',0,NULL),
(293,2,0,'CHANNEL_LOG_TABLE_TABLE_NAME',0,NULL),
(294,2,0,'CHANNEL_LOG_TABLE_TIMEOUT_IN_DAYS',0,NULL),
(295,2,0,'CHANNEL_LOG_TABLE_FIELD_ID0',0,'ID_BATCH'),
(296,2,0,'CHANNEL_LOG_TABLE_FIELD_NAME0',0,'ID_BATCH'),
(297,2,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED0',0,'Y'),
(298,2,0,'CHANNEL_LOG_TABLE_FIELD_ID1',0,'CHANNEL_ID'),
(299,2,0,'CHANNEL_LOG_TABLE_FIELD_NAME1',0,'CHANNEL_ID'),
(300,2,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED1',0,'Y'),
(301,2,0,'CHANNEL_LOG_TABLE_FIELD_ID2',0,'LOG_DATE'),
(302,2,0,'CHANNEL_LOG_TABLE_FIELD_NAME2',0,'LOG_DATE'),
(303,2,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED2',0,'Y'),
(304,2,0,'CHANNEL_LOG_TABLE_FIELD_ID3',0,'LOGGING_OBJECT_TYPE'),
(305,2,0,'CHANNEL_LOG_TABLE_FIELD_NAME3',0,'LOGGING_OBJECT_TYPE'),
(306,2,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED3',0,'Y'),
(307,2,0,'CHANNEL_LOG_TABLE_FIELD_ID4',0,'OBJECT_NAME'),
(308,2,0,'CHANNEL_LOG_TABLE_FIELD_NAME4',0,'OBJECT_NAME'),
(309,2,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED4',0,'Y'),
(310,2,0,'CHANNEL_LOG_TABLE_FIELD_ID5',0,'OBJECT_COPY'),
(311,2,0,'CHANNEL_LOG_TABLE_FIELD_NAME5',0,'OBJECT_COPY'),
(312,2,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED5',0,'Y'),
(313,2,0,'CHANNEL_LOG_TABLE_FIELD_ID6',0,'REPOSITORY_DIRECTORY'),
(314,2,0,'CHANNEL_LOG_TABLE_FIELD_NAME6',0,'REPOSITORY_DIRECTORY'),
(315,2,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED6',0,'Y'),
(316,2,0,'CHANNEL_LOG_TABLE_FIELD_ID7',0,'FILENAME'),
(317,2,0,'CHANNEL_LOG_TABLE_FIELD_NAME7',0,'FILENAME'),
(318,2,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED7',0,'Y'),
(319,2,0,'CHANNEL_LOG_TABLE_FIELD_ID8',0,'OBJECT_ID'),
(320,2,0,'CHANNEL_LOG_TABLE_FIELD_NAME8',0,'OBJECT_ID'),
(321,2,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED8',0,'Y'),
(322,2,0,'CHANNEL_LOG_TABLE_FIELD_ID9',0,'OBJECT_REVISION'),
(323,2,0,'CHANNEL_LOG_TABLE_FIELD_NAME9',0,'OBJECT_REVISION'),
(324,2,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED9',0,'Y'),
(325,2,0,'CHANNEL_LOG_TABLE_FIELD_ID10',0,'PARENT_CHANNEL_ID'),
(326,2,0,'CHANNEL_LOG_TABLE_FIELD_NAME10',0,'PARENT_CHANNEL_ID'),
(327,2,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED10',0,'Y'),
(328,2,0,'CHANNEL_LOG_TABLE_FIELD_ID11',0,'ROOT_CHANNEL_ID'),
(329,2,0,'CHANNEL_LOG_TABLE_FIELD_NAME11',0,'ROOT_CHANNEL_ID'),
(330,2,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED11',0,'Y'),
(331,1,0,'LOG_SIZE_LIMIT',0,NULL),
(332,1,0,'JOB_LOG_TABLE_CONNECTION_NAME',0,NULL),
(333,1,0,'JOB_LOG_TABLE_SCHEMA_NAME',0,NULL),
(334,1,0,'JOB_LOG_TABLE_TABLE_NAME',0,NULL),
(335,1,0,'JOB_LOG_TABLE_TIMEOUT_IN_DAYS',0,NULL),
(336,1,0,'JOB_LOG_TABLE_FIELD_ID0',0,'ID_JOB'),
(337,1,0,'JOB_LOG_TABLE_FIELD_NAME0',0,'ID_JOB'),
(338,1,0,'JOB_LOG_TABLE_FIELD_ENABLED0',0,'Y'),
(339,1,0,'JOB_LOG_TABLE_FIELD_ID1',0,'CHANNEL_ID'),
(340,1,0,'JOB_LOG_TABLE_FIELD_NAME1',0,'CHANNEL_ID'),
(341,1,0,'JOB_LOG_TABLE_FIELD_ENABLED1',0,'Y'),
(342,1,0,'JOB_LOG_TABLE_FIELD_ID2',0,'JOBNAME'),
(343,1,0,'JOB_LOG_TABLE_FIELD_NAME2',0,'JOBNAME'),
(344,1,0,'JOB_LOG_TABLE_FIELD_ENABLED2',0,'Y'),
(345,1,0,'JOB_LOG_TABLE_FIELD_ID3',0,'STATUS'),
(346,1,0,'JOB_LOG_TABLE_FIELD_NAME3',0,'STATUS'),
(347,1,0,'JOB_LOG_TABLE_FIELD_ENABLED3',0,'Y'),
(348,1,0,'JOB_LOG_TABLE_FIELD_ID4',0,'LINES_READ'),
(349,1,0,'JOB_LOG_TABLE_FIELD_NAME4',0,'LINES_READ'),
(350,1,0,'JOB_LOG_TABLE_FIELD_ENABLED4',0,'Y'),
(351,1,0,'JOB_LOG_TABLE_FIELD_ID5',0,'LINES_WRITTEN'),
(352,1,0,'JOB_LOG_TABLE_FIELD_NAME5',0,'LINES_WRITTEN'),
(353,1,0,'JOB_LOG_TABLE_FIELD_ENABLED5',0,'Y'),
(354,1,0,'JOB_LOG_TABLE_FIELD_ID6',0,'LINES_UPDATED'),
(355,1,0,'JOB_LOG_TABLE_FIELD_NAME6',0,'LINES_UPDATED'),
(356,1,0,'JOB_LOG_TABLE_FIELD_ENABLED6',0,'Y'),
(357,1,0,'JOB_LOG_TABLE_FIELD_ID7',0,'LINES_INPUT'),
(358,1,0,'JOB_LOG_TABLE_FIELD_NAME7',0,'LINES_INPUT'),
(359,1,0,'JOB_LOG_TABLE_FIELD_ENABLED7',0,'Y'),
(360,1,0,'JOB_LOG_TABLE_FIELD_ID8',0,'LINES_OUTPUT'),
(361,1,0,'JOB_LOG_TABLE_FIELD_NAME8',0,'LINES_OUTPUT'),
(362,1,0,'JOB_LOG_TABLE_FIELD_ENABLED8',0,'Y'),
(363,1,0,'JOB_LOG_TABLE_FIELD_ID9',0,'LINES_REJECTED'),
(364,1,0,'JOB_LOG_TABLE_FIELD_NAME9',0,'LINES_REJECTED'),
(365,1,0,'JOB_LOG_TABLE_FIELD_ENABLED9',0,'Y'),
(366,1,0,'JOB_LOG_TABLE_FIELD_ID10',0,'ERRORS'),
(367,1,0,'JOB_LOG_TABLE_FIELD_NAME10',0,'ERRORS'),
(368,1,0,'JOB_LOG_TABLE_FIELD_ENABLED10',0,'Y'),
(369,1,0,'JOB_LOG_TABLE_FIELD_ID11',0,'STARTDATE'),
(370,1,0,'JOB_LOG_TABLE_FIELD_NAME11',0,'STARTDATE'),
(371,1,0,'JOB_LOG_TABLE_FIELD_ENABLED11',0,'Y'),
(372,1,0,'JOB_LOG_TABLE_FIELD_ID12',0,'ENDDATE'),
(373,1,0,'JOB_LOG_TABLE_FIELD_NAME12',0,'ENDDATE'),
(374,1,0,'JOB_LOG_TABLE_FIELD_ENABLED12',0,'Y'),
(375,1,0,'JOB_LOG_TABLE_FIELD_ID13',0,'LOGDATE'),
(376,1,0,'JOB_LOG_TABLE_FIELD_NAME13',0,'LOGDATE'),
(377,1,0,'JOB_LOG_TABLE_FIELD_ENABLED13',0,'Y'),
(378,1,0,'JOB_LOG_TABLE_FIELD_ID14',0,'DEPDATE'),
(379,1,0,'JOB_LOG_TABLE_FIELD_NAME14',0,'DEPDATE'),
(380,1,0,'JOB_LOG_TABLE_FIELD_ENABLED14',0,'Y'),
(381,1,0,'JOB_LOG_TABLE_FIELD_ID15',0,'REPLAYDATE'),
(382,1,0,'JOB_LOG_TABLE_FIELD_NAME15',0,'REPLAYDATE'),
(383,1,0,'JOB_LOG_TABLE_FIELD_ENABLED15',0,'Y'),
(384,1,0,'JOB_LOG_TABLE_FIELD_ID16',0,'LOG_FIELD'),
(385,1,0,'JOB_LOG_TABLE_FIELD_NAME16',0,'LOG_FIELD'),
(386,1,0,'JOB_LOG_TABLE_FIELD_ENABLED16',0,'Y'),
(387,1,0,'JOB_LOG_TABLE_FIELD_ID17',0,'EXECUTING_SERVER'),
(388,1,0,'JOB_LOG_TABLE_FIELD_NAME17',0,'EXECUTING_SERVER'),
(389,1,0,'JOB_LOG_TABLE_FIELD_ENABLED17',0,'N'),
(390,1,0,'JOB_LOG_TABLE_FIELD_ID18',0,'EXECUTING_USER'),
(391,1,0,'JOB_LOG_TABLE_FIELD_NAME18',0,'EXECUTING_USER'),
(392,1,0,'JOB_LOG_TABLE_FIELD_ENABLED18',0,'N'),
(393,1,0,'JOB_LOG_TABLE_FIELD_ID19',0,'START_JOB_ENTRY'),
(394,1,0,'JOB_LOG_TABLE_FIELD_NAME19',0,'START_JOB_ENTRY'),
(395,1,0,'JOB_LOG_TABLE_FIELD_ENABLED19',0,'N'),
(396,1,0,'JOB_LOG_TABLE_FIELD_ID20',0,'CLIENT'),
(397,1,0,'JOB_LOG_TABLE_FIELD_NAME20',0,'CLIENT'),
(398,1,0,'JOB_LOG_TABLE_FIELD_ENABLED20',0,'N'),
(399,1,0,'JOBLOG_TABLE_INTERVAL',0,NULL),
(400,1,0,'JOBLOG_TABLE_SIZE_LIMIT',0,NULL),
(401,1,0,'JOB_ENTRY_LOG_TABLE_CONNECTION_NAME',0,NULL),
(402,1,0,'JOB_ENTRY_LOG_TABLE_SCHEMA_NAME',0,NULL),
(403,1,0,'JOB_ENTRY_LOG_TABLE_TABLE_NAME',0,NULL),
(404,1,0,'JOB_ENTRY_LOG_TABLE_TIMEOUT_IN_DAYS',0,NULL),
(405,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID0',0,'ID_BATCH'),
(406,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME0',0,'ID_BATCH'),
(407,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED0',0,'Y'),
(408,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID1',0,'CHANNEL_ID'),
(409,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME1',0,'CHANNEL_ID'),
(410,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED1',0,'Y'),
(411,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID2',0,'LOG_DATE'),
(412,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME2',0,'LOG_DATE'),
(413,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED2',0,'Y'),
(414,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID3',0,'JOBNAME'),
(415,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME3',0,'TRANSNAME'),
(416,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED3',0,'Y'),
(417,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID4',0,'JOBENTRYNAME'),
(418,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME4',0,'STEPNAME'),
(419,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED4',0,'Y'),
(420,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID5',0,'LINES_READ'),
(421,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME5',0,'LINES_READ'),
(422,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED5',0,'Y'),
(423,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID6',0,'LINES_WRITTEN'),
(424,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME6',0,'LINES_WRITTEN'),
(425,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED6',0,'Y'),
(426,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID7',0,'LINES_UPDATED'),
(427,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME7',0,'LINES_UPDATED'),
(428,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED7',0,'Y'),
(429,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID8',0,'LINES_INPUT'),
(430,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME8',0,'LINES_INPUT'),
(431,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED8',0,'Y'),
(432,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID9',0,'LINES_OUTPUT'),
(433,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME9',0,'LINES_OUTPUT'),
(434,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED9',0,'Y'),
(435,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID10',0,'LINES_REJECTED'),
(436,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME10',0,'LINES_REJECTED'),
(437,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED10',0,'Y'),
(438,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID11',0,'ERRORS'),
(439,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME11',0,'ERRORS'),
(440,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED11',0,'Y'),
(441,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID12',0,'RESULT'),
(442,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME12',0,'RESULT'),
(443,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED12',0,'Y'),
(444,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID13',0,'NR_RESULT_ROWS'),
(445,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME13',0,'NR_RESULT_ROWS'),
(446,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED13',0,'Y'),
(447,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID14',0,'NR_RESULT_FILES'),
(448,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME14',0,'NR_RESULT_FILES'),
(449,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED14',0,'Y'),
(450,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID15',0,'LOG_FIELD'),
(451,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME15',0,'LOG_FIELD'),
(452,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED15',0,'N'),
(453,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ID16',0,'COPY_NR'),
(454,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_NAME16',0,'COPY_NR'),
(455,1,0,'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED16',0,'N'),
(456,1,0,'CHANNEL_LOG_TABLE_CONNECTION_NAME',0,NULL),
(457,1,0,'CHANNEL_LOG_TABLE_SCHEMA_NAME',0,NULL),
(458,1,0,'CHANNEL_LOG_TABLE_TABLE_NAME',0,NULL),
(459,1,0,'CHANNEL_LOG_TABLE_TIMEOUT_IN_DAYS',0,NULL),
(460,1,0,'CHANNEL_LOG_TABLE_FIELD_ID0',0,'ID_BATCH'),
(461,1,0,'CHANNEL_LOG_TABLE_FIELD_NAME0',0,'ID_BATCH'),
(462,1,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED0',0,'Y'),
(463,1,0,'CHANNEL_LOG_TABLE_FIELD_ID1',0,'CHANNEL_ID'),
(464,1,0,'CHANNEL_LOG_TABLE_FIELD_NAME1',0,'CHANNEL_ID'),
(465,1,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED1',0,'Y'),
(466,1,0,'CHANNEL_LOG_TABLE_FIELD_ID2',0,'LOG_DATE'),
(467,1,0,'CHANNEL_LOG_TABLE_FIELD_NAME2',0,'LOG_DATE'),
(468,1,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED2',0,'Y'),
(469,1,0,'CHANNEL_LOG_TABLE_FIELD_ID3',0,'LOGGING_OBJECT_TYPE'),
(470,1,0,'CHANNEL_LOG_TABLE_FIELD_NAME3',0,'LOGGING_OBJECT_TYPE'),
(471,1,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED3',0,'Y'),
(472,1,0,'CHANNEL_LOG_TABLE_FIELD_ID4',0,'OBJECT_NAME'),
(473,1,0,'CHANNEL_LOG_TABLE_FIELD_NAME4',0,'OBJECT_NAME'),
(474,1,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED4',0,'Y'),
(475,1,0,'CHANNEL_LOG_TABLE_FIELD_ID5',0,'OBJECT_COPY'),
(476,1,0,'CHANNEL_LOG_TABLE_FIELD_NAME5',0,'OBJECT_COPY'),
(477,1,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED5',0,'Y'),
(478,1,0,'CHANNEL_LOG_TABLE_FIELD_ID6',0,'REPOSITORY_DIRECTORY'),
(479,1,0,'CHANNEL_LOG_TABLE_FIELD_NAME6',0,'REPOSITORY_DIRECTORY'),
(480,1,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED6',0,'Y'),
(481,1,0,'CHANNEL_LOG_TABLE_FIELD_ID7',0,'FILENAME'),
(482,1,0,'CHANNEL_LOG_TABLE_FIELD_NAME7',0,'FILENAME'),
(483,1,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED7',0,'Y'),
(484,1,0,'CHANNEL_LOG_TABLE_FIELD_ID8',0,'OBJECT_ID'),
(485,1,0,'CHANNEL_LOG_TABLE_FIELD_NAME8',0,'OBJECT_ID'),
(486,1,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED8',0,'Y'),
(487,1,0,'CHANNEL_LOG_TABLE_FIELD_ID9',0,'OBJECT_REVISION'),
(488,1,0,'CHANNEL_LOG_TABLE_FIELD_NAME9',0,'OBJECT_REVISION'),
(489,1,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED9',0,'Y'),
(490,1,0,'CHANNEL_LOG_TABLE_FIELD_ID10',0,'PARENT_CHANNEL_ID'),
(491,1,0,'CHANNEL_LOG_TABLE_FIELD_NAME10',0,'PARENT_CHANNEL_ID'),
(492,1,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED10',0,'Y'),
(493,1,0,'CHANNEL_LOG_TABLE_FIELD_ID11',0,'ROOT_CHANNEL_ID'),
(494,1,0,'CHANNEL_LOG_TABLE_FIELD_NAME11',0,'ROOT_CHANNEL_ID'),
(495,1,0,'CHANNEL_LOG_TABLE_FIELD_ENABLED11',0,'Y');

/*Table structure for table `r_job_hop` */

DROP TABLE IF EXISTS `r_job_hop`;

CREATE TABLE `r_job_hop` (
  `id_job_hop` bigint(20) NOT NULL,
  `id_job` int(11) DEFAULT NULL,
  `id_jobentry_copy_from` int(11) DEFAULT NULL,
  `id_jobentry_copy_to` int(11) DEFAULT NULL,
  `enabled` char(1) DEFAULT NULL,
  `evaluation` char(1) DEFAULT NULL,
  `unconditional` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_job_hop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_job_hop` */

insert  into `r_job_hop`(`id_job_hop`,`id_job`,`id_jobentry_copy_from`,`id_jobentry_copy_to`,`enabled`,`evaluation`,`unconditional`) values 
(3,2,5,4,'1','1','1'),
(4,2,4,6,'1','1','0'),
(5,1,7,8,'1','1','1'),
(6,1,8,9,'1','1','0');

/*Table structure for table `r_job_lock` */

DROP TABLE IF EXISTS `r_job_lock`;

CREATE TABLE `r_job_lock` (
  `id_job_lock` bigint(20) NOT NULL,
  `id_job` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `lock_message` mediumtext,
  `lock_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id_job_lock`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_job_lock` */

/*Table structure for table `r_job_note` */

DROP TABLE IF EXISTS `r_job_note`;

CREATE TABLE `r_job_note` (
  `id_job` int(11) DEFAULT NULL,
  `id_note` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_job_note` */

/*Table structure for table `r_jobentry` */

DROP TABLE IF EXISTS `r_jobentry`;

CREATE TABLE `r_jobentry` (
  `id_jobentry` bigint(20) NOT NULL,
  `id_job` int(11) DEFAULT NULL,
  `id_jobentry_type` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` mediumtext,
  PRIMARY KEY (`id_jobentry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_jobentry` */

insert  into `r_jobentry`(`id_jobentry`,`id_job`,`id_jobentry_type`,`name`,`description`) values 
(4,2,88,'ËΩ¨Êç¢',NULL),
(5,2,75,'START',NULL),
(6,2,58,'ÊàêÂäü',NULL),
(7,1,75,'START',NULL),
(8,1,28,'shell',NULL),
(9,1,58,'??',NULL);

/*Table structure for table `r_jobentry_attribute` */

DROP TABLE IF EXISTS `r_jobentry_attribute`;

CREATE TABLE `r_jobentry_attribute` (
  `id_jobentry_attribute` bigint(20) NOT NULL,
  `id_job` int(11) DEFAULT NULL,
  `id_jobentry` int(11) DEFAULT NULL,
  `nr` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `value_num` double DEFAULT NULL,
  `value_str` mediumtext,
  PRIMARY KEY (`id_jobentry_attribute`),
  UNIQUE KEY `idx_rjea` (`id_jobentry_attribute`,`code`,`nr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_jobentry_attribute` */

insert  into `r_jobentry_attribute`(`id_jobentry_attribute`,`id_job`,`id_jobentry`,`nr`,`code`,`value_num`,`value_str`) values 
(24,2,4,0,'specification_method',0,'filename'),
(25,2,4,0,'trans_object_id',0,NULL),
(26,2,4,0,'name',0,NULL),
(27,2,4,0,'dir_path',0,NULL),
(28,2,4,0,'file_name',0,'C:\\Users\\kong\\Desktop\\change.ktr'),
(29,2,4,0,'arg_from_previous',0,'N'),
(30,2,4,0,'params_from_previous',0,'N'),
(31,2,4,0,'exec_per_row',0,'N'),
(32,2,4,0,'clear_rows',0,'N'),
(33,2,4,0,'clear_files',0,'N'),
(34,2,4,0,'set_logfile',0,'N'),
(35,2,4,0,'add_date',0,'N'),
(36,2,4,0,'add_time',0,'N'),
(37,2,4,0,'logfile',0,NULL),
(38,2,4,0,'logext',0,NULL),
(39,2,4,0,'loglevel',0,'Basic'),
(40,2,4,0,'cluster',0,'N'),
(41,2,4,0,'slave_server_name',0,NULL),
(42,2,4,0,'set_append_logfile',0,'N'),
(43,2,4,0,'wait_until_finished',0,'Y'),
(44,2,4,0,'follow_abort_remote',0,'N'),
(45,2,4,0,'create_parent_folder',0,'N'),
(46,2,4,0,'logging_remote_work',0,'N'),
(47,2,4,0,'pass_all_parameters',0,'Y'),
(48,2,5,0,'start',0,'Y'),
(49,2,5,0,'dummy',0,'N'),
(50,2,5,0,'repeat',0,'Y'),
(51,2,5,0,'schedulerType',1,NULL),
(52,2,5,0,'intervalSeconds',5,NULL),
(53,2,5,0,'intervalMinutes',0,NULL),
(54,2,5,0,'hour',12,NULL),
(55,2,5,0,'minutes',0,NULL),
(56,2,5,0,'weekDay',0,NULL),
(57,2,5,0,'dayOfMonth',1,NULL),
(58,1,7,0,'start',0,'Y'),
(59,1,7,0,'dummy',0,'N'),
(60,1,7,0,'repeat',0,'Y'),
(61,1,7,0,'schedulerType',1,NULL),
(62,1,7,0,'intervalSeconds',7,NULL),
(63,1,7,0,'intervalMinutes',0,NULL),
(64,1,7,0,'hour',12,NULL),
(65,1,7,0,'minutes',0,NULL),
(66,1,7,0,'weekDay',1,NULL),
(67,1,7,0,'dayOfMonth',1,NULL),
(68,1,8,0,'file_name',0,NULL),
(69,1,8,0,'work_directory',0,'/tmp'),
(70,1,8,0,'arg_from_previous',0,'N'),
(71,1,8,0,'exec_per_row',0,'N'),
(72,1,8,0,'set_logfile',0,'N'),
(73,1,8,0,'set_append_logfile',0,'N'),
(74,1,8,0,'add_date',0,'N'),
(75,1,8,0,'add_time',0,'N'),
(76,1,8,0,'logfile',0,NULL),
(77,1,8,0,'logext',0,NULL),
(78,1,8,0,'loglevel',0,'Basic'),
(79,1,8,0,'insertScript',0,'Y'),
(80,1,8,0,'script',0,'dir');

/*Table structure for table `r_jobentry_copy` */

DROP TABLE IF EXISTS `r_jobentry_copy`;

CREATE TABLE `r_jobentry_copy` (
  `id_jobentry_copy` bigint(20) NOT NULL,
  `id_jobentry` int(11) DEFAULT NULL,
  `id_job` int(11) DEFAULT NULL,
  `id_jobentry_type` int(11) DEFAULT NULL,
  `nr` int(11) DEFAULT NULL,
  `gui_location_x` int(11) DEFAULT NULL,
  `gui_location_y` int(11) DEFAULT NULL,
  `gui_draw` char(1) DEFAULT NULL,
  `parallel` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_jobentry_copy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_jobentry_copy` */

insert  into `r_jobentry_copy`(`id_jobentry_copy`,`id_jobentry`,`id_job`,`id_jobentry_type`,`nr`,`gui_location_x`,`gui_location_y`,`gui_draw`,`parallel`) values 
(4,4,2,88,0,459,258,'1','0'),
(5,5,2,75,0,342,259,'1','0'),
(6,6,2,58,0,621,260,'1','0'),
(7,7,1,75,0,121,183,'1','0'),
(8,8,1,28,0,265,183,'1','0'),
(9,9,1,58,0,409,183,'1','0');

/*Table structure for table `r_jobentry_database` */

DROP TABLE IF EXISTS `r_jobentry_database`;

CREATE TABLE `r_jobentry_database` (
  `id_job` int(11) DEFAULT NULL,
  `id_jobentry` int(11) DEFAULT NULL,
  `id_database` int(11) DEFAULT NULL,
  KEY `idx_rjd1` (`id_job`),
  KEY `idx_rjd2` (`id_database`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_jobentry_database` */

/*Table structure for table `r_jobentry_type` */

DROP TABLE IF EXISTS `r_jobentry_type`;

CREATE TABLE `r_jobentry_type` (
  `id_jobentry_type` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_jobentry_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_jobentry_type` */

insert  into `r_jobentry_type`(`id_jobentry_type`,`code`,`description`) values 
(1,'EMRJobExecutorPlugin','Amazon EMR Job Executor'),
(2,'HiveJobExecutorPlugin','Amazon Hive Job Executor'),
(3,'DOS_UNIX_CONVERTER','DOSÂíåUNIX‰πãÈó¥ÁöÑÊñáÊú¨ËΩ¨Êç¢'),
(4,'DTD_VALIDATOR','DTD È™åËØÅ'),
(5,'DummyJob','Example plugin'),
(6,'FTP_PUT','FTP ‰∏ä‰º†'),
(7,'FTP','FTP ‰∏ãËΩΩ'),
(8,'FTP_DELETE','FTP Âà†Èô§'),
(9,'FTPS_PUT','FTPS ‰∏ä‰º†'),
(10,'FTPS_GET','FTPS ‰∏ãËΩΩ'),
(11,'HadoopCopyFilesPlugin','Hadoop Copy Files'),
(12,'HadoopJobExecutorPlugin','Hadoop Job Executor '),
(13,'HL7MLLPAcknowledge','HL7 MLLP Acknowledge'),
(14,'HL7MLLPInput','HL7 MLLP Input'),
(15,'HTTP','HTTP'),
(16,'JobEntryKettleUtil','kettleÂ∑•ÂÖ∑'),
(17,'MS_ACCESS_BULK_LOAD','MS Access ÊâπÈáèÂä†ËΩΩ'),
(18,'MYSQL_BULK_LOAD','Mysql ÊâπÈáèÂä†ËΩΩ'),
(19,'OozieJobExecutor','Oozie Job Executor'),
(20,'PALO_CUBE_CREATE','Palo Cube Create'),
(21,'PALO_CUBE_DELETE','Palo Cube Delete'),
(22,'HadoopTransJobExecutorPlugin','Pentaho MapReduce'),
(23,'HadoopPigScriptExecutorPlugin','Pig Script Executor'),
(24,'PING','Ping ‰∏ÄÂè∞‰∏ªÊú∫'),
(25,'GET_POP','POP Êî∂‰ø°'),
(26,'SFTPPUT','SFTP ‰∏ä‰º†'),
(27,'SFTP','SFTP ‰∏ãËΩΩ'),
(28,'SHELL','Shell'),
(29,'SparkSubmit','Spark Submit'),
(30,'SQL','SQL'),
(31,'MSSQL_BULK_LOAD','SQLServer ÊâπÈáèÂä†ËΩΩ'),
(32,'SqoopExport','Sqoop Export'),
(33,'SqoopImport','Sqoop Import'),
(34,'SSH2_PUT','SSH2 ‰∏ä‰º†'),
(35,'SSH2_GET','SSH2 ‰∏ãËΩΩ'),
(36,'TALEND_JOB_EXEC','Talend ‰Ωú‰∏öÊâßË°å'),
(37,'XSD_VALIDATOR','XSD È™åËØÅÂô®'),
(38,'XSLT','XSL ËΩ¨Êç¢'),
(39,'ZIP_FILE','Zip ÂéãÁº©Êñá‰ª∂'),
(40,'ABORT','‰∏≠Ê≠¢‰Ωú‰∏ö'),
(41,'MYSQL_BULK_FILE','‰ªé Mysql ÊâπÈáèÂØºÂá∫Âà∞Êñá‰ª∂'),
(42,'DELETE_RESULT_FILENAMES','‰ªéÁªìÊûúÊñá‰ª∂‰∏≠Âà†Èô§Êñá‰ª∂'),
(43,'JOB','‰Ωú‰∏ö'),
(44,'EVAL','‰ΩøÁî® JavaScript ËÑöÊú¨È™åËØÅ'),
(45,'WRITE_TO_FILE','ÂÜôÂÖ•Êñá‰ª∂'),
(46,'WRITE_TO_LOG','ÂÜôÊó•Âøó'),
(47,'CREATE_FOLDER','ÂàõÂª∫‰∏Ä‰∏™ÁõÆÂΩï'),
(48,'CREATE_FILE','ÂàõÂª∫Êñá‰ª∂'),
(49,'DELETE_FILE','Âà†Èô§‰∏Ä‰∏™Êñá‰ª∂'),
(50,'DELETE_FILES','Âà†Èô§Â§ö‰∏™Êñá‰ª∂'),
(51,'DELETE_FOLDERS','Âà†Èô§ÁõÆÂΩï'),
(52,'SNMP_TRAP','ÂèëÈÄÅ SNMP Ëá™Èô∑'),
(53,'SEND_NAGIOS_PASSIVE_CHECK','ÂèëÈÄÅNagios Ë¢´Âä®Ê£ÄÊü•'),
(54,'MAIL','ÂèëÈÄÅÈÇÆ‰ª∂'),
(55,'COPY_MOVE_RESULT_FILENAMES','Â§çÂà∂/ÁßªÂä®ÁªìÊûúÊñá‰ª∂'),
(56,'COPY_FILES','Â§çÂà∂Êñá‰ª∂'),
(57,'EXPORT_REPOSITORY','ÂØºÂá∫ËµÑÊ∫êÂ∫ìÂà∞XMLÊñá‰ª∂'),
(58,'SUCCESS','ÊàêÂäü'),
(59,'MSGBOX_INFO','ÊòæÁ§∫Ê∂àÊÅØÂØπËØùÊ°Ü'),
(60,'XML_WELL_FORMED','Ê£ÄÊü• XML Êñá‰ª∂Ê†ºÂºè'),
(61,'WEBSERVICE_AVAILABLE','Ê£ÄÊü•webÊúçÂä°ÊòØÂê¶ÂèØÁî®'),
(62,'FILE_EXISTS','Ê£ÄÊü•‰∏Ä‰∏™Êñá‰ª∂ÊòØÂê¶Â≠òÂú®'),
(63,'COLUMNS_EXIST','Ê£ÄÊü•ÂàóÊòØÂê¶Â≠òÂú®'),
(64,'FILES_EXIST','Ê£ÄÊü•Â§ö‰∏™Êñá‰ª∂ÊòØÂê¶Â≠òÂú®'),
(65,'CHECK_DB_CONNECTIONS','Ê£ÄÊü•Êï∞ÊçÆÂ∫ìËøûÊé•'),
(66,'CHECK_FILES_LOCKED','Ê£ÄÊü•Êñá‰ª∂ÊòØÂê¶Ë¢´ÈîÅ'),
(67,'CONNECTED_TO_REPOSITORY','Ê£ÄÊü•ÊòØÂê¶ËøûÊé•Âà∞ËµÑÊ∫êÂ∫ì'),
(68,'FOLDER_IS_EMPTY','Ê£ÄÊü•ÁõÆÂΩïÊòØÂê¶‰∏∫Á©∫'),
(69,'TABLE_EXISTS','Ê£ÄÊü•Ë°®ÊòØÂê¶Â≠òÂú®'),
(70,'SIMPLE_EVAL','Ê£ÄÈ™åÂ≠óÊÆµÁöÑÂÄº'),
(71,'FILE_COMPARE','ÊØîËæÉÊñá‰ª∂'),
(72,'FOLDERS_COMPARE','ÊØîËæÉÁõÆÂΩï'),
(73,'ADD_RESULT_FILENAMES','Ê∑ªÂä†Êñá‰ª∂Âà∞ÁªìÊûúÊñá‰ª∂‰∏≠'),
(74,'TRUNCATE_TABLES','Ê∏ÖÁ©∫Ë°®'),
(75,'SPECIAL','ÁâπÊÆä‰Ωú‰∏öÈ°π'),
(76,'SYSLOG','Áî® Syslog ÂèëÈÄÅ‰ø°ÊÅØ'),
(77,'PGP_ENCRYPT_FILES','Áî®PGPÂä†ÂØÜÊñá‰ª∂'),
(78,'PGP_DECRYPT_FILES','Áî®PGPËß£ÂØÜÊñá‰ª∂'),
(79,'PGP_VERIFY_FILES','Áî®PGPÈ™åËØÅÊñá‰ª∂Á≠æÂêç'),
(80,'MOVE_FILES','ÁßªÂä®Êñá‰ª∂'),
(81,'DELAY','Á≠âÂæÖ'),
(82,'WAIT_FOR_SQL','Á≠âÂæÖSQL'),
(83,'WAIT_FOR_FILE','Á≠âÂæÖÊñá‰ª∂'),
(84,'UNZIP','Ëß£ÂéãÁº©Êñá‰ª∂'),
(85,'EVAL_FILES_METRICS','ËÆ°ÁÆóÊñá‰ª∂Â§ßÂ∞èÊàñ‰∏™Êï∞'),
(86,'EVAL_TABLE_CONTENT','ËÆ°ÁÆóË°®‰∏≠ÁöÑËÆ∞ÂΩïÊï∞'),
(87,'SET_VARIABLES','ËÆæÁΩÆÂèòÈáè'),
(88,'TRANS','ËΩ¨Êç¢'),
(89,'TELNET','ËøúÁ®ãÁôªÂΩï‰∏ÄÂè∞‰∏ªÊú∫'),
(90,'MAIL_VALIDATOR','ÈÇÆ‰ª∂È™åËØÅ');

/*Table structure for table `r_log` */

DROP TABLE IF EXISTS `r_log`;

CREATE TABLE `r_log` (
  `id_log` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `id_loglevel` int(11) DEFAULT NULL,
  `logtype` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `fileextention` varchar(255) DEFAULT NULL,
  `add_date` char(1) DEFAULT NULL,
  `add_time` char(1) DEFAULT NULL,
  `id_database_log` int(11) DEFAULT NULL,
  `table_name_log` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_log` */

/*Table structure for table `r_loglevel` */

DROP TABLE IF EXISTS `r_loglevel`;

CREATE TABLE `r_loglevel` (
  `id_loglevel` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_loglevel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_loglevel` */

insert  into `r_loglevel`(`id_loglevel`,`code`,`description`) values 
(1,'Error','ÈîôËØØÊó•Âøó'),
(2,'Minimal','ÊúÄÂ∞èÊó•Âøó'),
(3,'Basic','Âü∫Êú¨Êó•Âøó'),
(4,'Detailed','ËØ¶ÁªÜÊó•Âøó'),
(5,'Debug','Ë∞ÉËØï'),
(6,'Rowlevel','Ë°åÁ∫ßÊó•Âøó(ÈùûÂ∏∏ËØ¶ÁªÜ)');

/*Table structure for table `r_namespace` */

DROP TABLE IF EXISTS `r_namespace`;

CREATE TABLE `r_namespace` (
  `id_namespace` bigint(20) NOT NULL,
  `name` mediumtext,
  PRIMARY KEY (`id_namespace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_namespace` */

/*Table structure for table `r_note` */

DROP TABLE IF EXISTS `r_note`;

CREATE TABLE `r_note` (
  `id_note` bigint(20) NOT NULL,
  `value_str` mediumtext,
  `gui_location_x` int(11) DEFAULT NULL,
  `gui_location_y` int(11) DEFAULT NULL,
  `gui_location_width` int(11) DEFAULT NULL,
  `gui_location_height` int(11) DEFAULT NULL,
  `font_name` mediumtext,
  `font_size` int(11) DEFAULT NULL,
  `font_bold` char(1) DEFAULT NULL,
  `font_italic` char(1) DEFAULT NULL,
  `font_color_red` int(11) DEFAULT NULL,
  `font_color_green` int(11) DEFAULT NULL,
  `font_color_blue` int(11) DEFAULT NULL,
  `font_back_ground_color_red` int(11) DEFAULT NULL,
  `font_back_ground_color_green` int(11) DEFAULT NULL,
  `font_back_ground_color_blue` int(11) DEFAULT NULL,
  `font_border_color_red` int(11) DEFAULT NULL,
  `font_border_color_green` int(11) DEFAULT NULL,
  `font_border_color_blue` int(11) DEFAULT NULL,
  `draw_shadow` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_note`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_note` */

/*Table structure for table `r_partition` */

DROP TABLE IF EXISTS `r_partition`;

CREATE TABLE `r_partition` (
  `id_partition` bigint(20) NOT NULL,
  `id_partition_schema` int(11) DEFAULT NULL,
  `partition_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_partition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_partition` */

/*Table structure for table `r_partition_schema` */

DROP TABLE IF EXISTS `r_partition_schema`;

CREATE TABLE `r_partition_schema` (
  `id_partition_schema` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dynamic_definition` char(1) DEFAULT NULL,
  `partitions_per_slave` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_partition_schema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_partition_schema` */

/*Table structure for table `r_repository_log` */

DROP TABLE IF EXISTS `r_repository_log`;

CREATE TABLE `r_repository_log` (
  `id_repository_log` bigint(20) NOT NULL,
  `rep_version` varchar(255) DEFAULT NULL,
  `log_date` datetime DEFAULT NULL,
  `log_user` varchar(255) DEFAULT NULL,
  `operation_desc` mediumtext,
  PRIMARY KEY (`id_repository_log`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_repository_log` */

insert  into `r_repository_log`(`id_repository_log`,`rep_version`,`log_date`,`log_user`,`operation_desc`) values 
(1,'5.0','2017-06-15 14:44:16','admin','save job \'xxx\''),
(2,'5.0','2017-12-15 11:16:24','admin','Creation of initial version'),
(3,'5.0','2017-12-15 11:17:18','admin','save job \'ËΩ¨Êç¢jsonÊñá‰ª∂\''),
(4,'5.0','2017-12-15 11:18:42','admin','save job \'ËΩ¨Êç¢jsonÊñá‰ª∂\''),
(5,'5.0','2017-12-15 11:23:21','admin','save job \'ËΩ¨Êç¢jsonÊñá‰ª∂\''),
(6,'5.0','2017-12-19 15:10:34','admin','save job \'xxx\''),
(7,'5.0','2017-12-25 18:27:05','admin','save job \'ces\''),
(8,'5.0','2017-12-25 18:32:02','admin','save job \'ces1\''),
(9,'5.0','2017-12-25 18:37:35','admin','save job \'vvvvv\''),
(10,'5.0','2017-12-27 17:50:15','admin','save job \'xxx\''),
(11,'5.0','2017-12-27 17:52:47','admin','save job \'sql\''),
(12,'5.0','2017-12-27 18:09:28','admin','save job \'ÊµãËØïkm\'');

/*Table structure for table `r_slave` */

DROP TABLE IF EXISTS `r_slave`;

CREATE TABLE `r_slave` (
  `id_slave` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `host_name` varchar(255) DEFAULT NULL,
  `port` varchar(255) DEFAULT NULL,
  `web_app_name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `proxy_host_name` varchar(255) DEFAULT NULL,
  `proxy_port` varchar(255) DEFAULT NULL,
  `non_proxy_hosts` varchar(255) DEFAULT NULL,
  `master` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_slave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_slave` */

/*Table structure for table `r_step` */

DROP TABLE IF EXISTS `r_step`;

CREATE TABLE `r_step` (
  `id_step` bigint(20) NOT NULL,
  `id_transformation` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` mediumtext,
  `id_step_type` int(11) DEFAULT NULL,
  `distribute` char(1) DEFAULT NULL,
  `copies` int(11) DEFAULT NULL,
  `gui_location_x` int(11) DEFAULT NULL,
  `gui_location_y` int(11) DEFAULT NULL,
  `gui_draw` char(1) DEFAULT NULL,
  `copies_string` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_step`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_step` */

/*Table structure for table `r_step_attribute` */

DROP TABLE IF EXISTS `r_step_attribute`;

CREATE TABLE `r_step_attribute` (
  `id_step_attribute` bigint(20) NOT NULL,
  `id_transformation` int(11) DEFAULT NULL,
  `id_step` int(11) DEFAULT NULL,
  `nr` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `value_num` bigint(20) DEFAULT NULL,
  `value_str` mediumtext,
  PRIMARY KEY (`id_step_attribute`),
  UNIQUE KEY `idx_rsat` (`id_step`,`code`,`nr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_step_attribute` */

/*Table structure for table `r_step_database` */

DROP TABLE IF EXISTS `r_step_database`;

CREATE TABLE `r_step_database` (
  `id_transformation` int(11) DEFAULT NULL,
  `id_step` int(11) DEFAULT NULL,
  `id_database` int(11) DEFAULT NULL,
  KEY `idx_rsd1` (`id_transformation`),
  KEY `idx_rsd2` (`id_database`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_step_database` */

/*Table structure for table `r_step_type` */

DROP TABLE IF EXISTS `r_step_type`;

CREATE TABLE `r_step_type` (
  `id_step_type` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `helptext` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_step_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_step_type` */

insert  into `r_step_type`(`id_step_type`,`code`,`description`,`helptext`) values 
(1,'AccessInput','Access ËæìÂÖ•','Read data from a Microsoft Access file'),
(2,'AccessOutput','Access ËæìÂá∫','Stores records into an MS-Access database table.'),
(3,'AvroInput','Avro Input','Reads data from an Avro file'),
(4,'CallEndpointStep','Call endpoint','Call an endpoint of the BA Server.'),
(5,'CassandraInput','Cassandra Input','Reads data from a Cassandra table'),
(6,'CassandraOutput','Cassandra Output','Writes to a Cassandra table'),
(7,'ClosureGenerator','Closure Generator','This step allows you to generates a closure table using parent-child relationships.'),
(8,'ConcatFields','Concat Fields','Concat fields together into a new field (similar to the Text File Output step)'),
(9,'CouchDbInput','CouchDb Input','Reads from a Couch DB view'),
(10,'CsvInput','CSVÊñá‰ª∂ËæìÂÖ•','Simple CSV file input'),
(11,'CubeInput','Cube Êñá‰ª∂ËæìÂÖ•','‰ªé‰∏Ä‰∏™cubeËØªÂèñËÆ∞ÂΩï.'),
(12,'CubeOutput','CubeËæìÂá∫','ÊääÊï∞ÊçÆÂÜôÂÖ•‰∏Ä‰∏™cube'),
(13,'TypeExitEdi2XmlStep','Edi to XML','Converts Edi text to generic XML'),
(14,'ElasticSearchBulk','ElasticSearch ÊâπÈáèÂä†ËΩΩ','Performs bulk inserts into ElasticSearch'),
(15,'ShapeFileReader','ESRI Shapefile Reader','Reads shape file data from an ESRI shape file and linked DBF file'),
(16,'MetaInject','ETLÂÖÉÊï∞ÊçÆÊ≥®ÂÖ•','This step allows you to inject metadata into an existing transformation prior to execution.  This allows for the creation of dynamic and highly flexible data integration solutions.'),
(17,'DummyPlugin','Example plugin','This is an example for a plugin test step'),
(18,'ExcelInput','ExcelËæìÂÖ•','‰ªé‰∏Ä‰∏™ÂæÆËΩØÁöÑExcelÊñá‰ª∂ÈáåËØªÂèñÊï∞ÊçÆ. ÂÖºÂÆπExcel 95, 97 and 2000.'),
(19,'ExcelOutput','ExcelËæìÂá∫','Stores records into an Excel (XLS) document with formatting information.'),
(20,'GetSlaveSequence','Get ID from slave server','Retrieves unique IDs in blocks from a slave server.  The referenced sequence needs to be configured on the slave server in the XML configuration file.'),
(21,'GetSessionVariableStep','Get session variables','Get session variables from the current user session.'),
(22,'TypeExitGoogleAnalyticsInputStep','Google Analytics','Fetches data from google analytics account'),
(23,'GPLoad','Greenplum Load','Greenplum Load'),
(24,'GPBulkLoader','Greenplum ÊâπÈáèÂä†ËΩΩ','Greenplum Bulk Loader'),
(25,'ParallelGzipCsvInput','GZIP CSV Input','Parallel GZIP CSV file input reader'),
(26,'HadoopFileInputPlugin','Hadoop File Input','Process files from an HDFS location'),
(27,'HadoopFileOutputPlugin','Hadoop File Output','Create files in an HDFS location '),
(28,'HBaseInput','HBase Input','Reads data from a HBase table according to a mapping '),
(29,'HBaseOutput','HBase Output','Writes data to an HBase table according to a mapping'),
(30,'HBaseRowDecoder','HBase Row Decoder','Decodes an incoming key and HBase result object according to a mapping '),
(31,'HL7Input','HL7 Input','Reads and parses HL7 messages and outputs a series of values from the messages'),
(32,'HTTP','HTTP client','Call a web service over HTTP by supplying a base URL by allowing parameters to be set dynamically'),
(33,'HTTPPOST','HTTP Post','Call a web service request over HTTP by supplying a base URL by allowing parameters to be set dynamically'),
(34,'InfobrightOutput','Infobright ÊâπÈáèÂä†ËΩΩ','Load data to an Infobright database table'),
(35,'VectorWiseBulkLoader','Ingres VectorWise ÊâπÈáèÂä†ËΩΩ','This step interfaces with the Ingres VectorWise Bulk Loader \"COPY TABLE\" command.'),
(36,'UserDefinedJavaClass','Java ‰ª£Á†Å','This step allows you to program a step using Java code'),
(37,'ScriptValueMod','JavaScript‰ª£Á†Å','This is a modified plugin for the Scripting Values with improved interface and performance.\nWritten & donated to open source by Martin Lange, Proconis : http://www.proconis.de'),
(38,'JsonInput','Json ËæìÂÖ•','Extract relevant portions out of JSON structures (file or incoming field) and output rows'),
(39,'JsonOutput','Json ËæìÂá∫','Create Json bloc and output it in a field ou a file.'),
(40,'KafkaConsumer','KafkaÊ∂àË¥πËÄÖ','ËØªÂèñkafkaÊåáÂÆöÁöÑtopicÁöÑÊ∂àÊÅØ'),
(41,'KafkaProducer','kafkaÁîü‰∫ßËÄÖ','ÂÜôÂÖ•Ê∂àÊÅØÂà∞kafkaÊåáÂÆöÁöÑtopic‰∏≠'),
(42,'KettleUtil','kettleÂ∑•ÂÖ∑','Áî®javaÂÆûÁé∞Â§çÊùÇ‰∏öÂä°ÈÄªËæëÔºåÁÑ∂ÂêéÂú®KettleÁöÑËÑöÊú¨‰∏≠ÂºïÁî®„ÄÇ'),
(43,'LDAPInput','LDAP ËæìÂÖ•','Read data from LDAP host'),
(44,'LDAPOutput','LDAP ËæìÂá∫','Perform Insert, upsert, update, add or delete operations on records based on their DN (Distinguished  Name).'),
(45,'LDIFInput','LDIF ËæìÂÖ•','Read data from LDIF files'),
(46,'LucidDBBulkLoader','LucidDB ÊâπÈáèÂä†ËΩΩ','Load data into LucidDB by using their bulk load command in streaming mode. (Doesnt work on Windows!)'),
(47,'LucidDBStreamingLoader','LucidDB ÊµÅÂä†ËΩΩ','Load data into LucidDB by using Remote Rows UDX.'),
(48,'HadoopEnterPlugin','MapReduce Input','Enter a Hadoop Mapper or Reducer transformation'),
(49,'HadoopExitPlugin','MapReduce Output','Exit a Hadoop Mapper or Reducer transformation '),
(50,'TypeExitExcelWriterStep','Microsoft Excel ËæìÂá∫','Writes or appends data to an Excel file'),
(51,'MondrianInput','Mondrian ËæìÂÖ•','Execute and retrieve data using an MDX query against a Pentaho Analyses OLAP server (Mondrian)'),
(52,'MonetDBAgileMart','MonetDB Agile Mart','Load data into MonetDB for Agile BI use cases'),
(53,'MonetDBBulkLoader','MonetDB ÊâπÈáèÂä†ËΩΩ','Load data into MonetDB by using their bulk load command in streaming mode.'),
(54,'MongoDbInput','MongoDB Input','Reads from a Mongo DB collection'),
(55,'MongoDbOutput','MongoDB Output','Writes to a Mongo DB collection'),
(56,'MultiwayMergeJoin','Multiway Merge Join','Multiway Merge Join'),
(57,'MySQLBulkLoader','MySQL ÊâπÈáèÂä†ËΩΩ','MySQL bulk loader step, loading data over a named pipe (not available on MS Windows)'),
(58,'OlapInput','OLAP ËæìÂÖ•','Execute and retrieve data using an MDX query against any XML/A OLAP datasource using olap4j'),
(59,'OpenERPObjectDelete','OpenERP Object Delete','Deletes OpenERP objects'),
(60,'OpenERPObjectInput','OpenERP Object Input','Reads data from OpenERP objects'),
(61,'OpenERPObjectOutputImport','OpenERP Object Output','Writes data into OpenERP objects using the object import procedure'),
(62,'OraBulkLoader','Oracle ÊâπÈáèÂä†ËΩΩ','Use Oracle Bulk Loader to load data'),
(63,'PaloCellInput','Palo Cell Input','Reads data from a defined Palo Cube '),
(64,'PaloCellOutput','Palo Cell Output','Writes data to a defined Palo Cube'),
(65,'PaloDimInput','Palo Dim Input','Reads data from a defined Palo Dimension'),
(66,'PaloDimOutput','Palo Dim Output','Writes data to defined Palo Dimension'),
(67,'PentahoReportingOutput','Pentaho Êä•Ë°®ËæìÂá∫','Executes an existing report (PRPT)'),
(68,'PGPDecryptStream','PGP Decrypt stream','Decrypt data stream with PGP'),
(69,'PGPEncryptStream','PGP Encrypt stream','Encrypt data stream with PGP'),
(70,'PGBulkLoader','PostgreSQL ÊâπÈáèÂä†ËΩΩ','PostgreSQL Bulk Loader'),
(71,'Rest','REST Client','Consume RESTfull services.\nREpresentational State Transfer (REST) is a key design idiom that embraces a stateless client-server\narchitecture in which the web services are viewed as resources and can be identified by their URLs'),
(72,'RssInput','RSS ËæìÂÖ•','Read RSS feeds'),
(73,'RssOutput','RSS ËæìÂá∫','Read RSS stream.'),
(74,'RuleAccumulator','Rule Accumulator','Execute a rule against a set of all incoming rows'),
(75,'RuleExecutor','Rule Executor','Execute a rule against each row or a set of rows'),
(76,'S3CSVINPUT','S3 CSV ËæìÂÖ•','S3 CSV ËæìÂÖ•'),
(77,'S3FileOutputPlugin','S3 File Output','Create files in an S3 location'),
(78,'SalesforceUpsert','Salesforce Upsert','Insert or update records in Salesforce module.'),
(79,'SalesforceDelete','Salesforce Âà†Èô§','Delete records in Salesforce module.'),
(80,'SalesforceInsert','Salesforce ÊèíÂÖ•','Insert records in Salesforce module.'),
(81,'SalesforceUpdate','Salesforce Êõ¥Êñ∞','Update records in Salesforce module.'),
(82,'SalesforceInput','Salesforce ËæìÂÖ•','!BaseStep.TypeTooltipDesc.SalesforceInput!'),
(83,'SapInput','SAP ËæìÂÖ•','Read data from SAP ERP, optionally with parameters'),
(84,'SASInput','SAS ËæìÂÖ•','This step reads files in sas7bdat (SAS) native format'),
(85,'Script','Script','Calculate values by scripting in Ruby, Python, Groovy, JavaScript, ... (JSR-223)'),
(86,'SetSessionVariableStep','Set session variables','Set session variables in the current user session.'),
(87,'SFTPPut','SFTP Put','Upload a file or a stream file to remote host via SFTP'),
(88,'SimpleMapping','Simple Mapping (sub-transformation)','Run a mapping (sub-transformation), use MappingInput and MappingOutput to specify the fields interface.  This is the simplified version only allowing one input and one output data set.'),
(89,'SingleThreader','Single Threader','Executes a transformation snippet in a single thread.  You need a standard mapping or a transformation with an Injector step where data from the parent transformation will arive in blocks.'),
(90,'SocketWriter','Socket ÂÜô','Socket writer.  A socket server that can send rows of data to a socket reader.'),
(91,'SocketReader','Socket ËØª','Socket reader.  A socket client that connects to a server (Socket Writer step).'),
(92,'SQLFileOutput','SQL Êñá‰ª∂ËæìÂá∫','Output SQL INSERT statements to file'),
(93,'SSTableOutput','SSTable Output','Writes to a filesystem directory as a Cassandra SSTable'),
(94,'SwitchCase','Switch / Case','Switch a row to a certain target step based on the case value in a field.'),
(95,'TableAgileMart','Table Agile Mart','Load data into a table for Agile BI use cases'),
(96,'TeraFast','Teradata Fastload ÊâπÈáèÂä†ËΩΩ','The Teradata Fastload Bulk loader'),
(97,'TeraDataBulkLoader','Teradata TPT Bulk Loader','Teradata TPT bulkloader, using tbuild command'),
(98,'TransExecutor','Transformation Executor','This step executes a Pentaho Data Integration transformation, sets parameters and passes rows.'),
(99,'WebServiceLookup','Web ÊúçÂä°Êü•ËØ¢','‰ΩøÁî® Web ÊúçÂä°Êü•ËØ¢‰ø°ÊÅØ'),
(100,'XBaseInput','XBaseËæìÂÖ•','‰ªé‰∏Ä‰∏™XBaseÁ±ªÂûãÁöÑÊñá‰ª∂(DBF)ËØªÂèñËÆ∞ÂΩï'),
(101,'getXMLData','XML Êñá‰ª∂ËæìÂÖ•','Get data from XML file by using XPath.\n This step also allows you to parse XML defined in a previous field.'),
(102,'XMLInputStream','XML Êñá‰ª∂ËæìÂÖ• (StAXËß£Êûê)','This step is capable of processing very large and complex XML files very fast.'),
(103,'XMLInputSax','XML ÊµÅËæìÂÖ•','Read data from an XML file in a streaming fashing, working faster and consuming less memory'),
(104,'XMLJoin','XML ËøûÊé•','Joins a stream of XML-Tags into a target XML string'),
(105,'XMLInput','XMLËæìÂÖ•','‰ªé‰∏Ä‰∏™XMLËØªÂèñÊï∞ÊçÆ'),
(106,'XMLOutput','XMLËæìÂá∫','ÂÜôÊï∞ÊçÆÂà∞‰∏Ä‰∏™XMLÊñá‰ª∂'),
(107,'XSLT','XSL ËΩ¨Êç¢','Transform XML stream using XSL (eXtensible Stylesheet Language).'),
(108,'YamlInput','Yaml ËæìÂÖ•','Read YAML source (file or stream) parse them and convert them to rows and writes these to one or more output. '),
(109,'ZipFile','Zip Êñá‰ª∂','Zip a file.\nFilename will be extracted from incoming stream.'),
(110,'Abort','‰∏≠Ê≠¢','Abort a transformation'),
(111,'FilesFromResult','‰ªéÁªìÊûúËé∑ÂèñÊñá‰ª∂','This step allows you to read filenames used or generated in a previous entry in a job.'),
(112,'RowsFromResult','‰ªéÁªìÊûúËé∑ÂèñËÆ∞ÂΩï','Ëøô‰∏™ÂÖÅËÆ∏‰Ω†‰ªéÂêå‰∏Ä‰∏™‰ªªÂä°ÁöÑÂâç‰∏Ä‰∏™Êù°ÁõÆÈáåËØªÂèñËÆ∞ÂΩï.'),
(113,'XSDValidator','‰ΩøÁî® XSD Ê£ÄÈ™å XML Êñá‰ª∂','Validate XML source (files or streams) against XML Schema Definition.'),
(114,'ValueMapper','ÂÄºÊò†Â∞Ñ','Maps values of a certain field from one value to another'),
(115,'CloneRow','ÂÖãÈöÜË°å','Clone a row as many times as needed'),
(116,'Formula','ÂÖ¨Âºè','‰ΩøÁî® Pentaho ÁöÑÂÖ¨ÂºèÂ∫ìÊù•ËÆ°ÁÆóÂÖ¨Âºè'),
(117,'WriteToLog','ÂÜôÊó•Âøó','Write data to log'),
(118,'AnalyticQuery','ÂàÜÊûêÊü•ËØ¢','Execute analytic queries over a sorted dataset (LEAD/LAG/FIRST/LAST)'),
(119,'GroupBy','ÂàÜÁªÑ','‰ª•ÂàÜÁªÑÁöÑÂΩ¢ÂºèÂàõÂª∫ËÅöÂêà.{0}Ëøô‰∏™‰ªÖ‰ªÖÂú®‰∏Ä‰∏™Â∑≤ÁªèÊéíÂ•ΩÂ∫èÁöÑËæìÂÖ•ÊúâÊïà.{1}Â¶ÇÊûúËæìÂÖ•Ê≤°ÊúâÊéíÂ∫è, ‰ªÖ‰ªÖ‰∏§‰∏™ËøûÁª≠ÁöÑËÆ∞ÂΩïË°åË¢´Ê≠£Á°ÆÂ§ÑÁêÜ.'),
(120,'SplitFieldToRows3','ÂàóÊãÜÂàÜ‰∏∫Â§öË°å','Splits a single string field by delimiter and creates a new row for each split term'),
(121,'Denormaliser','ÂàóËΩ¨Ë°å','Denormalises rows by looking up key-value pairs and by assigning them to new fields in theËæìÂá∫ rows.{0}This method aggregates and needs theËæìÂÖ• rows to be sorted on the grouping fields'),
(122,'Delete','Âà†Èô§','Âü∫‰∫éÂÖ≥ÈîÆÂ≠óÂà†Èô§ËÆ∞ÂΩï'),
(123,'Janino','Âà©Áî®JaninoËÆ°ÁÆóJavaË°®ËææÂºè','Calculate the result of a Java Expression using Janino'),
(124,'StringCut','Ââ™ÂàáÂ≠óÁ¨¶‰∏≤','Strings cut (substring).'),
(125,'UnivariateStats','ÂçïÂèòÈáèÁªüËÆ°','This step computes some simple stats based on a single input field'),
(126,'Unique','ÂéªÈô§ÈáçÂ§çËÆ∞ÂΩï','ÂéªÈô§ÈáçÂ§çÁöÑËÆ∞ÂΩïË°åÔºå‰øùÊåÅËÆ∞ÂΩïÂîØ‰∏Ä{0}Ëøô‰∏™‰ªÖ‰ªÖÂü∫‰∫é‰∏Ä‰∏™Â∑≤ÁªèÊéíÂ•ΩÂ∫èÁöÑËæìÂÖ•.{1}Â¶ÇÊûúËæìÂÖ•Ê≤°ÊúâÊéíÂ∫è, ‰ªÖ‰ªÖ‰∏§‰∏™ËøûÁª≠ÁöÑËÆ∞ÂΩïË°åË¢´Ê≠£Á°ÆÂ§ÑÁêÜ.'),
(127,'SyslogMessage','ÂèëÈÄÅ‰ø°ÊÅØËá≥Syslog','Send message to Syslog server'),
(128,'Mail','ÂèëÈÄÅÈÇÆ‰ª∂','Send eMail.'),
(129,'MergeRows','ÂêàÂπ∂ËÆ∞ÂΩï','ÂêàÂπ∂‰∏§‰∏™Êï∞ÊçÆÊµÅ, Âπ∂Ê†πÊçÆÊüê‰∏™ÂÖ≥ÈîÆÂ≠óÊéíÂ∫è.  Ëøô‰∏§‰∏™Êï∞ÊçÆÊµÅË¢´ÊØîËæÉÔºå‰ª•Ê†áËØÜÁõ∏Á≠âÁöÑ„ÄÅÂèòÊõ¥ÁöÑ„ÄÅÂà†Èô§ÁöÑÂíåÊñ∞Âª∫ÁöÑËÆ∞ÂΩï.'),
(130,'ExecProcess','ÂêØÂä®‰∏Ä‰∏™ËøõÁ®ã','Execute a process and return the result'),
(131,'UniqueRowsByHashSet','ÂîØ‰∏ÄË°å (ÂìàÂ∏åÂÄº)','Remove double rows and leave only unique occurrences by using a HashSet.'),
(132,'FixedInput','Âõ∫ÂÆöÂÆΩÂ∫¶Êñá‰ª∂ËæìÂÖ•','Fixed file input'),
(133,'MemoryGroupBy','Âú®ÂÜÖÂ≠ò‰∏≠ÂàÜÁªÑ','Builds aggregates in a group by fashion.\nThis step doesn\'t require sorted input.'),
(134,'AddXML','Â¢ûÂä†XMLÂàó','Encode several fields into an XML fragment'),
(135,'Constant','Â¢ûÂä†Â∏∏Èáè','ÁªôËÆ∞ÂΩïÂ¢ûÂä†‰∏ÄÂà∞Â§ö‰∏™Â∏∏Èáè'),
(136,'Sequence','Â¢ûÂä†Â∫èÂàó','‰ªéÂ∫èÂàóËé∑Âèñ‰∏ã‰∏Ä‰∏™ÂÄº'),
(137,'CheckSum','Â¢ûÂä†Ê†°È™åÂàó','Add a checksum column for each input row'),
(138,'ProcessFiles','Â§ÑÁêÜÊñá‰ª∂','Process one file per row (copy or move or delete).\nThis step only accept filename in input.'),
(139,'FilesToResult','Â§çÂà∂Êñá‰ª∂Âà∞ÁªìÊûú','This step allows you to set filenames in the result of this transformation.\nSubsequent job entries can then use this information.'),
(140,'RowsToResult','Â§çÂà∂ËÆ∞ÂΩïÂà∞ÁªìÊûú','‰ΩøÁî®Ëøô‰∏™Ê≠•È™§ÊääËÆ∞ÂΩïÂÜôÂà∞Ê≠£Âú®ÊâßË°åÁöÑ‰ªªÂä°.{0}‰ø°ÊÅØÂ∞Ü‰ºöË¢´‰º†ÈÄíÁªôÂêå‰∏Ä‰∏™‰ªªÂä°ÈáåÁöÑ‰∏ã‰∏Ä‰∏™Êù°ÁõÆ.'),
(141,'SelectValues','Â≠óÊÆµÈÄâÊã©','ÈÄâÊã©ÊàñÁßªÈô§ËÆ∞ÂΩïÈáåÁöÑÂ≠ó„ÄÇ{0}Ê≠§Â§ñÔºåÂèØ‰ª•ËÆæÁΩÆÂ≠óÊÆµÁöÑÂÖÉÊï∞ÊçÆ: Á±ªÂûã, ÈïøÂ∫¶ÂíåÁ≤æÂ∫¶.'),
(142,'StringOperations','Â≠óÁ¨¶‰∏≤Êìç‰Ωú','Apply certain operations like trimming, padding and others to string value.'),
(143,'ReplaceString','Â≠óÁ¨¶‰∏≤ÊõøÊç¢','Replace all occurences a word in a string with another word.'),
(144,'SymmetricCryptoTrans','ÂØπÁß∞Âä†ÂØÜ','Encrypt or decrypt a string using symmetric encryption.\nAvailable algorithms are DES, AES, TripleDES.'),
(145,'SetValueConstant','Â∞ÜÂ≠óÊÆµÂÄºËÆæÁΩÆ‰∏∫Â∏∏Èáè','Set value of a field to a constant'),
(146,'Delay','Âª∂ËøüË°å','Output each input row after a delay'),
(147,'DynamicSQLRow','ÊâßË°åDynamic SQL','Execute dynamic SQL statement build in a previous field'),
(148,'ExecSQL','ÊâßË°åSQLËÑöÊú¨','ÊâßË°å‰∏Ä‰∏™SQLËÑöÊú¨, Âè¶Â§ñÔºåÂèØ‰ª•‰ΩøÁî®ËæìÂÖ•ÁöÑËÆ∞ÂΩï‰Ωú‰∏∫ÂèÇÊï∞'),
(149,'ExecSQLRow','ÊâßË°åSQLËÑöÊú¨(Â≠óÊÆµÊµÅÊõøÊç¢)','Execute SQL script extracted from a field\ncreated in a previous step.'),
(150,'JobExecutor','ÊâßË°å‰Ωú‰∏ö','This step executes a Pentaho Data Integration job, sets parameters and passes rows.'),
(151,'FieldSplitter','ÊãÜÂàÜÂ≠óÊÆµ','ÂΩì‰Ω†ÊÉ≥Êää‰∏Ä‰∏™Â≠óÊÆµÊãÜÂàÜÊàêÂ§ö‰∏™Êó∂Ôºå‰ΩøÁî®Ëøô‰∏™Á±ªÂûã.'),
(152,'SortedMerge','ÊéíÂ∫èÂêàÂπ∂','Sorted Merge'),
(153,'SortRows','ÊéíÂ∫èËÆ∞ÂΩï','Âü∫‰∫éÂ≠óÊÆµÂÄºÊääËÆ∞ÂΩïÊéíÂ∫è(ÂçáÂ∫èÊàñÈôçÂ∫è)'),
(154,'InsertUpdate','ÊèíÂÖ• / Êõ¥Êñ∞','Âü∫‰∫éÂÖ≥ÈîÆÂ≠óÊõ¥Êñ∞ÊàñÊèíÂÖ•ËÆ∞ÂΩïÂà∞Êï∞ÊçÆÂ∫ì.'),
(155,'ChangeFileEncoding','ÊîπÂèòÊñá‰ª∂ÁºñÁ†Å','Change file encoding and create a new file'),
(156,'NumberRange','Êï∞ÂÄºËåÉÂõ¥','Create ranges based on numeric field'),
(157,'SynchronizeAfterMerge','Êï∞ÊçÆÂêåÊ≠•','This step perform insert/update/delete in one go based on the value of a field. '),
(158,'DBLookup','Êï∞ÊçÆÂ∫ìÊü•ËØ¢','‰ΩøÁî®Â≠óÊÆµÂÄºÂú®Êï∞ÊçÆÂ∫ìÈáåÊü•ËØ¢ÂÄº'),
(159,'DBJoin','Êï∞ÊçÆÂ∫ìËøûÊé•','‰ΩøÁî®Êï∞ÊçÆÊµÅÈáåÁöÑÂÄº‰Ωú‰∏∫ÂèÇÊï∞ÊâßË°å‰∏Ä‰∏™Êï∞ÊçÆÂ∫ìÊü•ËØ¢'),
(160,'Validator','Êï∞ÊçÆÊ£ÄÈ™å','Validates passing data based on a set of rules'),
(161,'PrioritizeStreams','Êï∞ÊçÆÊµÅ‰ºòÂÖàÁ∫ßÊéíÂ∫è','Prioritize streams in an order way.'),
(162,'ReservoirSampling','Êï∞ÊçÆÈááÊ†∑','[Transform] Samples a fixed number of rows from the incoming stream'),
(163,'LoadFileInput','Êñá‰ª∂ÂÜÖÂÆπÂä†ËΩΩËá≥ÂÜÖÂ≠ò','Load file content in memory'),
(164,'TextFileInput','ÊñáÊú¨Êñá‰ª∂ËæìÂÖ•','‰ªé‰∏Ä‰∏™ÊñáÊú¨Êñá‰ª∂ÔºàÂá†ÁßçÊ†ºÂºèÔºâÈáåËØªÂèñÊï∞ÊçÆ{0}Ëøô‰∫õÊï∞ÊçÆÂèØ‰ª•Ë¢´‰º†ÈÄíÂà∞‰∏ã‰∏Ä‰∏™Ê≠•È™§Èáå...'),
(165,'TextFileOutput','ÊñáÊú¨Êñá‰ª∂ËæìÂá∫','ÂÜôËÆ∞ÂΩïÂà∞‰∏Ä‰∏™ÊñáÊú¨Êñá‰ª∂.'),
(166,'Mapping','Êò†Â∞Ñ (Â≠êËΩ¨Êç¢)','ËøêË°å‰∏Ä‰∏™Êò†Â∞Ñ (Â≠êËΩ¨Êç¢), ‰ΩøÁî®MappingInputÂíåMappingOutputÊù•ÊåáÂÆöÊé•Âè£ÁöÑÂ≠óÊÆµ'),
(167,'MappingInput','Êò†Â∞ÑËæìÂÖ•ËßÑËåÉ','ÊåáÂÆö‰∏Ä‰∏™Êò†Â∞ÑÁöÑÂ≠óÊÆµËæìÂÖ•'),
(168,'MappingOutput','Êò†Â∞ÑËæìÂá∫ËßÑËåÉ','ÊåáÂÆö‰∏Ä‰∏™Êò†Â∞ÑÁöÑÂ≠óÊÆµËæìÂá∫'),
(169,'Update','Êõ¥Êñ∞','Âü∫‰∫éÂÖ≥ÈîÆÂ≠óÊõ¥Êñ∞ËÆ∞ÂΩïÂà∞Êï∞ÊçÆÂ∫ì'),
(170,'IfNull','ÊõøÊç¢NULLÂÄº','Sets a field value to a constant if it is null.'),
(171,'SampleRows','Ê†∑Êú¨Ë°å','Filter rows based on the line number.'),
(172,'JavaFilter','Ê†πÊçÆJava‰ª£Á†ÅËøáÊª§ËÆ∞ÂΩï','Filter rows using java code'),
(173,'FieldsChangeSequence','Ê†πÊçÆÂ≠óÊÆµÂÄºÊù•ÊîπÂèòÂ∫èÂàó','Add sequence depending of fields value change.\nEach time value of at least one field change, PDI will reset sequence. '),
(174,'WebServiceAvailable','Ê£ÄÊü•webÊúçÂä°ÊòØÂê¶ÂèØÁî®','Check if a webservice is available'),
(175,'FileExists','Ê£ÄÊü•Êñá‰ª∂ÊòØÂê¶Â≠òÂú®','Check if a file exists'),
(176,'FileLocked','Ê£ÄÊü•Êñá‰ª∂ÊòØÂê¶Â∑≤Ë¢´ÈîÅÂÆö','Check if a file is locked by another process'),
(177,'TableExists','Ê£ÄÊü•Ë°®ÊòØÂê¶Â≠òÂú®','Check if a table exists on a specified connection'),
(178,'ColumnExists','Ê£ÄÊü•Ë°®ÈáåÁöÑÂàóÊòØÂê¶Â≠òÂú®','Check if a column exists in a table on a specified connection.'),
(179,'DetectEmptyStream','Ê£ÄÊµãÁ©∫ÊµÅ','This step will output one empty row if input stream is empty\n(ie when input stream does not contain any row)'),
(180,'CreditCardValidator','Ê£ÄÈ™å‰ø°Áî®Âç°Âè∑Á†ÅÊòØÂê¶ÊúâÊïà','The Credit card validator step will help you tell:\n(1) if a credit card number is valid (uses LUHN10 (MOD-10) algorithm)\n(2) which credit card vendor handles that number\n(VISA, MasterCard, Diners Club, EnRoute, American Express (AMEX),...)'),
(181,'MailValidator','Ê£ÄÈ™åÈÇÆ‰ª∂Âú∞ÂùÄ','Check if an email address is valid.'),
(182,'FuzzyMatch','Ê®°Á≥äÂåπÈÖç','Finding approximate matches to a string using matching algorithms.\nRead a field from a main stream and output approximative value from lookup stream.'),
(183,'RegexEval','Ê≠£ÂàôË°®ËææÂºè','Regular expression Evaluation\nThis step uses a regular expression to evaluate a field. It can also extract new fields out of an existing field with capturing groups.'),
(184,'TableCompare','ÊØîËæÉË°®','Compares 2 tables and gives back a list of differences'),
(185,'StreamLookup','ÊµÅÊü•ËØ¢','‰ªéËΩ¨Êç¢‰∏≠ÁöÑÂÖ∂ÂÆÉÊµÅÈáåÊü•ËØ¢ÂÄº.'),
(186,'StepMetastructure','ÊµÅÁöÑÂÖÉÊï∞ÊçÆ','This is a step to read the metadata of the incoming stream.'),
(187,'SecretKeyGenerator','ÁîüÊàêÂØÜÈí•','Generate secret key for algorithms such as DES, AES, TripleDES.'),
(188,'RowGenerator','ÁîüÊàêËÆ∞ÂΩï','‰∫ßÁîü‰∏Ä‰∫õÁ©∫ËÆ∞ÂΩïÊàñÁõ∏Á≠âÁöÑË°å.'),
(189,'RandomValue','ÁîüÊàêÈöèÊú∫Êï∞','Generate random value'),
(190,'RandomCCNumberGenerator','ÁîüÊàêÈöèÊú∫ÁöÑ‰ø°Áî®Âç°Âè∑','Generate random valide (luhn check) credit card numbers'),
(191,'Dummy','Á©∫Êìç‰Ωú (‰ªÄ‰πà‰πü‰∏çÂÅö)','Ëøô‰∏™Ê≠•È™§Á±ªÂûã‰ªÄ‰πàÈÉΩ‰∏ç‰Ωú.{0} ÂΩì‰Ω†ÊÉ≥ÊµãËØïÊàñÊãÜÂàÜÊï∞ÊçÆÊµÅÁöÑÊó∂ÂÄôÊúâÁî®.'),
(192,'DimensionLookup','Áª¥Â∫¶Êü•ËØ¢/Êõ¥Êñ∞','Âú®‰∏Ä‰∏™Êï∞ÊçÆ‰ªìÂ∫ìÈáåÊõ¥Êñ∞‰∏Ä‰∏™Ê∏êÂèòÁª¥ {0} ÊàñËÄÖÂú®Ëøô‰∏™Áª¥ÈáåÊü•ËØ¢‰ø°ÊÅØ.'),
(193,'CombinationLookup','ËÅîÂêàÊü•ËØ¢/Êõ¥Êñ∞','Êõ¥Êñ∞Êï∞ÊçÆ‰ªìÂ∫ìÈáåÁöÑ‰∏Ä‰∏™junkÁª¥ {0} ÂèØÈÄâÁöÑ, ÁßëÁ†îÊü•ËØ¢Áª¥ÈáåÁöÑ‰ø°ÊÅØ.{1}junkÁª¥ÁöÑ‰∏ªÈîÆÊòØÊâÄÊúâÁöÑÂ≠óÊÆµ.'),
(194,'AggregateRows','ËÅöÂêàËÆ∞ÂΩï','Ëøô‰∏™Ê≠•È™§Á±ªÂûãÂÖÅËÆ∏‰Ω†ËÅöÂêàËÆ∞ÂΩï.{0}ÂÆÉ‰∏çËÉΩ‰ΩøÁî®Âú®ÂàÜÁªÑÁöÑÊÉÖÂÜµ.'),
(195,'AutoDoc','Ëá™Âä®ÊñáÊ°£ËæìÂá∫','This step automatically generates documentation based on input in the form of a list of transformations and jobs'),
(196,'DataGrid','Ëá™ÂÆö‰πâÂ∏∏ÈáèÊï∞ÊçÆ','Enter rows of static data in a grid, usually for testing, reference or demo purpose'),
(197,'GetPreviousRowField','Ëé∑Âèñ‰∏ä‰∏ÄÊ¨°ÁöÑËÆ∞ÂΩï','Get fields value of previous row.'),
(198,'GetVariable','Ëé∑ÂèñÂèòÈáè','Determine the values of certain (environment or Kettle) variables and put them in field values.'),
(199,'GetSubFolders','Ëé∑ÂèñÂ≠êÁõÆÂΩïÂêç','Read a parent folder and return all subfolders'),
(200,'GetFileNames','Ëé∑ÂèñÊñá‰ª∂Âêç','Get file names from the operating system and send them to the next step.'),
(201,'GetFilesRowsCount','Ëé∑ÂèñÊñá‰ª∂Ë°åÊï∞','Returns rows count for text files.'),
(202,'SystemInfo','Ëé∑ÂèñÁ≥ªÁªü‰ø°ÊÅØ','Ëé∑ÂèñÁ≥ªÁªü‰ø°ÊÅØÔºå‰æãÂ¶ÇÊó∂Èó¥„ÄÅÊó•Êúü.'),
(203,'GetTableNames','Ëé∑ÂèñË°®Âêç','Get table names from database connection and send them to the next step'),
(204,'GetRepositoryNames','Ëé∑ÂèñËµÑÊ∫êÂ∫ìÈÖçÁΩÆ','Lists detailed information about transformations and/or jobs in a repository'),
(205,'Flattener','Ë°åÊâÅÂπ≥Âåñ','Flattens consequetive rows based on the order in which they appear in theËæìÂÖ• stream'),
(206,'Normaliser','Ë°åËΩ¨Âàó','De-normalised information can be normalised using this step type.'),
(207,'TableInput','Ë°®ËæìÂÖ•','‰ªéÊï∞ÊçÆÂ∫ìË°®ÈáåËØªÂèñ‰ø°ÊÅØ.'),
(208,'TableOutput','Ë°®ËæìÂá∫','ÂÜô‰ø°ÊÅØÂà∞‰∏Ä‰∏™Êï∞ÊçÆÂ∫ìË°®'),
(209,'Calculator','ËÆ°ÁÆóÂô®','ÈÄöËøáÊâßË°åÁÆÄÂçïÁöÑËÆ°ÁÆóÂàõÂª∫‰∏Ä‰∏™Êñ∞Â≠óÊÆµ'),
(210,'JoinRows','ËÆ∞ÂΩïÂÖ≥ËÅî (Á¨õÂç°Â∞îËæìÂá∫)','Ëøô‰∏™Ê≠•È™§ÁöÑËæìÂá∫ÊòØËæìÂÖ•ÊµÅÁöÑÁ¨õÂç°Â∞îÁöÑÁªìÊûú.{0} ËæìÂá∫ÁªìÊûúÁöÑËÆ∞ÂΩïÊï∞ÊòØËæìÂÖ•ÊµÅËÆ∞ÂΩï‰πãÈó¥ÁöÑ‰πòÁßØ.'),
(211,'Injector','ËÆ∞ÂΩïÊ≥®Â∞Ñ','Injector step to allow to inject rows into the transformation through the java API'),
(212,'MergeJoin','ËÆ∞ÂΩïÈõÜËøûÊé•','Joins two streams on a given key and outputs a joined set. The input streams must be sorted on the join key'),
(213,'NullIf','ËÆæÁΩÆÂÄº‰∏∫NULL','Â¶ÇÊûú‰∏Ä‰∏™Â≠óÊÆµÂÄºÁ≠â‰∫éÊüê‰∏™Âõ∫ÂÆöÂÄºÔºåÈÇ£‰πàÊääËøô‰∏™Â≠óÊÆµÂÄºËÆæÁΩÆÊàênull'),
(214,'SetVariable','ËÆæÁΩÆÂèòÈáè','Set environment variables based on a single input row.'),
(215,'SetValueField','ËÆæÁΩÆÂ≠óÊÆµÂÄº','Set value of a field with another value field'),
(216,'DetectLastRow','ËØÜÂà´ÊµÅÁöÑÊúÄÂêé‰∏ÄË°å','Last row will be marked'),
(217,'DBProc','Ë∞ÉÁî®DBÂ≠òÂÇ®ËøáÁ®ã','ÈÄöËøáË∞ÉÁî®Êï∞ÊçÆÂ∫ìÂ≠òÂÇ®ËøáÁ®ãËé∑ÂæóËøîÂõûÂÄº.'),
(218,'StepsMetrics','ËΩ¨Êç¢Ê≠•È™§‰ø°ÊÅØÁªüËÆ°','Return metrics for one or several steps'),
(219,'FilterRows','ËøáÊª§ËÆ∞ÂΩï','‰ΩøÁî®ÁÆÄÂçïÁöÑÁõ∏Á≠âÊù•ËøáÊª§ËÆ∞ÂΩï'),
(220,'SSH','ËøêË°åSSHÂëΩ‰ª§','Run SSH commands and returns result.'),
(221,'Append','ËøΩÂä†ÊµÅ','Append 2 streams in an ordered way'),
(222,'MailInput','ÈÇÆ‰ª∂‰ø°ÊÅØËæìÂÖ•','Read POP3/IMAP server and retrieve messages'),
(223,'PropertyInput','ÈÖçÁΩÆÊñá‰ª∂ËæìÂÖ•','Read data (key, value) from properties files.'),
(224,'PropertyOutput','ÈÖçÁΩÆÊñá‰ª∂ËæìÂá∫','Write data to properties file'),
(225,'BlockingStep','ÈòªÂ°ûÊï∞ÊçÆ','This step blocks until all incoming rows have been processed.  Subsequent steps only recieve the last input row to this step.'),
(226,'BlockUntilStepsFinish','ÈòªÂ°ûÊï∞ÊçÆÁõ¥Âà∞Ê≠•È™§ÈÉΩÂÆåÊàê','Block this step until selected steps finish.');

/*Table structure for table `r_trans_attribute` */

DROP TABLE IF EXISTS `r_trans_attribute`;

CREATE TABLE `r_trans_attribute` (
  `id_trans_attribute` bigint(20) NOT NULL,
  `id_transformation` int(11) DEFAULT NULL,
  `nr` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `value_num` bigint(20) DEFAULT NULL,
  `value_str` mediumtext,
  PRIMARY KEY (`id_trans_attribute`),
  UNIQUE KEY `idx_tatt` (`id_transformation`,`code`,`nr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_trans_attribute` */

/*Table structure for table `r_trans_cluster` */

DROP TABLE IF EXISTS `r_trans_cluster`;

CREATE TABLE `r_trans_cluster` (
  `id_trans_cluster` bigint(20) NOT NULL,
  `id_transformation` int(11) DEFAULT NULL,
  `id_cluster` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_trans_cluster`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_trans_cluster` */

/*Table structure for table `r_trans_hop` */

DROP TABLE IF EXISTS `r_trans_hop`;

CREATE TABLE `r_trans_hop` (
  `id_trans_hop` bigint(20) NOT NULL,
  `id_transformation` int(11) DEFAULT NULL,
  `id_step_from` int(11) DEFAULT NULL,
  `id_step_to` int(11) DEFAULT NULL,
  `enabled` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_trans_hop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_trans_hop` */

/*Table structure for table `r_trans_lock` */

DROP TABLE IF EXISTS `r_trans_lock`;

CREATE TABLE `r_trans_lock` (
  `id_trans_lock` bigint(20) NOT NULL,
  `id_transformation` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `lock_message` mediumtext,
  `lock_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id_trans_lock`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_trans_lock` */

/*Table structure for table `r_trans_note` */

DROP TABLE IF EXISTS `r_trans_note`;

CREATE TABLE `r_trans_note` (
  `id_transformation` int(11) DEFAULT NULL,
  `id_note` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_trans_note` */

/*Table structure for table `r_trans_partition_schema` */

DROP TABLE IF EXISTS `r_trans_partition_schema`;

CREATE TABLE `r_trans_partition_schema` (
  `id_trans_partition_schema` bigint(20) NOT NULL,
  `id_transformation` int(11) DEFAULT NULL,
  `id_partition_schema` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_trans_partition_schema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_trans_partition_schema` */

/*Table structure for table `r_trans_slave` */

DROP TABLE IF EXISTS `r_trans_slave`;

CREATE TABLE `r_trans_slave` (
  `id_trans_slave` bigint(20) NOT NULL,
  `id_transformation` int(11) DEFAULT NULL,
  `id_slave` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_trans_slave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_trans_slave` */

/*Table structure for table `r_trans_step_condition` */

DROP TABLE IF EXISTS `r_trans_step_condition`;

CREATE TABLE `r_trans_step_condition` (
  `id_transformation` int(11) DEFAULT NULL,
  `id_step` int(11) DEFAULT NULL,
  `id_condition` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_trans_step_condition` */

/*Table structure for table `r_transformation` */

DROP TABLE IF EXISTS `r_transformation`;

CREATE TABLE `r_transformation` (
  `id_transformation` bigint(20) NOT NULL,
  `id_directory` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` mediumtext,
  `extended_description` mediumtext,
  `trans_version` varchar(255) DEFAULT NULL,
  `trans_status` int(11) DEFAULT NULL,
  `id_step_read` int(11) DEFAULT NULL,
  `id_step_write` int(11) DEFAULT NULL,
  `id_step_input` int(11) DEFAULT NULL,
  `id_step_output` int(11) DEFAULT NULL,
  `id_step_update` int(11) DEFAULT NULL,
  `id_database_log` int(11) DEFAULT NULL,
  `table_name_log` varchar(255) DEFAULT NULL,
  `use_batchid` char(1) DEFAULT NULL,
  `use_logfield` char(1) DEFAULT NULL,
  `id_database_maxdate` int(11) DEFAULT NULL,
  `table_name_maxdate` varchar(255) DEFAULT NULL,
  `field_name_maxdate` varchar(255) DEFAULT NULL,
  `offset_maxdate` double DEFAULT NULL,
  `diff_maxdate` double DEFAULT NULL,
  `created_user` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_user` varchar(255) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `size_rowset` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_transformation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_transformation` */

/*Table structure for table `r_user` */

DROP TABLE IF EXISTS `r_user`;

CREATE TABLE `r_user` (
  `id_user` bigint(20) NOT NULL,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `enabled` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_user` */

insert  into `r_user`(`id_user`,`login`,`password`,`name`,`description`,`enabled`) values 
(1,'admin','2be98afc86aa7f2e4cb79ce71da9fa6d4','Administrator','User manager','Y'),
(2,'guest','2be98afc86aa7f2e4cb79ce77cb97bcce','Guest account','Read-only guest account','Y');

/*Table structure for table `r_value` */

DROP TABLE IF EXISTS `r_value`;

CREATE TABLE `r_value` (
  `id_value` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value_str` varchar(255) DEFAULT NULL,
  `is_null` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_value` */

/*Table structure for table `r_version` */

DROP TABLE IF EXISTS `r_version`;

CREATE TABLE `r_version` (
  `id_version` bigint(20) NOT NULL,
  `major_version` int(11) DEFAULT NULL,
  `minor_version` int(11) DEFAULT NULL,
  `upgrade_date` datetime DEFAULT NULL,
  `is_upgrade` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `r_version` */

insert  into `r_version`(`id_version`,`major_version`,`minor_version`,`upgrade_date`,`is_upgrade`) values 
(1,5,0,'2017-06-15 14:40:40','N');

/*Table structure for table `u_all_role` */

DROP TABLE IF EXISTS `u_all_role`;

CREATE TABLE `u_all_role` (
  `id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `type` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `c_role_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `u_all_role` */

/*Table structure for table `u_all_user` */

DROP TABLE IF EXISTS `u_all_user`;

CREATE TABLE `u_all_user` (
  `id` varchar(24) NOT NULL DEFAULT '0',
  `name` varchar(40) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `random` varchar(40) DEFAULT NULL,
  `type` varchar(24) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `remark` text,
  `creator` varchar(40) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_id` (`id`),
  UNIQUE KEY `idx_email` (`email`),
  KEY `idx_status` (`status`),
  KEY `idx_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384;

/*Data for the table `u_all_user` */

insert  into `u_all_user`(`id`,`name`,`email`,`password`,`random`,`type`,`status`,`mobile`,`remark`,`creator`,`created`) values 
('51ff0d7d975f475110fe800s','service','service@ukettle.com','4f1dc52f136afc2cdff09b823f3de549824c3411','e3f80f5780749abf','Kettle','ENABLED',NULL,NULL,NULL,'2013-07-07 14:26:47');

/*Table structure for table `v_job` */

DROP TABLE IF EXISTS `v_job`;

/*!50001 DROP VIEW IF EXISTS `v_job` */;
/*!50001 DROP TABLE IF EXISTS `v_job` */;

/*!50001 CREATE TABLE  `v_job`(
 `id_job` bigint(20) ,
 `id_directory` int(11) ,
 `timing` bigint(20) ,
 `name` varchar(255) ,
 `description` mediumtext ,
 `extended_description` mediumtext ,
 `job_version` varchar(255) ,
 `job_status` int(11) ,
 `id_database_log` int(11) ,
 `table_name_log` varchar(255) ,
 `created_user` varchar(255) ,
 `created_date` datetime ,
 `modified_user` varchar(255) ,
 `modified_date` datetime ,
 `use_batch_id` char(1) ,
 `pass_batch_id` char(1) ,
 `use_logfield` char(1) ,
 `shared_file` varchar(255) ,
 `run_status` varchar(100) ,
 `last_update` varchar(14) ,
 `auto_restart_num` varchar(10) ,
 `repository_code` varchar(200) ,
 `project_code` varchar(200) 
)*/;

/*Table structure for table `v_job_params` */

DROP TABLE IF EXISTS `v_job_params`;

/*!50001 DROP VIEW IF EXISTS `v_job_params` */;
/*!50001 DROP TABLE IF EXISTS `v_job_params` */;

/*!50001 CREATE TABLE  `v_job_params`(
 `id_job` int(11) ,
 `ocode` mediumtext ,
 `oname` mediumtext ,
 `PARAM_DEFAULT` mediumtext ,
 `value` text ,
 `simple_spell` varchar(200) ,
 `full_spell` text 
)*/;

/*View structure for view v_job */

/*!50001 DROP TABLE IF EXISTS `v_job` */;
/*!50001 DROP VIEW IF EXISTS `v_job` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_job` AS select `j`.`id_job` AS `id_job`,`j`.`id_directory` AS `id_directory`,`j`.`id_job` AS `timing`,`j`.`name` AS `name`,`j`.`description` AS `description`,`j`.`extended_description` AS `extended_description`,`j`.`job_version` AS `job_version`,`j`.`job_status` AS `job_status`,`j`.`id_database_log` AS `id_database_log`,`j`.`table_name_log` AS `table_name_log`,`j`.`created_user` AS `created_user`,`j`.`created_date` AS `created_date`,`j`.`modified_user` AS `modified_user`,`j`.`modified_date` AS `modified_date`,`j`.`use_batch_id` AS `use_batch_id`,`j`.`pass_batch_id` AS `pass_batch_id`,`j`.`use_logfield` AS `use_logfield`,`j`.`shared_file` AS `shared_file`,`j`.`RUN_STATUS` AS `run_status`,`j`.`LAST_UPDATE` AS `last_update`,`j`.`AUTO_RESTART_NUM` AS `auto_restart_num`,`j`.`REPOSITORY_CODE` AS `repository_code`,`j`.`PROJECT_CODE` AS `project_code` from `r_job` `j` */;

/*View structure for view v_job_params */

/*!50001 DROP TABLE IF EXISTS `v_job_params` */;
/*!50001 DROP VIEW IF EXISTS `v_job_params` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_job_params` AS select `ja`.`id_job` AS `id_job`,`ja`.`value_str` AS `ocode`,`ja1`.`value_str` AS `oname`,`ja2`.`value_str` AS `PARAM_DEFAULT`,`p`.`VALUE` AS `value`,`p`.`SIMPLE_SPELL` AS `simple_spell`,`p`.`FULL_SPELL` AS `full_spell` from ((((`r_job_attribute` `ja` join `r_job_attribute` `ja1` on(((`ja1`.`id_job` = `ja`.`id_job`) and (`ja1`.`nr` = `ja`.`nr`) and (`ja1`.`code` = 'PARAM_DESC')))) join `r_job_attribute` `ja2` on(((`ja2`.`id_job` = `ja`.`id_job`) and (`ja2`.`nr` = `ja`.`nr`) and (`ja2`.`code` = 'PARAM_DEFAULT')))) join `r_job` `j` on(((`j`.`job_status` = 2) and (`j`.`id_job` = `ja`.`id_job`)))) left join `job_params` `p` on(((`p`.`ID_JOB` = `ja`.`id_job`) and (`ja`.`value_str` = `p`.`OCODE`)))) where (`ja`.`code` = 'PARAM_KEY') order by `ja`.`nr` */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
