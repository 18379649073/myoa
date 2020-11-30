/*
SQLyog Ultimate v9.30 
MySQL - 5.6.21 : Database - myoa
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`myoa` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `myoa`;

/*Table structure for table `act_ge_bytearray` */

DROP TABLE IF EXISTS `act_ge_bytearray`;

CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_bytearray` */

insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('2',1,'baoxiaoprocess.png','1','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0¿\0\0I\0\0\0Äş\0\0HIDATxœíİl£÷}p!‰c%«gumceHm5+a]|ÄRÀBş¨iËiÀÖX«à\nš\\Ğ.†¡U¶%7¬ñC›)C\\·46xÓP\\\" Iª5vÆ¥¶«ùÇYãDqì†©í”‰í„ïlúNwÇ=\'ÚMRä—Åçû¯¾8HäÃ‡_òyøáç}õp¢\n\0\0\0İL¤=\0\0\02@z\0\0 ;é\0\0€î¤G\0\0\0º“\0\0èNz\0\0 ;é\0\0€î¤G\0\0\0º“\0\0èNz\0\0 ;é\0\0€î¤G\0\0\0º“\0\0èNz\0\0 ;é\0\0€î¤G\0\0\0º“\0\0èNz\0\0 ;é\0\0€î¤G\0\0\0º“\0\0èNz\0\0 ;é\0\0€î¤G\0\0\0º“\0\0èNz\0\0 ;é\0\0€î¤G\0\0\0º“\0\0èNz\0\0 ;é\0\0€î¤G\0\0\0º“\0\0èNz\0\0 ;é\0\0€î¤G\0\0\0º“\0\0èNz\0\0 ;é\0\0€î¤G\0\0\0º“\0\0èNz\0\0 ;é\0\0€î¤G\0\0\0º“\0\0èNz\0\0 ;é\0\0€î¤G\0\0\0º“\0\0èNz\0\0 ;é\0\0€î¤G\0\0\0º“\0\0èNz\0\0 ;é\0\0€î¤G\0\0\0º“\0\0èNz\0\0 ;é\0\0€î¤G\02£R©lll?~|aa!ÿŠùùùä’õõõr¹œö`”I\0d@\Z“”899™äÆ$+:õ¹;îüJm|á‹_úØÇ>¾¸¸855577·¶¶–öd`4I\0Dm{{;ŸÏ\'¡1I‰çw/twİ}Ï­·şj.—+\niO\0Fô@¼Nœ8‘DÁ;îüJ×ÜØ8îàô7ŞxìØ±J¥’ö#\0€Ñ!=£$ø-..®¬¬ô”Ç|úÓù|¾T*¥ıP\0`DH\0D\'‰sssëëë}GÇúY“õ‹Å´\0Œé€è,..<:Ö?ÅšHa€ƒ“ˆË‰\'òÕÖqêÔçÒ~X\0yÒ#\0ÙŞŞÎårŒµñÁ~èäÉ“i?8\0È6é€ˆ$ÑñşN<=>ñäS×]7ãó«\0pÒ#\0±ØØØXXXxt¬|ä7WWWÓ~ˆ\0aÒ#\0±Èçó½~µcO‡§§§Ó~ˆ\0aÒ#\0Q(—ËSSS‡kã†nØÚÚJû@VI\0DammmiiéPÓã\'n»mee%í\n\0Y%=…cÇ<yòPÓãw~%ŸÏ§ı@ «¤G\0¢0??ÿ…/~éPÓãc?~İu3i?P\0È*é€(Òwu4çÏœœœLû@VI\0Dazzú‰\'Ÿ:Ôô˜Œ‰	o|\0Ğ\'o¢\0Davvöë<\"=@´¼‰…Cı²G÷\0\'=…¥¥¥?úìg5=Şu÷=7ÜpCÚ\0²Jz \n«««ùÈojzLÒé­·şjÚ\0²Jz \nÅbqffæPÓãÑ£G777Ó~ \0UÒ#\0±8Ôç<æìÔÔT¥RIûQ@VI\0ÄâP?¼ú{Ÿüd²ò´\"\0d˜ô@,*•ÊÌÌÌa|ëãógÎ^wİL©TJû!@†I\0Dd}}ı}·ÜâÀ#\0DHz .¿ü÷œ:õ¹FÇ¯?òÈ‘#G?s6íG\0Ù&=—r¹|Ã\r7êô9O?ól{üñ´\0dô@tvvv’\0™D¾ƒGÇ_~Ï{¾ğÅ/¥ı€\0`H\0Äh{{ûÈ‘#wİ}ÏA>°šDPÑ\0Ez RårùÆoüØÇ>şô3Ïö”Ÿ?sö÷>ùÉÚÇ_Ó~\00:¤G\0âU©T’ôø¶·Í&i0É„!Ññ>ûÙdù|ä7“Ì™öô`¤H\0Ä®T*-//OMMıò{Ş“„Ãû8İ”“Kn¿ı¿¿ï–[’en½õW‹ÅbÚS€$=\r•JeccciiéÈ‘#¯–\\’DÇõõõr¹œö4`dI\0dU’$Ó\0Œé€¬š˜ğ.\0Ãã}€¬’`˜¼ïUÒ#\0“÷]\0²Jz€aò¾@VI\00LŞwÈ*é\0†Éû.\0Y%=À0yß «¤G\0&ï»\0d•ô\0Ãä}€¬’`˜¼ïUÒ#\0“÷]\0²Jz€aò¾@VI\00LŞwÈ*é\0†Éû.\0Y%=À0yß «¤G\0&ï»\0d•ô\0Ãä}€¬’`˜¼ïUÒ#\0“÷]\0²Jz€aò¾@VI\00LŞwÈ*é\0†Éû.\0Y%=À0yß «¤G\0&ï»\0d•ô\0Ãä}€¬’`˜¼ïUÒ#\0“÷]\0²Jz€aò¾@VI\00LŞwÈ*é\0†Éû.\0Y%=À0yß «¤G\0&ï»\0d•ô\0Ãä}€¬’`˜¼ïUÒ#\0“÷]\0²d}}=	“““¹\\.ùazz:ù÷o|ãÎÎNÚS€\'=%Ÿÿüç\'ZÜtÓMiO\r\0Fœô@–T*•+¯¼²1:^ıõÓÓÓår9í©Àˆ“È˜~ô£¯{İëêéñÃşğÊÊJÚ“€Ñ\'==×\\sM-:ŞrË-333•J%íÀè“È¯~õ«W\\qE’çççıÅ#\0‡ô@&İ|óÍµô˜öD\0`\\H\0dR©TJÒ£/ê\0€¡‘Èª$=¦=\0#ŞwèM¥RY___\\\\Ìçó333­ß¾8&’Ç<kkk¾/€q =ĞƒÍÍÍ$5%ÑñöÛo¿ãÎ;{üñó»»ã9’Ç<§NºõÖ[“ç$Éio\08\\Ò#\0AÊåòÒÒÒÑ£GŸxò‰ó»çÆñô3O\'2yrJ¥RÚ\n\0‹ô@wItÌårôÙÏœß=gì7¾ğÅ/ÜpÃ\rÅb1íÍ\0‡Bz »¥¥¥½èø’ÑyÜqç—o¼ñ—ÒŞ\\\0p(¤G\0ºØÜÜ<zôİ»*FÈø­ßş·İö;io4\0<é€N*•ÊÌÌÌ“Ow/¼h„Œ3gtäÈõ¾ˆ€Ñ#=ĞÉÚÚÚÒÒÒî…êã¦ùø·\Z«qÛmÿvee%íM\0&=ĞÉÂÂÂ©ÏıÏGÇwıëjõ»«ßŞ­~ã\\õ¡sÕûÏ\\XıÜWşì©çî=_ı¿•ê½•ê]/T¿üRõ?Şõğ}(õ —ÊxàôV.—K{ÓÀ€I\0t2;;ûÈ#î^8[gªÕ³—ªÏ]¨şğ|õ…jõŸÿËO¼æ\'æŞ½ğÔnõ‰sÕ\'^ª+ÕÇ.Tÿø/Ú;üxvÇ™³ÏNNN¦½é\0`À¤G\0:™ššzæÙ§v/œ©$¾p±zîâå«.\\ºüïŸ|éıí¿ó÷şÕ\'~ïBµúü…ês»ÕîVËÕê—ïûÚ^z<3#yìén8\08ïm\0t²—\0Ÿ¯ä×³ªÏ¾X=ñåÊåòøı?üßıı\'¾WJ~İ½T=¿—*ïyà¡¦ÛÕ=ŞÛ\0èd/ş¿ú¸œ/VŸ~¡úı3Õİjõü¹s³o{ÛÄÄk\'&&ßû+·6ŞğşÓ6İv¬†ôÀèñŞ@\'{	ğ¹ú¨}rõÙ«ß{¾úƒ—ª÷?ò—×\\sÍk_÷ú7\\ıÓ‹ïUz¼ïÓM·«!=0z¼·ĞÉ^,×Gòë‹—ª?¬\\>öøôKÕ;ïÛyû‘wüôÏ¼éê©ŸüÃÿúÇ/U«gÎU_8wù†wmİ×tÛ±\ZÒ#\0£Ç{\0$)èÂ…ÕG-%ò¹İêÎW¿÷üî=üı_¼éüÃœ«~¿RıA¥úì¹j’ïº÷¾¦ÛÕ=ŞÛ\0è¤)æoºñkßüöıïlmïÜ}zçî½çkÿï{¿ñç«§ıóÓßºûÁom=ôèÃßş«Oÿ§Ï¾ï–÷¥â¤G\0ïm\0t²—Ø8~ı×?4àŸ¼÷½M7«!=0z¼·ĞÉ^z|ÖèuH\0Œïm\0tr9=^|ÆèuH\0Œïm\0t²—Ÿ6zÒ#\0£Ç{\0ì¥Ç½é€Ñã½\r€NöÒã÷^‡ôÀèñŞ@\'{é±Ô4:œjµuá®ëÜo†Yç@î¢íó¹¾¾^,‡»\r`0¤G\0:Eš‚S¯Q3$p†$½ú2ëo¼°å÷û¡Cz,—Ëïÿûkëó›ß,@EÒ#À¸{ôÑGk©æª«®:uêTÓµ{Ñè¯›FÛ;\\ŞÓ2i³û:;ßKãµMKî·şÆ»®ıĞøoÛ›ÔŸÃ“\'ONNNÖÖü0==]*•†»‘`\0¤G€qW©T^óš×Ô²ÍW\\ñ¿ğGÆ’/^ü^ÓèíZn½mOtş5dbYÿ~÷Øu&É³·³³óÖ·¾µñçææfffRÛØ\0p\0Ò#\0ÕéééÆ„ó†7¼áø@’*«/§Ç§8º®°iÎ¿öw/×Önˆ”Ö³O@msù|¾CÌæP%=ÿŠãÇonn–Ëå´_g\0™\'=Ä.Iq…B!é€ëİpÒ³¿xñÉÆÑëò­7ïi®¿Öï´§‡ĞÓ|šî%äMì{,‹ïz×»~ög¶¾†«®º*—Ë¥½O¾ä™/¼\"yíÌÏÏOMM%¯´§aÒ#@¼’Æwaaarr²vü¤Ş\rüœ+W_}u=Ş,ìIîqgg§úò±Ç\'\ZGë%á×.Ğ-ö¼Î¶Ë×ÿíiıOÈDÃß=nnn^wİuoyË[jë¿òÊ+kÇu²Ú*Iïµ}€^I\01*•JµÃŒC8TR.—k©fvvö×~í×’×××ë×îE£¿j­—„_ÛÇmºpŸ´ÙfùÆ›4­¡ó”Âï¢ñINâb’ÿ¯½öÚ$º$ÿnooöfe?É“Ÿl…Æ€@Ò#@t677“W(†swßıîw\'\'\'çççgffVVVšş<¬kzIwÃL]×Ö”÷:§ÇÖ”§\'Ú}ßc±X\\[[óáÉÔ%a~qq1ÙiO c¤G€¸$Ñ\"ŸÏùÉ&tÛÄîE£ï6¦K:ÿÚ:z] dıõ÷90Øé.j?7ş²|È”†¹éU “ÚÖÖVÚÈïm\0Iò[.—‹êä—£Ñ¥bãh¼¤óµmGÈí·Î¶×vX¾éçkZ>pJio:ºH^n³³³ş œ÷6€ˆÌÍÍÅv0d/\Z}§í¨_õJ‚j¿Ø~·\n\\ ó¯MØ\'Úuº‹ú\r;Ì­ó2ûİEÚ›î–——WWWÓ@fxoˆÅÆÆÆÂÂBÚ³h¶ş²i¼’ÊB/8œØ|kèpmÓ2m\'ĞyMèúxÃï\"íMGw;;;³³³iÏ 3¼·Äb~~~ss3íY4Û‹F×Ç+9êñıFçkû=­°qá†hÚ<ÿ¦ÅºŞã~Ë·½‹úUio:‚DxÀ ZŞÛ\0¢P*•¦§§ÓE{Ñè1£×!=f…¯„óŞ…8?¶Z}9=~ÛèuHYíK BŞÛ\0¢íéQzmşô œ÷6€(äóùB¡ö,ÚHRĞ¥K\Z½é1+ŠÅâÌÌLÚ³\0Èïm\0QˆöÔ{éñ[F¯CzÌ r	…™™™b±˜ö,ÚØK;F¯C É r	…©©©r¹œö,ÚØKß4zI†ØX\0”K€(DÛ¿NNN¾øâƒ—.}ÃèiD»AiecR.¢mÿ:33óïüÙ¥K=h7(­l,€@Ê%@¢í_çççÿtóä¥ê×ğñÍ?ñ%í« 6Ê%@¢í_Oœ8±²òÔóX¶ÆYûÄÒÒRÚ›PÑ¾ú\0b£\\D!ÚşµX,ÎÎşÜ‹•û/U6ÇÂÂÍio:BEûêˆr	…˜û×ã—»Tıš2şÇú¿_\\œO{£Ñƒ˜_}\0QQ.¢sÿZ©Tòù_ÜÚúoÕêCFçQ*İ9;ûsåò]io4zó« *Ê%@\"ï_wvvr¹·íìlT«ÛÆ~#‰IÌ.>“öæ¢7‘¿ú\0â¡\\D!şşukk+	\'Nü³jõA£ull|rvv¦PøÏio(zÿ« Ê%@2Ñ¿V*•••¥|şkkÿ¦TúrµzÚ(—ÿÏúú¿[\\<º°O~N{ÑL¼ú\0b \\D!Cık¡PXZúÇÓÓ?5ÁÄÄÔÔU‹‹ïNdÚ›…şMdçÕ.å \nú×>øNEÂ« r	ık<i„	 r	ık<i„	 r	ık<i„	 r	ık<i„	 r	ık<i„	 r	ık<i„	 r	ık<i„	 r	ık<i„	 r	ık<i„	 r	ık<i„	 r	ık<i„	 r	ık<i„	 r	ık<i„	 r	ık<i„	 r	ık<i„	 r	ık<i„	 r	ık<i„	 r	ık<i„	 r	ık<i„	 r	ık<i„	 r	ık<i„	 r	ık<i„	 r	ık<i„	 r	ık<i„	 r	…şú×1ïzÇüá3(v$€@Ê%@Úö¯¯Öºdë­&Ş£²Qz,¤ÈH¹ˆB×şµ54î8xG2J…Ù‘\0)—\0QØ¯m{È1dù^ï(‹Fé±\";@ å \n=¥Çcû}`u”\ZåQz,¤ÈH¹ˆBxzìúwm¯’a?v$€@Ê%@zıäj×õHÈH¹ˆB‡ôØôéSÇëFé±\";@ å \n!ı«ôØd”)²#R.¢«íbdÛeœ5BØ‘\0)—\0QèĞ¿~fµëzÈQz,¤ÈH¹ˆÂ~Û&Æc=İQFÒc!Ev$€@Ê%@øw]\rvæ)\Z¥ÇBŠìH\0”K€(tî_Û~xµí\r{„^Ù‘\0)—\0QĞ¿öÁ“Æ@Ø‘\0)—\0QĞ¿öÁ“Æ@Ø‘\0)—\0QĞ¿öÁ“Æ@Ø‘\0)—\0QĞ¿öÁ“Æ@Ø‘\0)—\0QĞ¿öÁ“Æ@Ø‘\0)—\0QĞ¿öÁ“Æ@Ø‘\0)—\0QĞ¿öÁ“Æ@Ø‘\0)—\0QĞ¿öÁ“Æ@Ø‘\0)—\0QĞ¿öÁ“Æ@Ø‘\0)—\0QĞ¿öÁ“Æ@Ø‘\0)—\0QĞ¿öÁ“Æ@Ø‘\0)—\0QĞ¿öÁ“Æ@Ø‘\0)—\0QĞ¿öÁ“Æ@Ø‘\0)—\0QĞ¿öÁ“Æ@Ø‘\0)—\0QĞ¿öÁ“Æ@Ø‘\0)—\0QĞ¿öÁ“Æ@Ø‘\0)—\0QĞ¿öÁ“Æ@Ø‘\0)—\0QĞ¿öÁ“Æ@Ø‘\0)—\0QĞ¿öÁ“Æ@Ø‘\0)—\0QĞ¿öÁ“Æ@Ø‘\0)—\0QĞ¿öÁ“Æ@Ø‘\0)—\0QĞ¿öÁ“6ª†¼eíH\0”K€(è_ûàIË¨‰W«_Ø¸@ç›´uùô}[€±¢\\DAÿÚOÚh\rm7k×m-=r	ık<iÙÕöcë¯]/_àn0V”K€(è_ûàIË®Xí|ìq¿¬J\0C \\DAÿÚOZvµ¦¾®÷Øö*é`˜”K€(è_­¯¯\'ÏÕääd.—K~˜Nş}ãß¸³³“öÔèA¯©Ozˆr	ık Ïşó­Ÿ]¼é¦›666Ò\Z=hıô©c\0ñS.¢ \rT©T®¼òÊÆàqıõ×OOO—Ëå´§FŸ¤G€¬P.¢ \r÷Ñ~ôu¯{]==~øÃ^YYI{Rô¯):k@´”K€(è_{rÍ5×Ô’Ã-·Ü233S©TÒ=üÌjçËÃ8¤ÛŒå \nú×|õ«_½âŠ+’\'m~~Ş_<fNã1ÃjÇ;¬ó óéû¶\0cE¹ˆ‚şµW7ß|s-=¦=*ğï»:à\0èJ¹ˆ‚şµW¥R)yÒ|QG¦µığjıª¿¶]ÕA¦Ñ÷mÆŠr	ık<i„	 r	…õ¯•Je}}}qq1ŸÏÏÌÌ„|¤p$%=yÖÖÖ|_H¦MdçÕ.å \nYé_777“Ô”DÇÛo¿ı;ï|ìñÇÏïîçH{òœ:uêÖ[oM“$C¦½qèSV^}\0©S.¢ÿZ.——––=úÄ“Oœß=o4§Ÿy:ÉÉ“S*•ÒŞPô,şW@$”K€(DŞ¿&Ñ1—ËıÑg?s~÷œ±ßøÂ¿pÃ\r7‹Å´7½‰üÕå \n‘÷¯KKK{Ññ%£ó¸ãÎ/ßxã/¥½¹èMä¯>€x(—\0Qˆ¹İÜÜ<zôİ»*FÈø­ßş·İö;io4zó« *Ê%@¢í_+•ÊÌÌÌ“Ow/¼h„Œ3gtäÈõ¾ˆ2C¢}õÄF¹ˆB´ıëÚÚÚÒÒÒî…êã¦ùø·\Z«qÛmÿvee%íMG¨h_}\0±Q.¢mÿº°°pêsÿóÇÑñİGÿºZıîÅê·w«ß8W}è\\õş3V?÷•?{ê¹{ÏWÿo¥zo¥z×Õ/¿Tıw=üÁcJ=È¥28½•ËåÒŞt„ŠöÕå \nÑö¯³³³<òàî…³µ‘ÌóLµzöRõ¹Õ¯¾P­şóùñ‰×üÄÜ»Ú­>q®úÄKÕb¥úØ…êÿÅC{‡Ïá8söÙÉÉÉ´7¡¢}õÄF¹ˆB´ıëÔÔÔ3Ï>µ{áLm$ó|ábõÜÅËW]¸tùß?ùÒÿúÛçïı«OüŞ…jõùÕçv«?Ü­–«Õ/ß÷µ½ôxf<G´”V6@ å \nÑö¯{	ğùúH~={¡úì‹Õó_^ \\.ÿ‡ßÿÃßùİßâ{¥ä×İKÕó{©òjºíXh7(­l,€@Ê%@&\'\'+•JÚ³hc/ş¿ú¸œ/VŸ~¡úı3Õİjõü¹s³o{ÛÄÄk\'&&ßû+·6ŞğşÓ6İv¬†@’!6@ å \n333Åb1íY´±—\0Ÿ«Ú\'WŸ}±ú½ç«?x©zÿ#yÍ5×¼öu¯ÃÕ?½øşW¥Çû8İtÛ±\ZI†ØX\0”K€(är¹ííí´gÑÆ^,×Gòë‹—ª?¬\\>öøôKÕ;ïÛyû‘wüôÏ¼éê©ŸüÃÿúÇ/U«gÎU_8wù†wmİ×tÛ±\ZI†ØX\0”K€(äóùB¡ö,ÚH\Zë~Tµ>;	ÏíVt¾ú½çwïy¸xäïÿâMÿàşà\\õû•ê*ÕgÏU“üx×½÷5İv¬†@’!6@ å \nKKKkkkiÏ¢¦˜¿éÆ¯}óÛ÷?¼³µ½s÷é»|ô¯=ş¿ïıÆ_<ü¯~ôÏOëî¿µõĞ£û¯>ıŸ>û¾[Ş—zŠ“éÊÆ¤\\D!‰I€L{mì¥Ç6_ÿõMø\'ï}oÓ\rÇj$bcR.¢°³³3;;›ö,ÚØKÏ\Z½$Cl,€@Ê%@,â<qÎåôxñ£×!dˆH¹ˆÅêêêòòrÚ³h¶—Ÿ6zI†ØX\0”K€XT*•™™™R©”öD^e/=şÀèu$bcR.\"R(òù|Ú³x•½ôø}£×!dˆH¹ˆËñãÇ£úüê^z,5¶v‡½|ß#ğúx’±±\0)—\0ÑYYY™ŸŸ/—ËiOä²ı2Rëå_×±ßòû}½G‡•w]x¿9„, ëË4MLz\r6@ å F›››333ÇOıÏ ÷2Ò_7vñìåË›~hºUë…m¯ê°Î“i{ÛÖ•‡Øï~¯êğˆj×¦»ágcR.\"U.—“ô˜dÈùùùä‡B¡Ê4’ÆúâÅï…Œú’M7éº†ı–_OëMúLÓ2‘²õªëH2ÄÆ¤\\D­R©lnn&é1ŸÏ7¸‹ŸjM—Ômı¡í¯­£qıî·öë~«j¼ë®óïüpº®?|Jiï;„²±\0)—\0t²—l\Zõ¯­ıÜº|Û5t] uÍ!wø¡qáni¹ÓúëËì·p}É´7¡l,€@Ê%\0ì¤\'êcÿÄõDã¿M7iº¤ë—t½¶umØo…í°¶ÎK É r	@\'{é¯BF}É¦›t]C‡åï½ñ®Û%ÛĞ»Ûïëë	Ÿ›@’!6@ å€N†œ[ƒ_×4Øö.:Üé~‡OÛ®¿éBéq$ÙX\0”K\0:ÙËHßmíâÖË—7ıĞö×ÖÑu®‹µdàÂ!³mûĞ:O[ É r	@\'—3Ò¥bãhº¤şkëmm]èºØË!ö•šÃmØü;ÜKÛ‡ÖyÚI†ØX\0”K\0:ÙËHßiM—ÔmHk–omh]Uàb]ï´mÂ|uÚÜwmµ\Zÿí0±´7¡l,€@Ê%\0ìE£¿líâÖË—7-Ùùò¶4­³§õ.ÜtUç_›.lûx÷»IÚ›P6@ å€Nö¢Ñã£é’ú¯­Kv¾¼vÕ+y¬Ë-yµ‡…;¬¿óôZgØúØ÷[¿@’!6@ å€Nö¢ÑcF¯C É r	@\'{éñÛF¯C É r	@\'Ò£ô8òl,€@Ê%\0$õ¥K\Z½$Cl,€@Ê%\0ì¥Ço½$Cl,€@Ê%\0ì¥Ç£×!dˆH¹ “½ôøM£×!dˆH¹ “ÉÉÉ_|ğÒ¥o=\r$Cl,€@Ê%\0ÌÌÌ|ç;véÒ#FOC É r	@\'óóóºyòRõëFøøæÎŸÌÎÎ¦½é%=R.èäÄ‰++H=ekü—µO,--¥½é%=R.è¤X,ÎÎşÜ‹•û/U6ÇÂÂÍio:BI\0”K\0º8~Ù±KÕ¯!ã¬ÿûÅÅù´7\Z=)—\0tQ©Tòù_ÜÚúoÕêCFçQ*İ9;ûsåò]io4z =R.èngg\'—{ÛÎÎFµºmì7’è˜ÄìBá3io.z#=R.²µµ•È\'şYµú Ñ:66>9;;S(üç´7=“)—\0„ªT*++Kùü;ÖÖşM©ôåjõ´Q.ÿŸõõ·¸xta!Ÿüœö&¢Ò#@ å€Ş\n…¥¥<=ıSLLLM]µ¸øî$@¦½Yèß„ôF¹à°”ËåC]ÿp¾SñØ±c;;;C¸#Ò\"=R.8{\'ÚÉê]§éOÈÜÜœïoaÒ#@ å€Á+\nIâ*‹‡z/CkúËåòÂÂÂêêêpî!“)—\0ØÚÚÚüüüalµ:ô¦yyyqq±R©óNé r	À ­¬¬,--\r\'b\r¿é___Ÿ››+•JC¾_•ôH¹`0’Ä¸¸¸xâÄ‰¡İc*Mÿööv.—ÛÚÚ\Zş]sH¤G€@Ê%\0P.—óùüúúú0ï4­¦¿T*\rÿÁrx¤G€@Ê%\0U;½êğÇ¥Øô×´.//§5Hz¤\\p Ã9½j[©7ı«««Ã9?‡*õ	 +”K\0ú·¾¾b|Š¡éßÜÜLÂóÎÎNÚ¡1ìH\0™ \\Ğ§\'N¤û\r‘4ıItLd¡PH{\"ô)’	 ~Ê%\0=KãÒÒÒÊÊJºÓˆ§é¯4huu5í‰Ğxv$€È)—\0ô&IJóóókkkiO$º¦yyyhßuÉ\0Å¶#DK¹ Åb1OiFØô\'¡:ŸÏ—J¥´\'B\"Ü‘\0â¤\\jkk+—ËÅs†˜8›şäYJööövÚ!Tœ;@„”K\0‚¬¯¯çóù¨¾\"Ú¦¿v„6yÆÒA¢İ‘\0b£\\Ğ]ê§Wm+æ¦?y®’g,õ\"æ	 *Ê%\0]ÄpzÕ¶âoú“Ô½°°Õ[ZÅ¿#DB¹`_ñœ^µ­L4ıù|¾X,¦=ö•‰	 Ê%\0í%\'‰=›››iOd_Yiú···s¹\\$\'ª¥UVv$€Ô)—\0´‘øOš¡¦¿\\.\'QüäÉ“iO„62´#¤K¹ ÙÆÆFãÿÒÂÌ5ıÇöÄvò!2·#¤E¹àUVWW2‘p²ØôŸ<yr~~Şyt¢’Å	 Ê%m!mßAZÃÃh+[×OózìØ±ååå´g*ç­\'…B!—ËEş©à±’Ñ	`ø”K Ãj=_râÕÂoØvÎ:ß¤ë|úXj§WÍÖæe·é/‹sssiO„Ë²»#™r	dUcÃ·_ó×9nõ;¾|kâmÌŸO øO¯ÚV¦›şJ¥²°°püøñA­ğ°÷ŸL?ÛğC,åÈ¤Öno¿£|û]Ø/6=¶†ÆÖ#ƒOˆLœ^µ­hú“ô¸¸¸xğ¿2m»;uX²ñ×ÀCÙ!;çp“\\ÌsˆŠr	dO‡#—wmj[Cf*ióàËwµ¹¹™Ïçã?½j[£Ñô¯¯¯\'é½X,ö½†Œ‡G†¦\n.åÈ’zË»_+Ü6\r¶¶Ë]ûæğ%÷»a×GÑßÁ™Á¶¹Y?ÿçÈ4ıÛÛÛ¹\\nkk«Û¶İá{Z,ÿyìSï¬ï÷ïüÔcÍ—~ğOÛ,ÚõÂ>ÌpØ”K Ûº¶}mCc=j¶]C‡ÄØúkˆ¾çğõw°¼¼|ìØ±şn‰Qjú“ŸÏç{=kÑ~Ï@øåûíK‡½oWÿôƒ­¹/¹¬vaı‡.ìÛ(íH\0‡J¹²-°míŒ«û¤ÇÎ¿†ßã~×nG¦v¾–ÕÕÕƒ¯*]#Öô\'ÛåØ…ë»Ê~»PÛ}©u7k}]t¸ÇNçå“Ô÷ã#­—]>²X…áöoÄv$€Ã£\\ÓGôjm”÷K!Yñ0Ò]ø­Şæ–J¥‘ù®ˆ‘lúO<™Ïçûø8q×g£mhÜïµĞvåñÊâIæk	¯Ê¯äÃğ`$w$€Ã \\ÙÒ1·ş\ZØ1‡¬¿ùôš~2Ÿ&Ù=½j[£Úô\n…\\.·³³ÓÓ­÷ä¦İlPé±Çù\\|ï|ùÛE”b¤\\Ù³ßÑÂı¶f³Óãou6·vzÕƒœÛ36#Üô\'›©ë!â>ş\'¢é%PM+=^õÈ÷Ê_@J\0ÑS.Ljm‚«û·€ø±¾ÀåÛàú[eıôªmvÓŸl¬………\'N.ßëÎÜš»¾‚Bî¥÷%{ŠÒ#@J”K “ö;„²ßÂm=v½a×k²ü!wä¯²²²’õÓ«¶5M²í+•JÛk‡s~HéÑYs\0¢§\\YÒõ£zm?°×¶Qn½v¿ûêunı=¢CZ’:’ì~ü*[Æ¤é___Ÿ››+•Jm¯íéÿD:,;¯¼‡Å\Z¿g£á:¾± rÊ%ÀÈª}…`’=ÒÈaŸ¦{{;—Ëmmmµ^u¨ÇáÃ#e¯Ë\\>dø²Æğw9àÂ>Ïp@Ê%ÀhÚÙÙÙ/oŒŒ±júK¥R>Ÿ_[[«ızØÇá»èî°@ÇÉS”¡©¤K¹A…Bannn”N¯ÚÖ¸5ı•Jeiiiyy9í‰ŒšqÛ‘\0ú¦\\ŒšµµµÑ;½j[ãÙô¯®®ÉöšñÜ‘\0ú \\Œ”•••¥¥¥ıNÑ9bÆ¶éßÜÜœ››ÛÙÙI{\"#blw$€^)—@¦4œj£á;Şê—6?#üÂ1Ú§Wmkœ›ş$:&2‰‘iOdŒóĞåÈ”?ı`kîKë,ÿQùÓ«¶5æM²ÑçççWWWÓHæùN¹²¤á;ÂÛ]6ÜoG±Xœ››íÓ«¶¥éO,//Ïg•‰	 r	dHÃ×Š7^öãøJ>¿0û’Ğ˜ËåÆóOà4ı5kkkù|¾T*¥=‘¬²#R.¹ùŞùÎWÿÕãx§Çõõõ$6Œíé75ıuµÿDØŞŞN{\"™dG¤\\Ùq9şÕ#ß+9ÆéñÄ‰‹‹‹ãü‘EM£R©4777nû:v$€@Ê%Q½ÅJµo_YYI{\")Óô7©w×Ñ+;@ åÈ¨zü»³æÔÎ´¹¶¶–öDÒ§éoëÄ‰cûyæ>Ø‘\0)—@v4~ÏFÃ	tÆê;j§W-\niO$\nšşılll$ûI²·¤=‘l°#R.,¹|Èğeáïr<À…™1Î§WmKÓßA²Ÿ${‹ÿhaG¤\\dÃ˜Ÿ^µ-MgÉŞ’ì3\'OL{\"±³#R.2`uuuÌO¯Ú–¦?Ä±=vìH\0”K€Ø%­ÿòòrÚ³ˆ‘¦?ĞÉ“\'¸îÀH¹ˆWíôª>y¸Ÿƒ4ıé®SQû£Ùííí´\'£ÌmM€´(—\0‘*‹ù|~ss3í‰Ä«Şô‡DÁ¦„Ğ50´.ßwÔŒDí„½ëëëiO$:™Ø|\01P.b´½½4úuvÃƒ½¦Çı.ÌVğ¨T*‹‹‹ÇO{\"qÉÖFH‘r	Ú—õ•J¥´\'»ƒ§Ç÷»yãåMIz\\XXpºŒnG€áS.â²ººª³Ô¡éïïĞâ~ôñÉØÈÕş‡¢X,¦=‘(dkÛ¤H¹ˆˆÓ«ö¤ÃáÁÁ¦Ç‘´½½Ëå\n…BÚIßÈok€AQ.¢P©Tœ^µWş4±~U× îw±íŸ8ÀQÇFNê[“İ-0dÊ%@úJ¥ÒÜÜœÓ«öªmÀk½ªCÈl½¶szœF†T*•c{ÒHš2½†I¹H™Ó«öm¿à×ùª¦KzJ#vì±îäÉ“ù|¾\\.§=‘tŒÀå M›››I×îä%ıé/.6ı:æÇë\n…B.—ÏÿÅ-0Ê%@jN<9???¶|®§¤×!%íß=6)‹ù|~cc#í‰ÛÈlA€Ã¦\\¤cyyyÌÿØìà:4ı]ó@¯Lt<ÏÈÄr¹¼°°pâÄ‰´\'2T#³ù\0›r	0l•J%iĞWWWÓHæ¥˜[¥²²²²¸¸8>_::JÛàP)—\0CU;½ê~8ğ0Rzlı<jÓÏŸtÍ´õõõdG“¿È±mpx”K€áqzÕÁÒôªÚîºµµ•öD	 r	0$…BÁéUKÓØJ¥R²Ó®­­¥=‘ÃeG¤\\CÒ;½êÀiú‡ R©,---//§=‘CdG¤\\º•••¤ÿŸs¦hVWWóùü¨ş÷‡	 r	pˆ’Ä¸¸¸8nß04šşa*\nsss;;;iOdğìH\0”K€ÃR.—óùüúúzÚYšş!K¢c 777ÓÈ€Ù‘\0)—\0‡\"é³s¹Ü8œ¯2Ešşá+—Ëóóó#öm¥v$€@Ê%ÀàÕ>ãçôª‡MÓŸ–åååÅÅÅ‘ùS^;@ å`Àœ^uh4ı)Z__Ïçó¥R)í‰€	 r	0HN¯:Lšştmmmår¹ííí´\'rPv$€@Ê%À`Ô¾ÏéU‡IÓŸºR©477—õSCÙ‘\0)—\0P;•ÈÚÚZÚ/šşÔ¾–fyy9í‰ôÏH¹8¨b±877W(ÒÈØÑôÇcuuuaa!£îkG¤\\HíO¿Fò+Ôã§éÊÆÆÆÜÜ\\_v$€@Ê%@ÿj§Ìèñ– éM³xŞH¹èÓ‰\'Fé+ï²HÓ¡r¹œÏçWWWÓHìH\0”K€ÕN¯º²²’öDÆ¦?ZËËËÇËÊÿ­Ø‘\0)—\0½qzÕxhúcvòäÉ|>_*•ÒHwv$€@Ê%@œ^5*šşÈmmm%¯—ííí´\'Ò…	 r	*i‚3zJÉQ¥é_í?\\Ö××ÓH\'v$€@Ê%@Ú·dâcxãCÓŸ	•JeqqñøñãiOd_v$€@Ê%@wµoBÏÊ)@Æ‡¦?C’ô˜¼ˆâüz;@ å ‹cÇ-//§=ÚĞôgËÆÆF>Ÿ/‹iO¤™	 r	°¯ÚéUO<™öDhOÓŸ9ÛÛÛ¹\\.¶óNÙ‘\0)—\0í‹Å|>¿¹¹™öDØ—¦?‹\"üO;@ å ÚéUãÿ¦1§éÏ¨J¥rlO$KlG¤\\4szÕ¬ĞôgÚÉ“\'çççc8	 r	Œµ;î¸cmm­ñ’¤£uzÕ¬Ğôg]¡PÈårùÿõ¿ş×ÃÏ“v$€@Ê%0ÖŞúÖ·&c½[]^^>vìXºS\"œ¦ÔşÀxcc#ù¹T*½öµ¯]\\\\òìH\0”K`|İ{ï½I×xÅW9rä¾ûî[XXX]]M{Rô@Ó?\ZÊåròê;~üø-·Ü’lÓŸüÉŸòáG;@ å_×^{íDƒ«¯¾Úir²EÓ?2ŠÅbıõø¦7½é7~ã7†yïv$€@Ê%0¦>õ©O5FÇŸú©Ÿzï{ß»°°ö¼è¦4üîïşîÄ«½ùÍoæåØ‘\0)—À8*—Ë“““IËø7şÆßHrã»Şõ®™™™HNÿH8Mÿh¸ùæ›ÿæßü›éñŠ+®xÇ;Ş1´	Ø‘\0)—À8ú§ÿôŸ^}õÕ×_ıŞğ†·¿ıí«««Åb1íIÑ3Mÿh(—ËKKKÓÓÓ³³³7ŞxãÏÿüÏ¿şõ¯ÿ[ëo5ùğØ‘\0)—À8š››û™Ÿù™w¾óBc¦iúGIòb,\nÇO’ä/ıÒ/%7	Ã¹k;@ å;•JÅéUGƒ¦´%/Ò|>?„;²#R.—%™j}}}qq1i×fff&ÆUòØ“g ‰—kkkş2ršş,SsjÔ C¼ï—mnn&LÒÆİ~ûíwÜyçc?~~ww<GòØ“gàÔ©S·Şzkòœí/¯”ä¤áœœÌårÉÓÓÓÉ¿o|ãwvvÒ\Z=PsÔ ‹¤GwµóU=zô‰\'Ÿ8¿{ŞhO?ótÒÏ%ON©TJ{Cñ²Ïşó­Gonºé¦´§F5GÍ²Kz„±–´q¹\\î>û™ó»çŒıÆ¾ø…n¸Áùu\"Q©T®¼òÊÆèxıõ×OOOûÈ_&¨9jiÒ#Œµ¥¥¥½6î%£ó¸ãÎ/ßxã/¥½¹xÙG?úÑ×½îuõôøáxee%íIDÍQs€L“a|mnn=úîİ#düÖoÿ‹Ûnû´7\Z/»æškjÑñ–[n™™™©T*iÏˆîÔ5È:éÆTÒm\'=÷“Ow/¼h„Œ3gtäÈõNÍ‰¯~õ«W\\qE’çççıÅc&¨9j0¤GSkkkKKK»^¨›æÿQàùåo5Vã¶Ûş­OHÆãæ›o®¥Ç´\'B5GÍF€ôcjaaáÔçşçÛ¸wıëjõ»«ßŞ­~ã\\õ¡sÕûÏ\\XıÜWşì©çî=_ı¿•ê½•ê]/T¿üRõ?Şõğ}(õ¦*•ñÀé­\\.—ö¦ãe¥R)ÉÌd…š£æ\0#@z„15;;ûÈ#î^8[I~¦Z={©úÜ…êÏW_¨Vÿù¿üøÄk~bîİOíVŸ8W}â¥j±R}ìBõÿâ¡½CgÇpœ9ûìäädÚ›KvÅ´§@(5GÍF€÷]SSSSÏ<ûÔî…3µ‘4g/\\¬»xùª—.ÿû\'_ú_ûïü½õ‰ß»P­>¡úÜnõ‡»Õrµúåû¾¶×ÉÏ!®¤«R©lll?~|aa!ÿŠùùùä’µµ5_‘35GÍF€’cj¯{¾>’_Ï^¨>ûbõüÅ—(—Ëÿá÷ÿğw~÷÷ŸøŞå|÷Rõü^‡wÏ5İv¬†N.-IhLc×?Ëår\'Ot\nÖ©9j0”$S{İØÿ«ËÜÅêÓ/T¿¦º[­?wnömo›˜xíÄÄä{åÖÆŞúÁ¦ÛÕĞÉ\r_¡P˜››<½JÍÌÌŒ±ÆFÍQs€ $Á˜ÚëÆ«Ú§È}±ú½ç«?x©zÿ#yÍ5×¼öu¯ÃÕ?½øşWur÷=pºé¶c5trÃT©T–––Z.şÖoıö©SŸ»ãÎ¯ÔÇÇ>öñ£G6-¹°°P.—Ó~¼LÍQs€ $Á˜ÚëÆÊõ‘üúâ¥ê+—<ıRõÎûvŞ~ä?ı3oºzê\'ÿğ¿şñKÕê™sÕÎ]¾á][÷5İv¬†NnhJ¥RÓ!Ç|ä7{üñó»öO?óì|úÓÓÓÓ!···Ó~(\\¦æ¨9ÀP’`L%É…?ªZƒ’4sÏíVt¾ú½çwïy¸xäïÿâMÿàşà\\õû•ê*ÕgÏU“^î®{ïkºíX\rÜp‹Å$øÕCàüü|çÜØ”!?ö±×o;99¹µµ•öBÍQs€Q $Á˜jêÆò7İøµo~ûş‡w¶¶wî>½s÷ƒŞóµÇÿ÷½ßø‹‡¿óÕÓşùéoİıà·¶zôáoÿÕ§ÿÓgßwËûRï¨tr#¬R©4uüÄm·æÆÆqûíÿ=Éõ#NÇš:5GÍF€’cj¯“ûaãøõ_ÿP‡ÓÔı“÷¾·é†c5trC°¸¸XßßNú\\Ñ±6îàôÔÔTm=ù|>í‡5îÔ5JŒ©½NîY£×¡“;l<êØ8¾ğÅ/Õ×¶ººšöƒkjšŒ\0%	ÆÔåNîâ3F¯C\'wØr¹\\-ìÍÏÏ0:ÖFıo §§§}dŠÔ5JŒ©½Nîi£×¡“;Tëëëµ¤799ùÄ“O\r$=>ælı,¬ËËËi?Äñ¥æ¨9ÀP’`Líur?0z:¹C•Ïçk1ï#ùÍDÇÚø£Ï~¶¶Ú©©©´âøRsÔ`(I0¦ö:¹ï½Üá)—Ëõ¿QÔÇú¸îº™Úš…BÚtL©9j0”$S{\\éFç•÷q×7iZì0£Nî€Ö××‹ÅbÛ«ÖÖÖêçGltLÆ?øòé=WVVzÑÓëq¿…{½ü0*@ß‹õ7I5ˆŠ’cê€ÍVÓ)õÃ›¤v\'äo³†ş\Z¯fÒ÷O{ÓeØ£>ZÛÜW]uÕ©S§š®=vìXíÚƒŸjµuÜqçWj+Ÿ››k¼Ór¹üş÷¿¿vÕ›ßüfòğôúbìµ°t(2á¥,¤õT‹š&¦æ\0Y§$Á˜ÚëcşºïÑxóÖUí·òW:³îï2[š¼ö«\n\\¾¿ö¦Ë°J¥òš×¼¦¶-®¸âŠ_ø…_hLkóóóµ«¾ğÅ/\r<=>öøãµ•ÏÌÌÔïñäÉ““““µË“¦§§K¥R\nÏËxèãØ¹Î´}áw-/M¡õ¶M79x-\nyjJŒ©¤#¹xñ{}ÚÍ›şmÕz“Æš~n»p×9Ôî|§ƒ\Z:¹ªŸş´æ\roxÃ>ğÚiÔ¿«ãşN<=&£~§É}íìì¼õ­omœÉÜÜ\\c°dàzz1vÈiJAøË¿õ&}¬$¤µ-w½>io:€S’`Líµ/Oõ=j7oü·õÚÎ7¥»êí{Z¦şëlÓ:ëçe°êÁò±Ç?ŒôX_¿-˜–ƒ¿Ş[/ßoıûT§ÖâĞë<CÈD»âÓyJV•öÛÀ)I0¦ö:˜\'ûµ›7şÛxU‡•7]Ûaá€N´ı¬:ÿ|À¡“; «¯¾º¾ö$Yngg\'¹jvv¶vù×yä0ÒcıCªÉ}‹Åw½ë]?û³?[ŸÌUW]•ËåÒ~zFYO/Ãe!ä&]_şõ;ü0ZÔ¸LçÚ¨æ\0™ $Á˜Úkbè{ÔnŞøoãU­+oh¡Ú¯­õÚ~mZIKo×ÿ#m½—´7]†Õ¿“#	Š¿ök¿–ü»¾¾^¿¶~Hğ;¿2ğèøô3ÏÖVŞø•›››×]wİ[Şò–ÚUW^yeí3´†^‰jE×ËÛ‡ÖBÑT¾Zè»í·¶şj‘šDEI‚1µ×ÇüUß£vóÆ[/ïzó–éükí’ıæx<íM—aßıîw\'\'\'çççgffVVV’0ÙxíÒÒRm#şÁ§?=ğôøõG©­¼é\0c?~íµ×&—\'ÿnoo÷)#=½\'ö×¹VŞKceèz½Ö¢®åHÍ²KI‚15üôØ¡ìcù¶\r\\‡®î€W\'7(kkkm¿ãÄ‰µ-{ë­¿:ğôø‰Ûn«­|qq±õ®“ù$³JævèŒ\rê5Ø¹P´-ûU°Î—ô]‹\Z/<xRs€¨(I0¦öú˜ïö=j7oü·ío¾ß¯!Ët½É~?pèäÏÎÎN­íššzşÌÙÁ¦Ço¼±¶ò$%¦ı@ÇTß/ÃÃ¸aëUá÷T‹^ˆÔ *JŒ©Ë}Ì¥âGãJöû¹ó­:,ßtaç_›.ŸL9íM7ÊfffjïÔ©Ï\r0:Ö¿ì1ÑôqY†¦×Wbå¥k•¨_U»¶ı±Ä˜j‘šDEI‚1µ×Ç|ç £¶†¶ëé°òğåÛvu¯îğº¯§Ã$û~ÔioºQ¶²²RÛ¸GàáÇ_~Ï{j«]XXHû!¯ğ—aëË¶é¶*F‹…T­¾kQãciºPÍ²HI‚1µ×¾üåAF}\r­«Úoå=]Ştaç_».sğÇ[_OÚ›n”•Ëåú·2~â¶Ûïºûz—ï¤8)\n\rÖ–ìPXš^Ú¯D¸Ğ‚ÓSu:`-jœ[‡š©æ\0Y¡$Á˜Úk_ï{ìwó†N.è&û-~m—i]íoãzÒŞt#nuuµ¶ù&\'\'şÕ=şx=;v,í7Öúx¥·;Ê×ıæûìaáÎwÔõÚÆ5´¢ğ¢§æ\0R’`Líµ/½ÜÌÍÍÕ:ì$ø%ñ¯ïèøü™³G©¯ªT*¥ıÈÆšš£æ\0#@I‚1µ×É}Ûèuèä† X,NMMÕSßıœî#:>ñäSõè899Y(Ò~XãNÍQs€ $Á˜ÒÉéäb–„½úgü’ì÷Ÿşt¯ëXÿÀjbuu5í´¯¬ë|ó¡Mõ€Ô5JŒ©¤#¹téQ£×¡“šúÈ‰½³°~á‹_\n9äø¾[niŒ^ÃŒ!Q°iêºGµ.ßwÔL—š£æ\0#@I‚1µ×É}Ëèuèä†igggvv¶1\Z%òcûø×y¤54şÁ§?}ôèÑÆ…“ğÃVxğ°í­Æ¿gª9j0”$S{ÜÑëĞÉ\rY¹\\>~üøäädÛãl7ÜpÃ~W-..FršœôØá@â~7o¼<»¥š£æ\0#@I‚1µ×É}ÓèuèäR‘äÀ¥¥¥×l”Ïç·¶¶ÒòËú;´¸ßÏÀ\0æ}Ô5JŒ©ÉÉÉ_|ğÒ¥o=\r\\Š*•Êúúz#s¹\\S^š™™YXX8yòd$ÇkB²ÜÁÈ\n5GÍF€’c*é¶¿ó?»té£§¡“#PÓçN»~\0u¿Cˆ­7ÌÜQÇ\Z5GÍF€’cj~~şO7O^ª~İßÜù“ÙÙÙ´7Ğ6ûµû¥ÄÎé±óÆIÍQs€õ;\rpxNœ8±²òÔ{£lÿ²ö‰¥¥¥´7±ë;DÁÒc=ª9j0¢~§O±Xœı¹+÷_ª>l……›766ÒŞtD-<.6ı:òÇÕ5Q¿Ó\0‡êøeÇ.U¿f„Œÿ±şïçÓŞhD-$éuH‰£ıwU5GÍ²/öw\ZàğT*•|ş·¶ş[µúÑy”JwÎÎş\\¹|WÚŒéšèz]`¢ãÉx\"jšd]Ôo3ÀaÛÙÙÉåŞ¶³³Q­nû¤KZŞBá3io.²ç°Ócëb‘H5GÍ2-ê÷`¶¶¶’fîÄ‰V­>h´OÎÎÎ\nÿ9í\rE&$=¶~µéçÀOºÆFÍQs€ìŠı=‚J¥²²²”Ï¿cmíß”J_®VOåòÿY_ÿw‹‹GòÉÏio\")jšd”ô¼¬P(,-ıãééŸêpNñ15uÕââ»“f.íÍ#KÍi¤æ\0™ =ÑñıfÀ0©9\0¤G .÷Ş{ïÄÄD¹\\N{\"À¸˜ˆşE\"¡\\q¹öÚk“Nî7~ã7Ò0.¤G€@Ê%‘O}êSµ?zó›ß¼½½öt€± =R.X”ËåÉÉÉZz|ıë_ÿw¼#ícAz¤\\±XXXh<áµ×^»¶¶–ö¤€Ñ\'=R.(”ËåÖSØ¿å-o©T*iO\rqÒ#@ åˆÂg>ó™Zb|ûÛß^O÷ïşİB¡öÔ€\'=R.(üùŸÿùOüÄOÌÌÌLMM%Üô7½éMÒ#pØ¤G€@Ê%‹íííb±X}¥“K~vÚU`¤G€@Ê%0Lj@ åˆN&5 r	DG\'“šH¹¢£“†IÍ¤\\ÑÑÉÃ¤æ\0R.èèä€aRs\0)—@ttrÀ0©9\0”K ::9`˜Ô€@Ê%0Lj@ åˆN&5 r	DG\'“šH¹¢£“†IÍ¤\\ÑÑÉÃ¤æ\0R.èèä€aRs\0)—@ttrÀ0©9\0”K ::9`˜Ô€@Ê%0Lj@ åˆN&5 r	DG\'“šH¹¢£“†IÍ¤\\ÑÑÉÃ¤æ\0R.èèä€aRs\0)—@ttrÀ0©9\0”K ::9`˜Ô€@Ê%0Lj@ åˆNn´Mè|ó¡M•1a§¤\\ÑÑÉ¶®Û·iƒDMa/¤\\ÑÑÉ¶^Óã~ÚOû@ åˆNn´Õ¶o‡‰ûí\0—ÛI »@ åˆNn´õtì1ä$í0] r	DG\'7Úúûä*»@ åˆNn´Õ·ï~‡Ûş‰££;@ åˆNn´í—;§ÇÎ«‚ƒ°#R.èèäF[éÑ±G	 r	DG\'7Ú{$6v$€@Ê%ÜhówÄÆH¹¢399Y©TÒ‡¥k§Şö˜d×#–Ğ7{@ åˆÎÌÌL±XL{–¦ÇÖÅ´şD©TšN{\0ÙàˆN.—ÛŞŞN{–a¯õó¨M?~ÒÂ‹Å™™™´g\rŞqèäóùB¡ö,€±°¹¹9??Ÿö,\0²Az¢³´´´¶¶–ö,€±p|OÚ³\0ÈéˆN“\0™ö,€±0??¿¹¹™ö,\0²Az¢³³³3;;›ö,€ÑW*•fffœä ôÄÈ‰s€!X]]]^^N{\0™!=1ÒÒ‡­R©ÌÌÌ”J¥´\'Ò##]pØœ  WÒ#©B¡ÏçÓ0šVWW;–ö,\02FzâuüøqŸ_«R©,--‰\0}¨­¬¬ÌÏÏ—Ëå´\'d^RIVWWgff|` ?Ò#»ÍÍÍ¤Û;~ü¸?ƒúP(Nœ8±°°T’ååe• oÒ#år9IIç7??Ÿüô‚iÏ(:\n…µµµã?\'ŸOÊÅÄ+’_WVV666|Šà€¤G 3*•Êææf­9àÕÒíÔ#±´´”vp‹BÚ)>\nÅb1íŠ0‚¤G\0\0\0º“\0\0èNz\0\0 ;é\0\0€î¤G\0\0\0º“\0\0èNz\0\0 ;é\0\0€î¤G\0\0\0º“\0\0èNz\0\0 ;é\0\0€î¤G\0\0\0º“\0\0èNz\0\0 ;é\0\0€î¤G\0\0\0º“\0\0èNz\0\0 ;é\0\0€î¤G\0\0\0º“\0\0èNz\0\0 ;é\0\0€î¤G\0\0\0º“\0\0èNz\0\0 ;é\0\0€î¤G\0\0\0º“\0\0èNz\0\0 ;é\0\0€î¤G\0\0\0º“\0\0èNz\0\0 ;é\0\0€î¤G\0\0\0º“\0\0èîÿ[r®rû¥	\0\0\0\0IEND®B`‚',0),('3',1,'baoxiaoprocess.bpmn','1','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"myProcess\" name=\"My process\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"usertask1\" name=\"å‘˜å·¥ç”³è¯·æŠ¥é”€\" activiti:assignee=\"${employeeId}\"></userTask>\n    <userTask id=\"usertask2\" name=\"éƒ¨é—¨ç»ç†å®¡æ‰¹\">\n      <extensionElements>\n        <activiti:taskListener event=\"create\" class=\"com.web.myoa.utils.MyManagerListener\"></activiti:taskListener>\n      </extensionElements>\n    </userTask>\n    <userTask id=\"usertask3\" name=\"è´¢åŠ¡å®¡æ ¸\">\n      <extensionElements>\n        <activiti:taskListener event=\"create\" class=\"com.web.myoa.utils.AssigneeTaskListenerFinance\"></activiti:taskListener>\n      </extensionElements>\n    </userTask>\n    <userTask id=\"usertask4\" name=\"æ€»ç»ç†å®¡æ‰¹\">\n      <extensionElements>\n        <activiti:taskListener event=\"create\" class=\"com.web.myoa.utils.MyManagerListener\"></activiti:taskListener>\n      </extensionElements>\n    </userTask>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <sequenceFlow id=\"flow2\" sourceRef=\"usertask1\" targetRef=\"usertask2\"></sequenceFlow>\n    <sequenceFlow id=\"flow3\" name=\"é‡‘é¢å¤§äº5000\" sourceRef=\"usertask2\" targetRef=\"usertask4\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${message==\"é‡‘é¢å¤§äº5000\"}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow4\" name=\"é‡‘é¢å°äºç­‰äº5000\" sourceRef=\"usertask2\" targetRef=\"usertask3\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${message==\"é‡‘é¢å°äºç­‰äº5000\"}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow5\" name=\"ä¸åŒæ„\" sourceRef=\"usertask2\" targetRef=\"endevent1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${message==\"ä¸åŒæ„\"}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow6\" sourceRef=\"usertask3\" targetRef=\"endevent1\"></sequenceFlow>\n    <sequenceFlow id=\"flow7\" name=\"ä¸åŒæ„\" sourceRef=\"usertask4\" targetRef=\"endevent1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${message==\"ä¸åŒæ„\"}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow8\" name=\"åŒæ„\" sourceRef=\"usertask4\" targetRef=\"usertask3\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${message==\"åŒæ„\"}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow9\" name=\"é©³å›\" sourceRef=\"usertask2\" targetRef=\"usertask1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${message==\"é©³å›\"}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow10\" name=\"é©³å›\" sourceRef=\"usertask4\" targetRef=\"usertask1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${message==\"é©³å›\"}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_myProcess\">\n    <bpmndi:BPMNPlane bpmnElement=\"myProcess\" id=\"BPMNPlane_myProcess\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"560.0\" y=\"60.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"525.0\" y=\"140.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"525.0\" y=\"270.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"340.0\" y=\"430.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask4\" id=\"BPMNShape_usertask4\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"720.0\" y=\"430.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"560.0\" y=\"440.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"577.0\" y=\"95.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"577.0\" y=\"140.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"577.0\" y=\"195.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"577.0\" y=\"270.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"577.0\" y=\"325.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"772.0\" y=\"430.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"16.0\" width=\"92.0\" x=\"626.0\" y=\"350.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"577.0\" y=\"325.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"392.0\" y=\"430.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"48.0\" width=\"100.0\" x=\"432.0\" y=\"340.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\n        <omgdi:waypoint x=\"577.0\" y=\"325.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"577.0\" y=\"440.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"16.0\" width=\"48.0\" x=\"579.0\" y=\"379.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow6\" id=\"BPMNEdge_flow6\">\n        <omgdi:waypoint x=\"445.0\" y=\"457.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"560.0\" y=\"457.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow7\" id=\"BPMNEdge_flow7\">\n        <omgdi:waypoint x=\"720.0\" y=\"457.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"595.0\" y=\"457.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"16.0\" width=\"48.0\" x=\"625.0\" y=\"469.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow8\" id=\"BPMNEdge_flow8\">\n        <omgdi:waypoint x=\"772.0\" y=\"485.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"772.0\" y=\"545.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"392.0\" y=\"546.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"392.0\" y=\"485.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"16.0\" width=\"32.0\" x=\"550.0\" y=\"519.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow9\" id=\"BPMNEdge_flow9\">\n        <omgdi:waypoint x=\"525.0\" y=\"297.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"474.0\" y=\"297.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"474.0\" y=\"168.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"525.0\" y=\"167.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"16.0\" width=\"32.0\" x=\"481.0\" y=\"220.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow10\" id=\"BPMNEdge_flow10\">\n        <omgdi:waypoint x=\"772.0\" y=\"430.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"772.0\" y=\"167.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"630.0\" y=\"167.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"16.0\" width=\"32.0\" x=\"723.0\" y=\"256.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0);

/*Table structure for table `act_ge_property` */

DROP TABLE IF EXISTS `act_ge_property`;

CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_property` */

insert  into `act_ge_property`(`NAME_`,`VALUE_`,`REV_`) values ('next.dbid','101',2),('schema.history','create(5.13)',1),('schema.version','5.13',1);

/*Table structure for table `act_hi_actinst` */

DROP TABLE IF EXISTS `act_hi_actinst`;

CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_actinst` */

insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`) values ('13','myProcess:1:4','5','5','usertask2','14',NULL,'éƒ¨é—¨ç»ç†å®¡æ‰¹','userTask','mike.3','2020-11-30 16:58:26','2020-11-30 16:59:19',52957),('19','myProcess:1:4','5','5','usertask4','20',NULL,'æ€»ç»ç†å®¡æ‰¹','userTask','danny.1','2020-11-30 16:59:19','2020-11-30 17:00:14',54557),('24','myProcess:1:4','5','5','usertask3','25',NULL,'è´¢åŠ¡å®¡æ ¸','userTask','li.6','2020-11-30 17:00:14','2020-11-30 17:03:21',187020),('29','myProcess:1:4','5','5','endevent1',NULL,NULL,'End','endEvent',NULL,'2020-11-30 17:03:21','2020-11-30 17:03:21',1),('6','myProcess:1:4','5','5','startevent1',NULL,NULL,'Start','startEvent',NULL,'2020-11-30 16:58:00','2020-11-30 16:58:00',30),('8','myProcess:1:4','5','5','usertask1','9',NULL,'å‘˜å·¥ç”³è¯·æŠ¥é”€','userTask','zhang.5','2020-11-30 16:58:00','2020-11-30 16:58:26',26019);

/*Table structure for table `act_hi_attachment` */

DROP TABLE IF EXISTS `act_hi_attachment`;

CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_attachment` */

/*Table structure for table `act_hi_comment` */

DROP TABLE IF EXISTS `act_hi_comment`;

CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_comment` */

insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('11','comment','2020-11-30 16:58:26','zhang','9','5','AddComment','æ€¥ã€‚ã€‚ã€‚','æ€¥ã€‚ã€‚ã€‚'),('16','comment','2020-11-30 16:59:19','mike','14','5','AddComment','æˆ‘æ²¡åŠæ³•æŠ¥é”€ã€‚ã€‚ã€‚','æˆ‘æ²¡åŠæ³•æŠ¥é”€ã€‚ã€‚ã€‚'),('22','comment','2020-11-30 17:00:14','danny','20','5','AddComment','å¥½ï¼','å¥½ï¼'),('27','comment','2020-11-30 17:03:21','li','25','5','AddComment','okã€‚ã€‚ã€‚ã€‚','okã€‚ã€‚ã€‚ã€‚');

/*Table structure for table `act_hi_detail` */

DROP TABLE IF EXISTS `act_hi_detail`;

CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_detail` */

/*Table structure for table `act_hi_identitylink` */

DROP TABLE IF EXISTS `act_hi_identitylink`;

CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_identitylink` */

insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('10',NULL,'participant','zhang.5',NULL,'5'),('12',NULL,'participant','zhang',NULL,'5'),('15',NULL,'participant','mike.3',NULL,'5'),('18',NULL,'participant','mike',NULL,'5'),('21',NULL,'participant','danny.1',NULL,'5'),('23',NULL,'participant','danny',NULL,'5'),('26',NULL,'participant','li.6',NULL,'5'),('28',NULL,'participant','li',NULL,'5');

/*Table structure for table `act_hi_procinst` */

DROP TABLE IF EXISTS `act_hi_procinst`;

CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  UNIQUE KEY `ACT_UNIQ_HI_BUS_KEY` (`PROC_DEF_ID_`,`BUSINESS_KEY_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_procinst` */

insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`) values ('5','5','myProcess.10','myProcess:1:4','2020-11-30 16:58:00','2020-11-30 17:03:21',321021,NULL,'startevent1','endevent1',NULL,NULL);

