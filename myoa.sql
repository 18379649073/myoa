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

insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('2',1,'baoxiaoprocess.png','1','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0�\0\0I\0\0\0��\0\0HIDATx���l��}p!�c%�gumceHm5+a]|�R�B��i�i��X��\n�\\�.��U�%7��C�)C\\�46x�P\\\"�I�5vƥ����Y��Dq솩픉턞�l�Nw�=\'�MR�������8H�Ç_�y���}�p�\n\0\0\0�L�=\0\0\02@z\0\0�;�\0\0��G\0\0\0��\0\0�Nz\0\0�;�\0\0��G\0\0\0��\0\0�Nz\0\0�;�\0\0��G\0\0\0��\0\0�Nz\0\0�;�\0\0��G\0\0\0��\0\0�Nz\0\0�;�\0\0��G\0\0\0��\0\0�Nz\0\0�;�\0\0��G\0\0\0��\0\0�Nz\0\0�;�\0\0��G\0\0\0��\0\0�Nz\0\0�;�\0\0��G\0\0\0��\0\0�Nz\0\0�;�\0\0��G\0\0\0��\0\0�Nz\0\0�;�\0\0��G\0\0\0��\0\0�Nz\0\0�;�\0\0��G\0\0\0��\0\0�Nz\0\0�;�\0\0��G\0\0\0��\0\0�Nz\0\0�;�\0\0��G\0\0\0��\0\0�Nz\0\0�;�\0\0��G\0\0\0��\0\0�Nz\0\0�;�\0\0��G\02�R�lll?~|aa!���������r���`�I�\0d@\Z��899���$+�:��;��Jm|�_���>���855577�����d`4I�\0Dm{{;��\'�1I��w/tw�}ϭ��j.�+\niO\0F��@�N�8�D�;��J���8���7�x�رJ���#\0��!=�$�-..������|���|�T*��P\0`DH�\0D\'��sss���}G��Y���Ŵ\0����,..<:�?ŚHa����ˉ\'���q����~X\0�y�#\0�����r�����~��ɓi?8\0�6���$���N<=>��S�]7��\0p�#\0����XXXxt���|�7WWW�~�\0�a�#\0����~�cO�����~�\0�a�#\0Q(��SSS�k�n���J��@VI�\0Dammmii�P��\'n�mee%�\n\0Y%=�cǎ�<y�P��w~%�ϧ�@ ��G\0�0??��/~�P��c�?~�u3i?P\0�*��(�wu4��Ϝ���L��@VI�\0Dazz��\'�:�����	o|\0�\'o�\0Davv��<\"=@����C��G�\0\'=����?��g5=�u�=7�pC�\0�Jz \n�����ojzL�魷�j�\0�Jz \n�bqff�P��ѣG777�~�\0�U�#\0�8��<����T�RI�Q@VI�\0��P?��{��d��\"\0d��@,*�����a|���g�^w�L�TJ�!@�I�\0Dd}}�}����#\0DHz .�����:��Fǯ?�ȑ#G�?s6�G\0�&=�r�|�\r7��9O?�l{��\0d��@tvvv�\0�D��G�_~�{���/���\0`H�\0�h{{�ȑ#w�}�A>��DP�\0Ez R�r��o���>��3����?s��>����_�~\00:�G\0�U�T������&i0Ʉ!��>��d��|�7�̙��`�H�\0ĮT*-//OMM��{ޓ���8ݔ�Kn�����[�en��W��b�S�$=�\r�Jecccii�ȑ#��\\�D����r���4`dI�\0dU�$Ӟ\0�������.\0��}���`����U�#\0��]\0�Jz�a�@VI�\00L�w�*�\0���.\0Y%=�0y� ��G\0&�\0d��\0��}���`����U�#\0��]\0�Jz�a�@VI�\00L�w�*�\0���.\0Y%=�0y� ��G\0&�\0d��\0��}���`����U�#\0��]\0�Jz�a�@VI�\00L�w�*�\0���.\0Y%=�0y� ��G\0&�\0d��\0��}���`����U�#\0��]\0�Jz�a�@VI�\00L�w�*�\0���.\0Y%=�0y� ��G\0&�\0d��\0��}���`����U�#\0��]\0�d}}=	�����\\.�azz:���o|���N�S�\'=�%����\'Z�t�MiO\r\0F��@�T*�+���1:^������r9����Ș�~���{����������Jړ��\'=�=�\\sM-:�r�-333�J%���Ȟ�~��W\\qE������#\0��@&�|�͵���D\0`\\H�\0dR�TJң/�\0���Ȫ$=�=\0#�w�M�RY___\\\\���333�߾8&�Ǟ<kkk�/�q =Ѓ���$5%����o���;{����9�Ǟ<�N����[��$ɐio\08\\�#\0A������ѣG�x������3O\'2yrJ�R�\n\0��@wIt��r��Ϝ�=g�7���/�p�\r�b1��\0�Bz����������y�q�o����\\\0p(�G\0����<z�ݻ*F��������;io4\0<��N*����̓Ow/�h��3gt�������#=����������������\Z�q�m�vee%�M\0&=����©���G�w��j����ޭ~�\\��s���\\X��W����=_���꽕�]/T��R�?����}(� ��x��V.�K{���I�\0t2;;��#�^8[g�ճ���]���|��j���ˏO��\'�޽��n��s�\'^�+��.T��/�;�xvǙ��NNN���\0`��G\0:���z�٧v/���$�p�z���.\\���|�������\'~�B�����s���V������^z<3�#y��n8\08�m\0t��\0����׳�ϾX=�������?�����\'�WJ~ݽT=��*�yࡦێՐ=��\0�d/�����/V�~���3��j���s�o{���k\'&&��+�6����6�v�������@\'{	���}r����{������?��\\s�k_��7\\�Ӌ�Uz���M��!=0z����^,�G�닗�?�\\>���K�;��y��w��ϼ�꩟�����/U�g�U_8w��wm��t۱\Z�#\0��{\0�$)��G-%����W����=���_������~�R�A���j�����ێՐ=��\0�)�o��k�����lm��}z����k���{��竧���ߺ��om=������O��Ͼ�����G\0�m\0t���8~��?4�����M7�!=0z����^z|��uH�\0��m\0tr9=^|��uH�\0��m\0t���6z�#\0��{\0��������\r�N�����^������@\'{��4:�j�u�����o�Y�@��󹾾^,��\r`0�G\0:E���S�Q3$p�$��2��o�������Cz,�����k���,@�E�#��{��Gk�檫�:u�Tӵ{�诛F�;\\��2i��:;�K�MK��ƻ����oۛԟÓ\'ONNN�֐�0==]*����`\0�G�qW�T^��Բ�W\\����Gƒ/^�^���Zn�mOt�5dbY�~��u&ɳ����ַ������fffR��\0p\0�#\0����Ƅ�7���@�*�/�ǧ8���i�ο�w/���n���ֳO@ms�|�C��P%=���Ǐonn���_g\0�\'=�.Iq�B!���p���x������7�i����ﴧ���|��%�M�{,��z׻~�g������*�˥�O���/�\"y����OMM%��������a�#@���waaarr�v���\r��+W_}u=�,�I�qgg����\'\ZG�%��.�-���ζ����i��O�D��=nnn^w�uoy�[j���+k�u��*I�}�^I�\01*�J�ÌC8TR.�k�fvv��~�ג������E��j���_���m�p���f�ƛ4������IN�b������$�$�noo�fe?ɓ�l�Ɲ�@�#@t677�W(�sw���w\'\'\'���gffVVV��<�kzIw�L�]�֔�:��֔�\'�}�c�X\\[[����%a~qq1�iO c�G��$�\"���ɝ&�t���E��6��K:��:z] d���90��.j?7��|Ȕ���U ����V���m\0I�[.���䐗�ѥb�h���mG���ζ�vX���kZ>pJio:�H^n���� ��6������v0d/\Z}��_�J�j��~�\n\\��M�\'�u���\r;̭�2��Eڛ��WWWӞ@fxo�������Bڳh����i���B/8��|�k�pm�2m\'�y�M��x��\"�MGw;;;���i� 3���b~~~ss3�Y4ۋF���+9���F�k�=��q�h�<��ź��~˷���Uio:�Dx� Z��\0�P*����ӞE{��1��!=f������8?�Z}9=~��uH�Y�K B��\0���Qzm�� ��6�(���B���,�HRХK�\Z��1+�����Lڳ\0��m\0Q���{��[F�Cz� �r	����b���,��K�;F�C � �r	����r���,��K��4zI��X\0��K�(DۿNNN��⃗.}��iD�AiecR.�m�:33���٥K�=�h7(�l,�@�%@��_����t���׍��͝?�%� 6�%@��_O�8�����X��Y����Rڛ�PѾ�\0b�\\D!���X,���܋��/U6����io:BE����r	������T��2����_\\�O{�у�_}\0QQ.�s�Z�T��_���o��CF�Q*�9;�s��]io4z� *�%@\"�_wvvr����lT���~#��I�.>���7���\0�\\D!��ukk+	�\'N��j�A�ull|rvv�P��io(z�� �%@2ѿV*����|�kk��T�r�z�(������[\\<���O~N{яL��\0b�\\D!C�k�PXZ����?5�����U���Ndڛ��Md���.� \n��>�NE« �r	�k<i�	 �r	�k<i�	 �r	�k<i�	 �r	�k<i�	 �r	�k<i�	 �r	�k<i�	 �r	�k<i�	 �r	�k<i�	 �r	�k<i�	 �r	�k<i�	 �r	�k<i�	 �r	�k<i�	 �r	�k<i�	 �r	�k<i�	 �r	�k<i�	 �r	�k<i�	 �r	�k<i�	 �r	�k<i�	 �r	�k<i�	 �r	�k<i�	 �r	�k<i�	 �r	�k<i�	 �r	�k<i�	 �r	�k<i�	 �r	����1�z���3(v$�@�%@����ֺd�&ޣ�Qz,�ȎH��B���54�8xG2J��ّ\0)�\0Qدm{�1d�^�(�F鱐\";@ � \n=�ǐc��}`u�\Z�Qz,�ȎH��Bxz��w�m��a?v$�@�%@z��j��H�ȎH��B�����S��F鱐\";@ � \n!����d�)�#R.����bd�e�5Bؑ\0)�\0Q�п~f��zȐQz,�ȎH���~�&Ɛc�=�QF��c!Ev$�@�%@�w�]\rv�)\Z��B��H\0��K�(t�_�~x��\r{�^ّ\0)�\0Qп����@ؑ\0)�\0Qп����@ؑ\0)�\0Qп����@ؑ\0)�\0Qп����@ؑ\0)�\0Qп����@ؑ\0)�\0Qп����@ؑ\0)�\0Qп����@ؑ\0)�\0Qп����@ؑ\0)�\0Qп����@ؑ\0)�\0Qп����@ؑ\0)�\0Qп����@ؑ\0)�\0Qп����@ؑ\0)�\0Qп����@ؑ\0)�\0Qп����@ؑ\0)�\0Qп����@ؑ\0)�\0Qп����@ؑ\0)�\0Qп����@ؑ\0)�\0Qп����@ؑ\0)�\0Qп����@ؑ\0)�\0Qп����@ؑ\0)�\0Qп����@ؑ\0)�\0Qп���6���e�H\0��K�(�_��I˨�W�_ظ@直u���}[���\\DA��O�h\r�m7k�m-=�r	�k<i����c�]/_��n0V�K�(�_��IˮX�|�q��J�\0C�\\DA��OZv�������*�`��K�(�_���\'����d.�K~���N�}�߸������A��Oz��r	�k����]�馛666Ҟ\Z=h���c�\0�S.��\rT�T������q���OOO��崧F��G��P.��\r�я~�u�{]==~��^YYI{R��):k@��K�(�_{r�5�Ԓ�-��233S�TҞ=��j���8���� \n�מ|��_��+�\'m~~�_<fN�1�j��;�� ����\0cE�����W7�|s-=�=*���:�\0�J�����W�R)y�|QG����j����]�A���mƊr	�k<i�	 �r	����Je}}}qq1����̄|�p$%�=y���|_H�Md���.� \nY�_777�ԔD��o���;�|�������H{��:u��[oM��$C��q�SV^}\0�S.��Z.�����=�ēO��=o4���y:ɐɓS*���P�,�W@$�K�(D޿&�1����g?s~�������p�\r7�Ŵ7����� \n���KKK{��%����/�x�/����M�>�x(�\0Q�����<z�ݻ*F��������;io4z� *�%@��_+����̓Ow/�h��3gt�����2C�}��F��B�����������������\Z�q�m�vee%�MG�h_}\0�Q.�m����p�s������G��Z����w��8W}�\\��3V?��?{�{�W�o�zo�z��/�T��w=��cJ=ȥ28������t����� \n�������<������L�z�R������P��������ܻ�ڭ>q���K�b��؅���C{�ώ�8s����ɴ7��}��F��B������3�>�{�Lm$�|�b����W]�t��?���������O�ޅj����v�?ܭ���/�����xf<G��V6@ � \n���{	���H~={�����_^�\\.����������{����K��{��j��X�h7(�l,�@�%@&\'\'+�Jڳhc/�����/V�~���3��j���s�o{���k\'&&��+�6����6�v��@�!6@ � \n333�b1�Y���\0����\'W�}����?x�z�#y�5׼�u���?���W���8�t۱\ZI��X\0��K�(�r����g��^,�G�닗�?�\\>���K�;��y��w��ϼ�꩟�����/U�g�U_8w��wm��t۱\ZI��X\0��K�(���B���,�H\Z�~T�>;	���Vt����w�y�x����M����\\����*�g�U��x׽�5�v��@�!6@ � \nKKKkkkiϢ�����Ư}���?����s�靻|���=�����_<����~��O�����У��>��>��[ޗz������\\D!��I�L{m��6�_��M�\'�}o�\r�j$bcR.����3;;��,��K��\Z��$Cl,�@�%@,�<q���x���!�d��H��������rڳh���6zI��X\0��K�XT*����R���D^e/=���u$bcR.\"R(��|ڳx����}��!�d��H�����ǣ���^z,5��v��|�#���x���\0)�\0�YYY���/��iO��2R��_ױ���}�G��w]x�9�, ��4MLz\r6@ � F���333ǏO�� �2�_7�v���˛~h�U�m�갞Γi{�֕���~����jצ��gcR.\"U.����d�����B���4�������M7麆��_O�M��L�2������H2���\\D�R�lnn&�1��7���jM��m����q�����~�j�����p��?|Ji�;���\0)�\0t����l\Z����ܺ|�5t]�u�!w��q�ni������p}ɴ7�l,�@�%\0���\'�c���D�M7i�����t��um�o���ΏK � �r	@\'{�BF}ɦ�t]C�����%�л����	��@�!6@ ��N��[�_�4��.:��~�Oۮ��B�q$�X\0��K\0:��H�m���˗7������u�����d��!�m��:O[ � �r	@\'�3ҥb�h���k�mm]���!����m��;�Kۇ�y�I��X\0��K\0:��H�iM��mHk��omh]U�b]�m�|u��wm�\Z��0��7�l,�@�%\0��E��l���˗7-���4����.�tU�_�.l�x��Iڛ�P6@ ��N���㍣����Kv��v�+y��-y���;����Zg����[�@�!6@ ��N���cF�C � �r	@\'{���F�C � �r	@\'ң�8�l,�@�%\0�$���K�\Z��$Cl,�@�%\0���o��$Cl,�@�%\0�����!�d��H������M��!�d��H������_|�ҥo=\r�$Cl,�@�%\0����|�;v��#FOC � �r	@\'����y�R��F���Ο��Φ��%=R.��ĉ++H=�ek���O,--���%=R.�X,���܋��/U6����io:BI�\0��K\0�8~ٱKկ!��������7\Z=�)�\0tQ�T��_���o��CF�Q*�9;�s��]io4z =R.�ngg\'�{���F��m�7����B�3io.z#=R.�����\'�Y����:66>9;;S(��7=�)�\0��T*++K��;���M���j��Q.������xta!����&��#@ ���\n���<=�SLLLM]����$@��Y�߄�F�ఔ��C]�p�S�رc;;;C�#�\"=R.8{\'���]��O��ܜ�oa�#@ ���+\nI�*��z/Ck����������p�!�)�\0�������al�:��yyyqq�R��N� �r	� ���,--\r\'b\r��___���+�JC�_��H�`0�ĸ��x�ĉ��c*M���v.����\Z�]sH�G�@�%\0P.�������0�4���T*\r��rx�G�@�%\0U;���ǥ����.//�5Hz�\\p �9�j[�7�����9?�*�	 +�K\0�����b|������L����N��1�H\0��\\Ч\'N��\r�4�ItLd�PH{\"�)�	 ~�%\0=K������J�ӈ�鯝4huu5�Џxv$��)�\0�&IJ���kkkiO$��yyyh�u�\0Ŷ#DK���b1�OiF��\'�:�ϗJ��\'B\"ܑ\0�\\jkk+���s��8���YJ���v�!T�;@��K\0����������\"ڦ�v�6y�ҞA�ݑ\0b�\\�]�Wm+�?y��g,�\"�	 *�%\0]�pzն�o��Խ���[Zſ#DB�`_�^��L4��|�X,�=���	 �%\0�%�\'�=���iOd_Yi����s�\\$\'��UVv$��)�\0����O����\\.\'Q��ɓiO�62�#�K�����F�����5����v�!2�#�E��UVWW2�p����<yr~~�yt���	 �%�m!m�AZ��h+[�O�z�ر���g*��\'�B!��E��౒�	`��K �j=_r���o�v��:ߤ�|�Xj�W���e��/�sssiO�˲�#�r	dUc÷_��9n�;�|k�m̐�O��O��V���J����p���A����L?۝��C,�Ȥ�no��|�]�/6=����#���O�L�^��h������x�2m�;uX����C�!;�p��\\�s��r	dO�#���wmj[Cf*i���w�������?�j[������\'�X,������G��\n�.�Ȓz˻_+�6\r���]���%��a�G�������Y?���4���۹\\nkk��۶��{Z,��y�S������c͗~�O�,���>�̎pؔK ۺ�}mCc=j�]C����k�����w���|�ر�n�Qj�����{=k�~�@����K��oW�􃭹/��va���.��(�H\0�J��-�m팫���ο���~�nG�v����Ճ�*]#��\'��؞����~�P�}�u7k}]t�ǞN�����#���]>�X���o�v$�ã\\�G�jm��K�!Y�0�]����J������l�O�<�����8q�g�mh���v����I�k	��ʁ����`$w$�à\\��1��\Z�1�������~2�&�=�j[���\n�\\.����ӭ���lP���\\�|�|��E�b�\\ٳ������f���ou�6�vzՃ��36#��\'���!�>�\'��%PM+=^�����_@J�\0�S.�Ljm�������������[e���m�vӟl����\'N.���ܚ���B��%{��#@J�K ��;����m�=v�a�k��!w䯲����ӫ�5M��+�J�k�s~H��Ys\0��\\Y���zm?�׶Qn�v���un�=�CZ�:��~�*[Ƥ�___���+�Jm����D:,;����\Z�g��:�� r�%�Ȫ}�`�=Ҟ�a��{{;��mmm�^u����#e��\\>d����w9��>�ώp@�%�h����/o���j�K�R>�_[[��z�����@��S����K�A�Bannn�N��ָ5��Jeiiiyy9퉌�qۑ\0��\\������;�j[�����������ܑ\0��\\���������N�9bƶ���ܜ�����I{\"#blw$�^)�@�4�j��;��6�?#��1ڧWmk���$:&2��iOd����Ȕ?�`k�K�,�Q�ӫ�5�M�����WWWӞH���N����;��]6�o�G�X����ӫ���O,//��g��	 �r	dH�׊7^���J>�0��И����O�4�5kkk�|�T*�=���#R.������W���x�����$6���75�u��D���N{\"�dG�\\�q9��#�+9���ĉ������EM�R�4777n�:v$�@�%�Q��J��o�_YYI{\")��7��w׎�+;@ �Ȩz�����δ�����Dҧ�o�ĉc�y�>ؑ\0)�@v4~�F�	t��;j�W-\niO$\n���lll$�I���=�l�#R.�,�|��e���r<���1ΧWmK��A��${��haG�\\dØ�^�-Mg�ޒ�3\'O�L{\"��#R.2`uuu�O�ږ�?ı=v��H\0��K��%����rڳ���?�ɓ\'����H��W���>y���4��SQ������\'��mM��(�\0�*��|~ss3�ī��D����50�.�wԌD턽���iO$:��|\01P.b����4��uv�Ã����.�V�T*���ǏO{\"q��FH�r	�ڗ��J��\'������y��MIz\\XXp���nG��S.Ⲻ���ԡ�����~���������X,�=�(dk��H���ӫ�������Ǒ������\n�B�I��ok�AQ.�P�T�^�W�4�~U���w��8��Q�FN�[��-0d�%@�J���ܜӫ��m�k��C�l��sz�F�T*�c{ҞH�2��I�H�ӫ�m������KzJ�#v���ɓ�|�\\.�=�t��� M���I���%��/.6�:���\n�B.�����-0�%@jN�<9???�|����!%���=6)��|~cc#���lA�æ\\�cyyy�����:4�]�@�Lt<��ďr����p�ĉ�\'2T#��\0�r	0l�J%i�WWWӞH楘[�������8>_::J��P)�\0CU;��~8�0Rzl�<j�ρ�tʹ���dG����mpx�K��qz���������D�	 �r	0$�B��UK��J�R�Ӯ���=��eG�\\C�;���i���R�,---//�=�CdG�\\�������s���hVWW�������	 �r	p��ĸ��8n�04��a*\nsss;;;iOd��H\0��K��R.������z�Y��!K�c 777ӞȀّ\0)�\0�\"�s��8��2E���+�����#�m�v$�@�%���>�����Mӟ������ő�S^;@ �`��^uh4�)Z__���R)��	 �r	0HN�:L��tmmm�r����\'rPv$�@�%�`Ծ��U�Iӟ�R�477��SCّ\0)�\0P;����Z�/��Ծ�fyy9��ώH�8�b�877W(Ҟ�����cuuuaa!��kG�\\H�O�F�+���������\\_v$�@�%@�j�������M�xގH��Ӊ\'F�+�H��r����WWWӞH�H\0��K���N������DƝ�?Z���ǎ����ؑ\0)�\0�qz�xh�cv���|>_*�ҞHwv$�@�%@�^5*���mmm%�����\'҅	 �r	*i�3zJ�Q��_�?\\���ӞH\'v$�@�%@�ڷd�cx�Cӟ	�Jeqq����iOd_v$�@�%@w�oB��)@Ƈ�?C�������z;@ ���cǎ-//�=���g���F>�/�iO��	 �r	����UO�<��DhOӟ9��۹\\.��Nّ\0)�\0���|>�����Dؗ�?�\"�O;@ �����U����1��ϨJ�rlO$KlG�\\4szլ��g�ɓ\'���c8��	 �r	��;�cmm�񒤣uzլ��g]�P��r��������ϓv$�@�%0���ַ&�c�[]^^>v�X�S\"�����xcc#��T*����]\\\\��H\0��K`|�{�I�x�W9r���[XXX]]M{R�@�?\Z��r��;~��-�ܒlӟ�ɟ��G;@ �_�^{�D�����ir�E�?2��b����7��7~�7�y�v$�@�%0�>��O5Fǟ���z�{߻�����聦4�����ī���o��ؑ\0)��8*�˓��I��7���Hr�������HN�H8M�h�����������+�x�;�1�	ؑ\0)��8�����^}���_����������b1�I�3M�h(��KKK��ӳ��7�x����Ͽ����[�o5���ؑ\0)��8��������w��Bc�i�GI�b,\nǏO��/��/%7	�ùk;@ �;�J��UG���%/�|>?�;�#R.��%�j}}}qq1i�fff&�U�ؓg ��kkk�2r��,Ssj� C���mnn&L���~��w�y�c�?~~ww<G�ؓg�ԩS��zk��/��䍤វ���r����ɿo|�wvvҞ\Z=Ps� ��Gw��U=z�\'�8�{�hO?�t��%ON�TJ{C����Gon�馍����F5G��Kz����q�\\�>���������n���u\"Q�T������x���OOO��_&�9j�i�#������6�%����/�x�/���x�G?��׽�u����xee%�ID�Qs�L�a|mnn=���#d��o���n���7\Z/��kj��[n����T*iψ��5�:��T�m\'=��Ow/�h��3gt���N���~��W\\qE������c&�9j0�GSkkkKKK�^�����Q���o5V����OH���o��Ǵ\'B5G�F��cjaa�����۸w��j����ޭ~�\\��s���\\X��W����=_���꽕�]/T��R�?����}(��*����\\.����e�R)���d����\0#@z�15;;��#�^8[I~�Z={��܅��W_�V������k~b��O�V�8W}�j�R}�B���⡽Cg�p�9����dڛ�KvŴ�@(5G�F��]SSSS�<���3��4g/\\���x���.��\'_�_������߻P�>���n����r�������ɝ�!���R�lll?~|aa!�����䒵�5_�35G�F��cj�{�>�_�^�>�b��ŗ(�������w~������|�R��^�w�5�v��N.-IhLc�?���r\'O�t\n��9j0�$S{�����˝����/T���[��?wn�mo��x����{�������ێ���\r_�P���<�J��̌��F�Qs��$����ƞ��ڧȞ}����?x�z�#y�5׼�u���?���Wur�=p��c5tr�T�T���Z�.��o���S���ί���>��G�6-���P.��~�L�Qs��$������������+��<�R���v�~�?�3o�z�\'����K��s��]��][�5�v��NnhJ�R�!Ǐ|�7{����O?��|����Ӎ!����~(\\��9�P�`L%Ʌ?��Z��4s��Vt����w�y�x����M����\\����*�g�U�^�{�k��X\r��p��$��C���|��ؔ!?����o;99�����B�Qs�Q�$��j���7���o~���w��w�>�s����������������ӏ���o��෶z��o�է��g�w��R�tr#�R�4u��m����q���=ɍ�#�Nǚ:5G�F��cj���a���_�P�Ӑ�������c5trC���X��N��\\ѱ6�����Tm=�|>�5��5J���N�Y�ס�;l<��8���/�׶�����kj���\0%	���N��3F�C\'w�r�\\-����0:�F�o ���}d��5J���N�i�ס�;T��뵤799�ēO\r$=>�l�,����i?���9�P�`L�ur?0z:�C���k1�#�́D�����~��ک�����Rs�`(I0��:������)����Qԁ���ښ�B�tL�9j0�$S{�\\�F��qׁ7iZ�0�N���׋�b۫�����GltL�?���=WVVz����q��{��0*@ߋ�7I5���c��V�)�Û�v\'�o���\Z��f��O{�eأ�>Z��W]uթS���=v�X�ڃ�j�u�q�Wj+���k��r������v՛��f����b쵰t(2�,��T��&��\0Y�$����c����x��U��W:���2[����\n\\�����˰J��׼��-���_��_hLk��󵫾��/\r<=>��㵕�������ɓ����˓���K�R\n��x��عδ}�w-/M���M79x-\nyj�J���#�x�{}��͛�m�z���~n�p�9��|��\Z:������\rox�>���iԿ���N<=&�~��}�����om����\\c�d�zz1v�iJA�˿�&}�$��-w�>io:�S�`L�/O�=j7o�����7����{Z���l�:��e�����?��X_�-�����[/�o��T�����<C�D���yJV�����)I0��:�\'���7��xU��7]�a�N���:�|���;�������$Yngg\'�jvv�v��y�0�c�C��}��w��]?��?[��UW]����~zFYO/�e!�&]_��;�0�ZԸL�ڨ�\0��$���kb��{�n��o�U�+oh�گ��ڞ~mZIKo��#m���7]�տ�#	���k������^��~H��;�2����3��V��������]w�[���UW^ye�3���^�jE�����B�T�Z���j��DEI�1����Uߣv��[/�z���k���x��<�M�a���w\'\'\'���gffVVV�0�x���Rm#���?=����G����\0c�?~��&�\'�noo�)#=�\'�׹V�Kce�z�֢��H��KI�15��ء�c��\r\\��W\'7(kkkm��ĉ�-{뭿:�����n��|qq�����$�J�v��\r�5عP�-�U�Η�]�\Z/<xRs��(I0������=j7o����o�߯!�t��~?p�����N�힚�z������o����$%��@�T�/�øa�U��T�^�� *J���}̥�G�J����:,�ta�_�.�L9�M7�fffj�ԩ�\r0:ֿ�1��qY���Wb�k��_U����Ęj��DEI�1���|� ����������vu��𺯧�$�~�io�Q���R۸G����_~�{j�]XXH�!���a�˶�*F��T��kQ�ci�P��HI�1�׾��AF}\r���o�=]�ta�_�.s��[_Oڛn������2~�����z��8)\n\r֖�PX�^گD�Ђ�Su:`-j�[����\0Y�$���k_�{�w�N.�&�-~�m�i]�o�z��t#nuu���&\'\'���=�x=�;v,�7��x��;������a��w����5����\0R�`L�/��������:�$�%�������G����T*���ƚ���\0#@I�1���}��u�䆠X,NMM�S����#:>��S��899Y(�~X�N�Qs��$������b����g������t��X��jbuu5������|�M���5J���#�t�Q�ס������ȉ���~�_\n9���[ni�^Ì�!Q�i�G�.�w�L����\0#@I�1���}��u��igggvv�1\Z%�c���y�54���?}���ƅ���Vx���ƿg�9j0�$S{�܎����\rY�\\>~����d��l7�p�~W-..Fr������@�~7o�<�����\0#@I�1���}��u��R�������l��緶�Ҟ���;������\0�}�5J�����_|�ҥo=\r�\\�*����z#s�\\S^���YXX8y�d$�kB����\n5G�F��c*鶿�?�t�����#P��N�~\0u�C��7��Q�\Z5G�F��cj~~�O7O^�~�������ٴ7�6����������I�Qs��;\rpxN�8����{�l���������7��;D���c�=�9j0�~�O�X����+�_�>l����766��tD-<.6�:���5Q��\0���e�.U�f���������hD-$�uH���w�U5G��/�w\Z��T*�|����[����y�Jw���\\�|W�����z]`���x\"�j��d]�o3�a�����޶��Q�n����KZ�B�3io.���c�b�H5G�2-��`����f�ĉV�>h����O���\n�9�\rE&$=�~����O��F�Qs���=�J�����Ͽcm�ߔJ_�VO���Y_�w��G���io\")j��d����P(,-�����pN��15u��⻓f.��#K�i��\0� =���f�0�9\0��G .��{���D�\\N{\"������E\"�\\q���k�N�7~�7Ҟ0.�G�@�%�O}�S�?z�߼����t�� =R.�X������Zz|��_��w�#�cAz�\\�XXXh<��^��������\'=R.�(����Sؿ�-o�T*iO\rq�#@ ���g>�Zb|���^O�����B���Ԁ\'=R.�(�����O��O���LMM%����7��M�#pؤG�@�%����b�X}��K~v�U`�G�@�%�0Lj@ ���N&5 �r	DG\'��H�����I��\\���ä�\0R.����aRs\0)�@ttr�0�9\0��K ::9`���@�%�0Lj@ ���N&5 �r	DG\'��H�����I��\\���ä�\0R.����aRs\0)�@ttr�0�9\0��K ::9`���@�%�0Lj@ ���N&5 �r	DG\'��H�����I��\\���ä�\0R.����aRs\0)�@ttr�0�9\0��K ::9`���@�%�0Lj@ ���Nn�M�|�M�1a��\\��ɍ��۷i��DMa/�\\��ɍ�^��~�O�@ ���Nn�նo����\0���I �@ ���Nn��t�1�$�0�] �r	DG\'7����*�@ ���Nn�շ�~�������;@ ���Nn��;��Ϋ���#R.����F[�ѱG�	 �r	DG\'7�{$6v$�@�%��h�w��ƎH��399Y�TҞ��k����d�#��7{@ �����L�XL{����Ŵ�D�T���N{\0���N.����N{�a���M?~���ř���g�\r�q�����B���,�����9??��,\0�Az���������,��p|Oڳ\0���N�\0��,��0??�����,\0�Az����3;;��,��W*�fff�� ���ȉs�!X]]]^^N{\0�!=1����R���̔J��\'��##]p؜��W�#�B����Ӟ0�VWW�;��,\02Fz�u��q�_�R�,--��\0}��������ϗ��\'d^RIVWWgff|`�?�#���ͤ�;~��?��P(N�8����T���e��o�#��r9I�I�7??����i�(:\n�����?�\'�O���+�_WVV666|����G 3*����f�9������#����vp�B�)>\n�b1�0��G\0\0\0��\0\0�Nz\0\0�;�\0\0��G\0\0\0��\0\0�Nz\0\0�;�\0\0��G\0\0\0��\0\0�Nz\0\0�;�\0\0��G\0\0\0��\0\0�Nz\0\0�;�\0\0��G\0\0\0��\0\0�Nz\0\0�;�\0\0��G\0\0\0��\0\0�Nz\0\0�;�\0\0��G\0\0\0��\0\0�Nz\0\0�;�\0\0��G\0\0\0��\0\0�Nz\0\0�;�\0\0��G\0\0\0��\0\0�Nz\0\0�;�\0\0��G\0\0\0��\0\0���[r�r��	\0\0\0\0IEND�B`�',0),('3',1,'baoxiaoprocess.bpmn','1','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"myProcess\" name=\"My process\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"usertask1\" name=\"员工申请报销\" activiti:assignee=\"${employeeId}\"></userTask>\n    <userTask id=\"usertask2\" name=\"部门经理审批\">\n      <extensionElements>\n        <activiti:taskListener event=\"create\" class=\"com.web.myoa.utils.MyManagerListener\"></activiti:taskListener>\n      </extensionElements>\n    </userTask>\n    <userTask id=\"usertask3\" name=\"财务审核\">\n      <extensionElements>\n        <activiti:taskListener event=\"create\" class=\"com.web.myoa.utils.AssigneeTaskListenerFinance\"></activiti:taskListener>\n      </extensionElements>\n    </userTask>\n    <userTask id=\"usertask4\" name=\"总经理审批\">\n      <extensionElements>\n        <activiti:taskListener event=\"create\" class=\"com.web.myoa.utils.MyManagerListener\"></activiti:taskListener>\n      </extensionElements>\n    </userTask>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <sequenceFlow id=\"flow2\" sourceRef=\"usertask1\" targetRef=\"usertask2\"></sequenceFlow>\n    <sequenceFlow id=\"flow3\" name=\"金额大于5000\" sourceRef=\"usertask2\" targetRef=\"usertask4\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${message==\"金额大于5000\"}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow4\" name=\"金额小于等于5000\" sourceRef=\"usertask2\" targetRef=\"usertask3\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${message==\"金额小于等于5000\"}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow5\" name=\"不同意\" sourceRef=\"usertask2\" targetRef=\"endevent1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${message==\"不同意\"}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow6\" sourceRef=\"usertask3\" targetRef=\"endevent1\"></sequenceFlow>\n    <sequenceFlow id=\"flow7\" name=\"不同意\" sourceRef=\"usertask4\" targetRef=\"endevent1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${message==\"不同意\"}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow8\" name=\"同意\" sourceRef=\"usertask4\" targetRef=\"usertask3\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${message==\"同意\"}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow9\" name=\"驳回\" sourceRef=\"usertask2\" targetRef=\"usertask1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${message==\"驳回\"}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow10\" name=\"驳回\" sourceRef=\"usertask4\" targetRef=\"usertask1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${message==\"驳回\"}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_myProcess\">\n    <bpmndi:BPMNPlane bpmnElement=\"myProcess\" id=\"BPMNPlane_myProcess\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"560.0\" y=\"60.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"525.0\" y=\"140.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"525.0\" y=\"270.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"340.0\" y=\"430.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask4\" id=\"BPMNShape_usertask4\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"720.0\" y=\"430.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"560.0\" y=\"440.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"577.0\" y=\"95.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"577.0\" y=\"140.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"577.0\" y=\"195.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"577.0\" y=\"270.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"577.0\" y=\"325.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"772.0\" y=\"430.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"16.0\" width=\"92.0\" x=\"626.0\" y=\"350.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"577.0\" y=\"325.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"392.0\" y=\"430.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"48.0\" width=\"100.0\" x=\"432.0\" y=\"340.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\n        <omgdi:waypoint x=\"577.0\" y=\"325.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"577.0\" y=\"440.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"16.0\" width=\"48.0\" x=\"579.0\" y=\"379.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow6\" id=\"BPMNEdge_flow6\">\n        <omgdi:waypoint x=\"445.0\" y=\"457.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"560.0\" y=\"457.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow7\" id=\"BPMNEdge_flow7\">\n        <omgdi:waypoint x=\"720.0\" y=\"457.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"595.0\" y=\"457.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"16.0\" width=\"48.0\" x=\"625.0\" y=\"469.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow8\" id=\"BPMNEdge_flow8\">\n        <omgdi:waypoint x=\"772.0\" y=\"485.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"772.0\" y=\"545.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"392.0\" y=\"546.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"392.0\" y=\"485.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"16.0\" width=\"32.0\" x=\"550.0\" y=\"519.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow9\" id=\"BPMNEdge_flow9\">\n        <omgdi:waypoint x=\"525.0\" y=\"297.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"474.0\" y=\"297.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"474.0\" y=\"168.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"525.0\" y=\"167.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"16.0\" width=\"32.0\" x=\"481.0\" y=\"220.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow10\" id=\"BPMNEdge_flow10\">\n        <omgdi:waypoint x=\"772.0\" y=\"430.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"772.0\" y=\"167.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"630.0\" y=\"167.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"16.0\" width=\"32.0\" x=\"723.0\" y=\"256.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0);

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

insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`) values ('13','myProcess:1:4','5','5','usertask2','14',NULL,'部门经理审批','userTask','mike.3','2020-11-30 16:58:26','2020-11-30 16:59:19',52957),('19','myProcess:1:4','5','5','usertask4','20',NULL,'总经理审批','userTask','danny.1','2020-11-30 16:59:19','2020-11-30 17:00:14',54557),('24','myProcess:1:4','5','5','usertask3','25',NULL,'财务审核','userTask','li.6','2020-11-30 17:00:14','2020-11-30 17:03:21',187020),('29','myProcess:1:4','5','5','endevent1',NULL,NULL,'End','endEvent',NULL,'2020-11-30 17:03:21','2020-11-30 17:03:21',1),('6','myProcess:1:4','5','5','startevent1',NULL,NULL,'Start','startEvent',NULL,'2020-11-30 16:58:00','2020-11-30 16:58:00',30),('8','myProcess:1:4','5','5','usertask1','9',NULL,'员工申请报销','userTask','zhang.5','2020-11-30 16:58:00','2020-11-30 16:58:26',26019);

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

insert  into `act_hi_comment`(`ID_`,`TYPE_`,`TIME_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`ACTION_`,`MESSAGE_`,`FULL_MSG_`) values ('11','comment','2020-11-30 16:58:26','zhang','9','5','AddComment','急。。。','急。。。'),('16','comment','2020-11-30 16:59:19','mike','14','5','AddComment','我没办法报销。。。','我没办法报销。。。'),('22','comment','2020-11-30 17:00:14','danny','20','5','AddComment','好！','好！'),('27','comment','2020-11-30 17:03:21','li','25','5','AddComment','ok。。。。','ok。。。。');

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

insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`) values ('14','myProcess:1:4','usertask2','5','5','部门经理审批',NULL,NULL,NULL,'mike.3','2020-11-30 16:58:26',NULL,'2020-11-30 16:59:19',52947,'completed',50,NULL,NULL),('20','myProcess:1:4','usertask4','5','5','总经理审批',NULL,NULL,NULL,'danny.1','2020-11-30 16:59:19',NULL,'2020-11-30 17:00:14',54554,'completed',50,NULL,NULL),('25','myProcess:1:4','usertask3','5','5','财务审核',NULL,NULL,NULL,'li.6','2020-11-30 17:00:14',NULL,'2020-11-30 17:03:21',187019,'completed',50,NULL,NULL),('9','myProcess:1:4','usertask1','5','5','员工申请报销',NULL,NULL,NULL,'zhang.5','2020-11-30 16:58:00',NULL,'2020-11-30 16:58:26',25992,'completed',50,NULL,NULL);

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

insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('17','5','5',NULL,'message','string',1,NULL,NULL,NULL,'同意',NULL),('7','5','5',NULL,'employeeId','string',0,NULL,NULL,NULL,'zhang.5',NULL);

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

insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`DEPLOY_TIME_`) values ('1','报销测试流程',NULL,'2020-11-30 16:56:22');

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

insert  into `baoxiaobill`(`id`,`money`,`title`,`remark`,`creatdate`,`state`,`user_id`) values (1,'3000.00','test01','出差广州开会','2019-03-11 21:32:46',2,5),(2,'4000.00','test02','出差北京开会','2019-03-11 23:26:10',2,5),(3,'6000.00','test03','送礼上级领导','2019-03-11 23:49:05',2,5),(4,'7000.00','test04','请客户吃饭','2019-03-12 00:26:49',2,5),(5,'6000.00','test05','送礼','2019-03-12 09:21:12',2,5),(6,'7000.00','test06','出差北京','2019-03-12 20:09:00',2,5),(7,'8888.00','test07','去出差广州','2019-03-14 11:08:26',1,5),(8,'3000.00','test07','出差','2019-03-18 13:55:33',2,5),(9,'8000.00','test08','去广州开会','2019-03-18 14:08:36',1,5),(10,'6000.00','出差报销','出差','2020-11-30 16:58:00',2,5);

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

insert  into `leavebill`(`id`,`days`,`content`,`remark`,`leaveDate`,`state`,`user_id`) values (10,5,'旅游','休年假','2018-03-21 08:26:55',1,5),(14,7,'病假','调休','2018-05-17 08:46:25',1,5),(15,1,'事假','外出办事','2018-06-27 08:39:58',2,5),(16,15,'旅游','休年假','2018-06-27 09:02:17',1,5),(17,15,'年假','去旅游','2018-11-08 14:30:46',1,5),(18,20,'年假','回家结婚','2018-11-12 14:57:25',2,5),(19,10,'请假测试01','去旅游','2019-03-14 09:51:12',0,5),(20,8,'请假测试02','回家过年','2019-03-14 15:22:45',2,5),(21,8,'请假测试02','回家过年','2019-03-14 15:25:28',0,5);

/*Table structure for table `sys_permission` */

DROP TABLE IF EXISTS `sys_permission`;

CREATE TABLE `sys_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(128) NOT NULL COMMENT '资源名称',
  `type` varchar(32) NOT NULL COMMENT '资源类型：menu,button,',
  `url` varchar(128) DEFAULT NULL COMMENT '访问url地址',
  `percode` varchar(128) DEFAULT NULL COMMENT '权限代码字符串',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父结点id',
  `parentids` varchar(128) DEFAULT NULL COMMENT '父结点id列表串',
  `sortstring` varchar(128) DEFAULT NULL COMMENT '排序号',
  `available` char(1) DEFAULT NULL COMMENT '是否可用,1：可用，0不可用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