/*Table structure for table `act_hi_taskinst` */

DROP TABLE IF EXISTS `act_hi_taskinst`;

CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `CLAIM_TIME_` datetime DEFAULT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_taskinst` */

insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`) values ('14','myProcess:1:4','usertask2','5','5','éƒ¨é—¨ç»ç†å®¡æ‰¹',NULL,NULL,NULL,'mike.3','2020-11-30 16:58:26',NULL,'2020-11-30 16:59:19',52947,'completed',50,NULL,NULL),('20','myProcess:1:4','usertask4','5','5','æ€»ç»ç†å®¡æ‰¹',NULL,NULL,NULL,'danny.1','2020-11-30 16:59:19',NULL,'2020-11-30 17:00:14',54554,'completed',50,NULL,NULL),('25','myProcess:1:4','usertask3','5','5','è´¢åŠ¡å®¡æ ¸',NULL,NULL,NULL,'li.6','2020-11-30 17:00:14',NULL,'2020-11-30 17:03:21',187019,'completed',50,NULL,NULL),('9','myProcess:1:4','usertask1','5','5','å‘˜å·¥ç”³è¯·æŠ¥é”€',NULL,NULL,NULL,'zhang.5','2020-11-30 16:58:00',NULL,'2020-11-30 16:58:26',25992,'completed',50,NULL,NULL);

/*Table structure for table `act_hi_varinst` */

DROP TABLE IF EXISTS `act_hi_varinst`;

CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_varinst` */

insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('17','5','5',NULL,'message','string',1,NULL,NULL,NULL,'åŒæ„',NULL),('7','5','5',NULL,'employeeId','string',0,NULL,NULL,NULL,'zhang.5',NULL);

/*Table structure for table `act_id_group` */

DROP TABLE IF EXISTS `act_id_group`;

CREATE TABLE `act_id_group` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_group` */

/*Table structure for table `act_id_info` */

DROP TABLE IF EXISTS `act_id_info`;

CREATE TABLE `act_id_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_info` */

/*Table structure for table `act_id_membership` */

DROP TABLE IF EXISTS `act_id_membership`;

CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_membership` */

/*Table structure for table `act_id_user` */

DROP TABLE IF EXISTS `act_id_user`;

CREATE TABLE `act_id_user` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_user` */

/*Table structure for table `act_re_deployment` */

DROP TABLE IF EXISTS `act_re_deployment`;

CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOY_TIME_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_deployment` */

insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`DEPLOY_TIME_`) values ('1','æŠ¥é”€æµ‹è¯•æµç¨‹',NULL,'2020-11-30 16:56:22');

/*Table structure for table `act_re_model` */

DROP TABLE IF EXISTS `act_re_model`;

CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_model` */