/*Data for the table `sys_permission` */

insert  into `sys_permission`(`id`,`name`,`type`,`url`,`percode`,`parentid`,`parentids`,`sortstring`,`available`) values (1,'权限','','',NULL,0,'0/','0','1'),(11,'报销管理','menu','','baoxiao:manager',1,'0/1/','1.','1'),(12,'报销申请','menu|permission','apply_baoxiao.jsp','baoxiao:apply',11,'0/1/11/','','1'),(13,'我的报销单','menu|permission','myBaoxiaoBill','baoxiao:billquery',11,'0/1/11/','','1'),(14,'我的待办事务','menu|permission','myTaskList','baoxiao:tasklist',11,'0/1/11/','','1'),(15,'流程管理','menu','','baoxiao:process',1,'0/1/15/',NULL,'1'),(21,'发布流程','menu|permission','add_process.jsp','baoxiao:publish',15,'0/1/','2.','1'),(22,'查看流程','menu|permission','processDefinitionList','baoxiao:processlist',15,'0/1/21/','','1'),(23,'系统管理','menu','','user:manager',1,'0/1/21/','','1'),(24,'用户管理','menu|permission','findUserList','user:query',23,'0/1/21/','','1'),(25,'角色添加','menu|permission','toAddRole','user:create',23,'0/1/21/','','1'),(26,'删除流程定义','permission','delDeployment','baoxiao:remove',15,NULL,NULL,'1'),(27,'查看流程定义图','permission','viewImage','baoxiao:viewimage',15,NULL,NULL,'1'),(28,'角色列表','menu|permission','findRoles','baoxiao:rolelist',23,NULL,NULL,'1');

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `id` varchar(36) NOT NULL,
  `name` varchar(128) NOT NULL,
  `available` char(1) DEFAULT NULL COMMENT '是否可用,1：可用，0不可用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_role` */

insert  into `sys_role`(`id`,`name`,`available`) values ('0aeddab9-c1bb-4871-8f1c-68bc5f675fb0','网管','1'),('1','普通用户','1'),('2','部门经理','1'),('3','总经理','1'),('4','财务','1'),('f7a38138-8210-4780-beef-aef49d40ab36','会计部主管','1'),('fd7e5640-05fe-4a07-b9f7-cee67a83bdbc','BOOS','1');

/*Table structure for table `sys_role_permission` */

DROP TABLE IF EXISTS `sys_role_permission`;

CREATE TABLE `sys_role_permission` (
  `id` varchar(36) NOT NULL,
  `sys_role_id` varchar(36) NOT NULL COMMENT '角色id',
  `sys_permission_id` varchar(36) NOT NULL COMMENT '权限id',
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