/*Table structure for table `act_re_procdef` */

DROP TABLE IF EXISTS `act_re_procdef`;

CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_procdef` */

insert  into `act_re_procdef`(`ID_`,`REV_`,`CATEGORY_`,`NAME_`,`KEY_`,`VERSION_`,`DEPLOYMENT_ID_`,`RESOURCE_NAME_`,`DGRM_RESOURCE_NAME_`,`DESCRIPTION_`,`HAS_START_FORM_KEY_`,`SUSPENSION_STATE_`) values ('myProcess:1:4',1,'http://www.activiti.org/test','My process','myProcess',1,'1','baoxiaoprocess.bpmn','baoxiaoprocess.png',NULL,0,1);

/*Table structure for table `act_ru_event_subscr` */

DROP TABLE IF EXISTS `act_ru_event_subscr`;

CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_event_subscr` */

/*Table structure for table `act_ru_execution` */

DROP TABLE IF EXISTS `act_ru_execution`;

CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_RU_BUS_KEY` (`PROC_DEF_ID_`,`BUSINESS_KEY_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_execution` */

/*Table structure for table `act_ru_identitylink` */

DROP TABLE IF EXISTS `act_ru_identitylink`;

CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_identitylink` */

/*Table structure for table `act_ru_job` */

DROP TABLE IF EXISTS `act_ru_job`;

CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_job` */

/*Table structure for table `act_ru_task` */

DROP TABLE IF EXISTS `act_ru_task`;

CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `DUE_DATE_` datetime DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_task` */

/*Table structure for table `act_ru_variable` */

DROP TABLE IF EXISTS `act_ru_variable`;

CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_variable` */

/*Table structure for table `baoxiaobill` */

DROP TABLE IF EXISTS `baoxiaobill`;

CREATE TABLE `baoxiaobill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `money` decimal(8,2) NOT NULL,
  `title` varchar(200) NOT NULL,
  `remark` varchar(500) NOT NULL,
  `creatdate` datetime NOT NULL,
  `state` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `baoxiaobill` */

insert  into `baoxiaobill`(`id`,`money`,`title`,`remark`,`creatdate`,`state`,`user_id`) values (1,'3000.00','test01','å‡ºå·®å¹¿å·å¼€ä¼š','2019-03-11 21:32:46',2,5),(2,'4000.00','test02','å‡ºå·®åŒ—äº¬å¼€ä¼š','2019-03-11 23:26:10',2,5),(3,'6000.00','test03','é€ç¤¼ä¸Šçº§é¢†å¯¼','2019-03-11 23:49:05',2,5),(4,'7000.00','test04','è¯·å®¢æˆ·åƒé¥­','2019-03-12 00:26:49',2,5),(5,'6000.00','test05','é€ç¤¼','2019-03-12 09:21:12',2,5),(6,'7000.00','test06','å‡ºå·®åŒ—äº¬','2019-03-12 20:09:00',2,5),(7,'8888.00','test07','å»å‡ºå·®å¹¿å·','2019-03-14 11:08:26',1,5),(8,'3000.00','test07','å‡ºå·®','2019-03-18 13:55:33',2,5),(9,'8000.00','test08','å»å¹¿å·å¼€ä¼š','2019-03-18 14:08:36',1,5),(10,'6000.00','å‡ºå·®æŠ¥é”€','å‡ºå·®','2020-11-30 16:58:00',2,5);

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role` int(2) DEFAULT NULL,
  `manager_id` bigint(20) DEFAULT NULL,
  `salt` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `email` (`email`),
  KEY `FK4722E6AEC8CB2A1E` (`manager_id`),
  CONSTRAINT `FK4722E6AEC8CB2A1E` FOREIGN KEY (`manager_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `employee` */

insert  into `employee`(`id`,`name`,`password`,`email`,`role`,`manager_id`,`salt`) values (1,'danny','8914684fb7da95dc7b8f6afa3f88fe67','wangzhongjun@163.com',4,1,'eteokues'),(2,'jack','8914684fb7da95dc7b8f6afa3f88fe67','fengxiaogangManager@163.com',2,1,'eteokues'),(3,'mike','8914684fb7da95dc7b8f6afa3f88fe67','fanbingbingManager@163.com',2,1,'eteokues'),(4,'chen','8914684fb7da95dc7b8f6afa3f88fe67','fengxiaogang@163.com',1,2,'eteokues'),(5,'zhang','8914684fb7da95dc7b8f6afa3f88fe67','fanbingbing@163.com',1,3,'eteokues'),(6,'li','8914684fb7da95dc7b8f6afa3f88fe67','li@qq.com',1,1,'eteokues');

/*Table structure for table `leavebill` */

DROP TABLE IF EXISTS `leavebill`;

CREATE TABLE `leavebill` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `days` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `leaveDate` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK62FCB35E2B4D7140` (`user_id`),
  CONSTRAINT `FK62FCB35E2B4D7140` FOREIGN KEY (`user_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `leavebill` */

insert  into `leavebill`(`id`,`days`,`content`,`remark`,`leaveDate`,`state`,`user_id`) values (10,5,'æ—…æ¸¸','ä¼‘å¹´å‡','2018-03-21 08:26:55',1,5),(14,7,'ç—…å‡','è°ƒä¼‘','2018-05-17 08:46:25',1,5),(15,1,'äº‹å‡','å¤–å‡ºåŠäº‹','2018-06-27 08:39:58',2,5),(16,15,'æ—…æ¸¸','ä¼‘å¹´å‡','2018-06-27 09:02:17',1,5),(17,15,'å¹´å‡','å»æ—…æ¸¸','2018-11-08 14:30:46',1,5),(18,20,'å¹´å‡','å›å®¶ç»“å©š','2018-11-12 14:57:25',2,5),(19,10,'è¯·å‡æµ‹è¯•01','å»æ—…æ¸¸','2019-03-14 09:51:12',0,5),(20,8,'è¯·å‡æµ‹è¯•02','å›å®¶è¿‡å¹´','2019-03-14 15:22:45',2,5),(21,8,'è¯·å‡æµ‹è¯•02','å›å®¶è¿‡å¹´','2019-03-14 15:25:28',0,5);

/*Table structure for table `sys_permission` */

DROP TABLE IF EXISTS `sys_permission`;

CREATE TABLE `sys_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ä¸»é”®',
  `name` varchar(128) NOT NULL COMMENT 'èµ„æºåç§°',
  `type` varchar(32) NOT NULL COMMENT 'èµ„æºç±»å‹ï¼šmenu,button,',
  `url` varchar(128) DEFAULT NULL COMMENT 'è®¿é—®urlåœ°å€',
  `percode` varchar(128) DEFAULT NULL COMMENT 'æƒé™ä»£ç å­—ç¬¦ä¸²',
  `parentid` bigint(20) DEFAULT NULL COMMENT 'çˆ¶ç»“ç‚¹id',
  `parentids` varchar(128) DEFAULT NULL COMMENT 'çˆ¶ç»“ç‚¹idåˆ—è¡¨ä¸²',
  `sortstring` varchar(128) DEFAULT NULL COMMENT 'æ’åºå·',
  `available` char(1) DEFAULT NULL COMMENT 'æ˜¯å¦å¯ç”¨,1ï¼šå¯ç”¨ï¼Œ0ä¸å¯ç”¨',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

/*Data for the table `sys_permission` */

insert  into `sys_permission`(`id`,`name`,`type`,`url`,`percode`,`parentid`,`parentids`,`sortstring`,`available`) values (1,'æƒé™','','',NULL,0,'0/','0','1'),(11,'æŠ¥é”€ç®¡ç†','menu','','baoxiao:manager',1,'0/1/','1.','1'),(12,'æŠ¥é”€ç”³è¯·','menu|permission','apply_baoxiao.jsp','baoxiao:apply',11,'0/1/11/','','1'),(13,'æˆ‘çš„æŠ¥é”€å•','menu|permission','myBaoxiaoBill','baoxiao:billquery',11,'0/1/11/','','1'),(14,'æˆ‘çš„å¾…åŠäº‹åŠ¡','menu|permission','myTaskList','baoxiao:tasklist',11,'0/1/11/','','1'),(15,'æµç¨‹ç®¡ç†','menu','','baoxiao:process',1,'0/1/15/',NULL,'1'),(21,'å‘å¸ƒæµç¨‹','menu|permission','add_process.jsp','baoxiao:publish',15,'0/1/','2.','1'),(22,'æŸ¥çœ‹æµç¨‹','menu|permission','processDefinitionList','baoxiao:processlist',15,'0/1/21/','','1'),(23,'ç³»ç»Ÿç®¡ç†','menu','','user:manager',1,'0/1/21/','','1'),(24,'ç”¨æˆ·ç®¡ç†','menu|permission','findUserList','user:query',23,'0/1/21/','','1'),(25,'è§’è‰²æ·»åŠ ','menu|permission','toAddRole','user:create',23,'0/1/21/','','1'),(26,'åˆ é™¤æµç¨‹å®šä¹‰','permission','delDeployment','baoxiao:remove',15,NULL,NULL,'1'),(27,'æŸ¥çœ‹æµç¨‹å®šä¹‰å›¾','permission','viewImage','baoxiao:viewimage',15,NULL,NULL,'1'),(28,'è§’è‰²åˆ—è¡¨','menu|permission','findRoles','baoxiao:rolelist',23,NULL,NULL,'1');

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `id` varchar(36) NOT NULL,
  `name` varchar(128) NOT NULL,
  `available` char(1) DEFAULT NULL COMMENT 'æ˜¯å¦å¯ç”¨,1ï¼šå¯ç”¨ï¼Œ0ä¸å¯ç”¨',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_role` */

insert  into `sys_role`(`id`,`name`,`available`) values ('0aeddab9-c1bb-4871-8f1c-68bc5f675fb0','ç½‘ç®¡','1'),('1','æ™®é€šç”¨æˆ·','1'),('2','éƒ¨é—¨ç»ç†','1'),('3','æ€»ç»ç†','1'),('4','è´¢åŠ¡','1'),('f7a38138-8210-4780-beef-aef49d40ab36','ä¼šè®¡éƒ¨ä¸»ç®¡','1'),('fd7e5640-05fe-4a07-b9f7-cee67a83bdbc','BOOS','1');

/*Table structure for table `sys_role_permission` */

DROP TABLE IF EXISTS `sys_role_permission`;

CREATE TABLE `sys_role_permission` (
  `id` varchar(36) NOT NULL,
  `sys_role_id` varchar(36) NOT NULL COMMENT 'è§’è‰²id',
  `sys_permission_id` varchar(36) NOT NULL COMMENT 'æƒé™id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_role_permission` */

insert  into `sys_role_permission`(`id`,`sys_role_id`,`sys_permission_id`) values ('003f56da-70ea-4c46-8f93-fe7fa01fd474','f7a38138-8210-4780-beef-aef49d40ab36','14'),('067b999b-b6e6-4926-abd6-7e2fcb3824cd','f7a38138-8210-4780-beef-aef49d40ab36','23'),('07918238-5657-46c2-9ef7-5282d13e4ddf','2','25'),('07e0fec3-e4b6-47fc-870e-74104cfd4de5','fd7e5640-05fe-4a07-b9f7-cee67a83bdbc','27'),('0ad8be3e-60a9-4577-a9bf-c58281348b08','fd7e5640-05fe-4a07-b9f7-cee67a83bdbc','25'),('1a75c577-707e-4dd0-b017-543de9ceb8a0','3','22'),('1cac62ba-f78a-4db3-82cc-5d3b5a6fc8c9','1','13'),('2284e4cf-57c2-4424-b6d9-dc57928563b9','2','22'),('29c732ec-cc17-4889-8b78-bc031cf765a3','0aeddab9-c1bb-4871-8f1c-68bc5f675fb0','11'),('2a0e0f4c-56a9-4bbb-8e76-0f7052d3ffbe','0aeddab9-c1bb-4871-8f1c-68bc5f675fb0','13'),('2c68ab35-70ab-4628-90dc-8ef8aa3fd447','3','14'),('2cae86b2-713c-4f10-98a0-f876c4fe28ac','2','21'),('33e21e30-1f6b-44be-af39-19b378355047','f7a38138-8210-4780-beef-aef49d40ab36','11'),('36e047a4-4bcf-45a6-a3bf-4f3c7f60339a','4','11'),('38bc5d80-fce8-457b-9dad-0be567a76e7b','f7a38138-8210-4780-beef-aef49d40ab36','15'),('3f56ebe5-afc3-4613-97bc-0ff2b09f2bd6','0aeddab9-c1bb-4871-8f1c-68bc5f675fb0','15'),('4000c6fb-39d2-4c84-b23a-a379338f70d8','2','15'),('436707f4-4ffa-4313-8fc2-f82bb6e58e5f','fd7e5640-05fe-4a07-b9f7-cee67a83bdbc','15'),('43cc119e-21d7-4b64-9aef-88caf773de27','3','11'),('4621be9c-d8a1-4ce9-a108-d5f5771a3a5f','3','27'),('465721b7-3607-4777-8a55-6014a8c424df','3','28'),('4a358483-401e-40cf-8f3d-5653017c6def','fd7e5640-05fe-4a07-b9f7-cee67a83bdbc','28'),('52c0fdef-29b5-4a5e-966d-d1c444d80c31','2','14'),('55561cb8-1ce3-4829-84a3-8191eabcb48d','3','25'),('5902bdb3-1f23-48fa-b2d1-442382463cac','1','12'),('5a620883-3bf0-4548-8dc5-b4757cf2078c','fd7e5640-05fe-4a07-b9f7-cee67a83bdbc','14'),('65bab90f-3a4d-4fa1-a19c-76ada545ed78','2','11'),('67cbd6ae-e75b-41dc-8261-cf3ecb29ff55','3','23'),('752f110f-5c42-4ff2-b805-edbaa82c4386','3','24'),('7cc90728-96ae-4d04-aebe-f3457d809f51','f7a38138-8210-4780-beef-aef49d40ab36','12'),('8f7840dd-da39-4d41-81a9-b56c0d0e568e','fd7e5640-05fe-4a07-b9f7-cee67a83bdbc','22'),('9e68e3b0-2a7f-4624-ac20-7601a84a074f','2','23'),('9ed8df8f-5c9f-474b-a812-e72f63ad12d3','fd7e5640-05fe-4a07-b9f7-cee67a83bdbc','23'),('a1f20773-9ac8-4872-85ee-86c5b140d681','4','14'),('a76c5315-7354-434a-9681-2ed182ca1816','0aeddab9-c1bb-4871-8f1c-68bc5f675fb0','21'),('aa43c928-65ae-4968-9dc0-5ff1bc220b9e','fd7e5640-05fe-4a07-b9f7-cee67a83bdbc','11'),('acfd1c90-f984-4ff5-a760-82875955c1a2','fd7e5640-05fe-4a07-b9f7-cee67a83bdbc','24'),('ad1ca09a-271e-4a55-be78-1e2a84f04331','2','24'),('b6c121c1-db94-4af3-b0a1-4e93fbf776b7','f7a38138-8210-4780-beef-aef49d40ab36','13'),('c54124b6-b836-4314-aa69-91cb2cf3823f','fd7e5640-05fe-4a07-b9f7-cee67a83bdbc','21'),('c6fcdfb9-0bfb-40a1-8665-12244101b1ea','1','14'),('cea67be3-3ad8-4813-ab03-683ae63f8b27','0aeddab9-c1bb-4871-8f1c-68bc5f675fb0','14'),('d659839f-be19-4a48-af8c-1055222d5c39','3','21'),('d929f3a8-bd46-45e9-bb82-ffc997433a45','3','15'),('e3f7e8a2-3ee0-4887-8e58-b4add1789eb8','0aeddab9-c1bb-4871-8f1c-68bc5f675fb0','12'),('e7fce79d-8164-4538-9671-2c8bfa777e99','1','11'),('f957edca-0575-4694-ad94-46fc4d76b5c5','f7a38138-8210-4780-beef-aef49d40ab36','24'),('fb599643-f9e1-4769-a5d3-21aed672f605','f7a38138-8210-4780-beef-aef49d40ab36','22');

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `id` varchar(36) NOT NULL,
  `sys_user_id` varchar(36) NOT NULL,
  `sys_role_id` varchar(36) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`id`,`sys_user_id`,`sys_role_id`) values ('1','danny','3'),('2','jack','2'),('3','mike','2'),('4','chen','1'),('5','zhang','1'),('6','li','4');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
