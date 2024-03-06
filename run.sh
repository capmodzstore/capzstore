#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY�� ���|������������R��ґ   0 @ `)G��SnkO�;�+�����؃ם�qV��#Z��S�2�GF��rj��M��w`SV�sS�n���n۵e��;�w2ꍻ�u<���]�gt�)Pu��u�j5O#MSMO�4�=G�e?T�6��2<I�yM���  �514����G�T�6P�P���=@�G�  i��"	�z��4�Q���Tz��hz�h���4� �C@   � �R�К�@&&)�M��i�OH h�@   H�MȘО��mL���6��e ze�=�&@4ؠ�! &�$� �@I馧�?$��?Ti��z������2�"��i��;]Vih��:=H�i��T�8���M�)���7�o���/Գtn�C��n+F�1.<����>��L���f��4�?i~1趺��g�ւ]a�Vd"��:Tő��$6�6�a����dN�B��X�Xާ�,�,��dIfF�U_s�2\0�ϼ;6��c|�l��������Y���;g�ٕ%Ɠ�����uԵ1����3�����oX�����)9AM�VGg��ν�k�/s�ۻ���2{ֶ�:��Ը�v��o�����V# s@:��m�����P�*�cS֌X��6�w(A�JY���*�}f,H��1�w|9��l軞�J	�;8���BP���cN<�����w�V
k��λUs��M�7i�*k>�?=�p<�Ձ�O5WږVUutEy��Z�pr�P�!m��9�A�Q�)S�0�-R������mQ����0M�Y���}��\dh�C�y#5��Sʁy�����p��߭��?,�HCeq�C9��Ke<�� \����Z
w�X�ʠ< �q<+��YG��Y���G�[�F�#�L��x������]���|{�9��JY��g�/,P�M�7-s�[�1n4 ��v?>0`n��k��"�a������̉+ߘ�w�\�n�����)�{[�W�b9u'a�0�0
T�]|�=bR�o�>|�)�x�;5�ښy��x���~g�w���`blC;�.{�w�����Z�*�&��Σ��I��-�E��
��`���uo��j�nLXw���*l�1]5b�F&���������m�p�O3P������ط�_q{C�@�RL�M�ZH��%�J�`�6"|�-R0�7;^���K�&(aZ�@r���ECj��[�}�+mH��;�[��\ssu}�@S^Q���E� $�r#|�f|�>�� D���ރR�D���Ȉ����e��=j�B�`1-wǡ)���[R���$M�!n��>�x�dQ~�Q�fZ�E�m3�������)�i�̧�2dyG����-"r���`5�$� p�W��0��q�ͅ�k?�7L�ˌ-g�[���;F*��g6�<���G��mF]�������4��x�D���4|K��Da�vo��3�	r.�Ui��zv �(ݏ� �Y'��ӂ��� mϰh7�
�T�f���{�a��r}��<4�]��;w�S�O��v�P�*�a�������3�������jH6w�]=�R�%1��EY-�
%��r%B�47��n�=��y����Sv��pې�7�Q3뼞3�~�H�r҃�l�<N���}�8����W�ù���j�i���iu��fχ
\z����\����o^5�~F���K[6���̷���u�H�+�2��l�=xmtz<0;F�3yƹ>�_�9�����w�sm�A:6��TQ��9p`͑<3�▇S��y�cNv�}��gM4��yZ��@�����ާ#U� �2R�0,)y"s�|�O�a�L^�rH߲����<I#���C���*R�yc��d1��k�N�̈�E1��U��/����8� 9��"�+DM����O={h��cm7s]���AI�C{ �b�]��F�NH#��?T�h���Z��lBJ$���>wI������7�G0�wW�S��c���l�V�x�Ю�c���9Go�G�Ũ����ň���\0�9ʗl�kai�ڷ2Dן�"5�Г�|*��"�_b��3e���ҏ9@4�٪�uk7�s��z��>'y �4�-�HH(���(�,�P�K�j��}��g���y��U4��h<�w����!�,�S%@`�/�K*2�L��>��Cl���s���Ͷ��0|I�p�Z�2�Py���d�%2�H�4��lj(<O�U��ucK�j�,T�&t��f2N'�R�W���]l|��o�?;4F֤X����*s[�����\���b�,�.��{��T�:�C�x�r{�L��]�~�d>x�K���Q��d1>[���`�{C���f�1�w2����� ��]�'l�*ˠd3�a����>;���u�IƝ��_��_Qt���x����t�v%&JD�������ȅ����V��<?�F(�'�n=<v���|F�(r�z�k��7y�����˼�u�_���n(/�;`����(4��?¬�H�4o�2=��j��%C����)S)���*��$��A�~����B�w�L�SSp�~Zg�n��Kt�Q���I%nf�TcZ��eD5�P	d��`F�����$2��Ƨ$�1�W���
�QO��;��q�X:ט�<_��@p����0u=p���Q���Ы��̆L!���4]Q���=�g�v�i�Ԯy���(ϵ0F�@�~�o�/��L7p�$V1�lW1�4�ֽ�͸7C���%�j�P����e������f�
�l�Ui#]�?qM�/.-SL� �����_�M�����QX�BX����_>�B!��\K����.]fS1t��q\��ȃk���\��/�.F6����V��Ď'����3��o"��ܚM�hm��5b60���8-����$�C\TU"1E�,DQbł��i��6�UV���N��!ږ��9MxY����V���(�Շ\^4r-��,2�7#��)ɄAiyjq�䀳Y	��V�'�,pe	�+��(�����)����ޖ݄�5da9�9�G����Zj�pm�����S�--�SP��[����S-b[�)�u���[
����m�)%ZW�%������I%r����u�*==�+Q�"���H��ZNAD���T��f���u3��Ώ����?���zP�|o�k'2�c]����P�����>�n���"_����+A��Nχ�\�u���V����T��|�8�?q�GI�y��_�M1��g�3��-vm��[����K��R��hB݉�x�C�wk9r=Q�vM��9�v�4��b��k8�dl��f�LfJ��F�5�rz���a"�q�!�H�d���E�j��6+�u�Ub,/�Hw80�tXCeT	��x�`�aΡ���&��� D�����S�ʯ�n.��Md��<~$@��J�B}���i�[�����^m���?س 9!�B|�}@@=��'��ލ��^>�B��T�qr�]�39�̳�������m��:��P�e��ធ�@�^������h� I�����U����ݍ��}���]6�a^[���t��d���k2A�`6J@t� SH=����444P�sY$~�/��b�����P���� A��T1���PM�A n� )=j�SS��A#ݠ�֠��%^C�Zw�p���Sr	#�H�`�6�|�
�毸go��Z�� ��[�coy�8td�q�B��$� R8iA<zJ�oj���H��~����5��ԥ7��es\N{}#���a#GȉN�<ϩ<G5�Fy#p�;+������<�_r���-�O��7���E���
�a��\	�k^���}��O�"�׷�ߩ�_P��x�������wȑ�|��'x�I3���n�t�i]�G_����h���&C�� ��/)6�K���A��褸x������#�g�G-��G�烗7&���X؎ u�_�qn>�;f@��#B�Ѣe��n[��	?y��"��A@�#>ĔЭ4<ťBe�3>m��4�q�]�F��L����p��xJ��<�{΀	��Q�>��6`�9��s�6�d�E ��~�\�<�T��B֤\��y`�J��Bi"4��$Y���.�������P�����T;���m��ή5$P�����^�椡_8Hy�3c����``����������_j̴;Ϩw�5Aiʎ�{T|U���6�����բ��
>F̍��(��(0:��
�]�;ƃ�/���'A���ċ����ǎ|��`$�G���?�]g`�T���*�a�i4��Q�آÚ	�1@K[�bn=�~��-��G�i3Y�?�G#���A>'z5a����k�<r���螕H�(,ƨ��o.A�S��5ˡ�AҊ�������ά��J>�ل�"�R"��.G������I���������~�^Y���K�4�~�Λߐa���}C�(�F%W�^ɐ����;����w
<��j�M�|��_�����~� x�Ԟ��"rq!�h������E\������VNA�&�7����ټvq����m��'�r�r��{����5���JHG��R�^���8�S�#퐐6t�R��%u�L��[x�<���,h�uh������:���Nr	 
�̧�K�}�E�!�Y�%k�r�q����iz�]č��&���RC	nܰ]^��KZ�+f'��B����g�0�:!x�^� �A(u��5��X��+'��u��T�U�Ah�� 7i��+D��C-"��1���gT Ld�*\d�E��;��0��vMF�<�b
& �d��G;��PI,!F�!�#��3b�t�!�7��.Wq��Κ��o��#k��3v$��9Ѳ޾|����
DQ�Q�H��^I%)s�T$KҮD�6�ɥ�2v�6�u�(m����ՌjT@U �#(&1$]��@�@�T��X{<�A�����!��W(�7@��>��Ԕ��B��@��㝻��Z��O��K0Z՘��FbW��q��aQx��[��dC*��26�ɠp��;�� 噝��0F;��fXc'�B�� .J�r���JN��� j^�@�X���*P�&�V�m��8 j5��3,`���D�c^v��i!f�1�-+�'}��^N�6ʄ���cD��3��]��"�Q	m7FR�oc!�Q�f��o��Mb�xf���ڸ,�9Q�t��B�2������h��.VJzT��0�*�-�3;۴h;�`��}3R`Ylk�L����2;�Y%zI�,,�p6��mgv�7���X�&�K�^�N���֙j����%*�VUB�E�x"�L�m����'��r{Gc'��v����t��w5d<��U�Fa �[U��K+ּ4�1���fW4�f�,2d�!�8A0fiT7s���Ҫ�3��i�۪�x<�!P�:tB,�����Mޭ��w� ��OX�.��!�D��s8��C�ԍ*�& #"��+S�pXJ�X)o4�^K�JQ�hLm�ة��S0�����L��B��J�$J�=��%rAհ.[�X=�jffB��F,a� ��mF�R1�H��ϔa�wX]�UW5[rR�SkSJ(����dˈ�gu���D���y�D���������1d�jE�1�!革~Z�^X�/r��B���)1�GW��(Y]ĵ�h%�#��4	P^��.(S�2�	�d��h�+��Q)�9Ł1}�
��L��Ư�6;�'<6������lҡ�=P]�.�b/x{��;�V��y���K�M�u��UN�l�3�"�(����$�x�I(����kD�-z��7�m��C�A,��!��m3��.far _�~{֠����4
MfK��I��V���]!��(��!�������"T��~9��c`g'a����v�T;Kۋa�t�Mŧ�&*�6�A0yUzbA2$�DB����!{ �)���[�^�[a$���F���$ ����b�X��"�ԭ��I��be���B6��0:7�Qfx�ޛ�4�I��q�$=J�S�����l�w�8����cM�v�1�� ߖH�5�i�P��1rm�`QVI�ae �Ed�!��}\����2�A�f�4�U$u��[�m�����\(�7��]�(��#!t3U����i�Ɛ6 39��]\;��1�R��A�3�<rq��7�`�P���Q*����ς(�G;��S{P�G��jK�I<U�J�����;����_�DjB��	�*5%��Ɨ��eΣv�
 �b^̮��@�4Z09e� ʖ�����PPB�y��\��BrLC]gE!U9C!J0�l^��azN��d��6�lkȠ��vd3���D��� I��,�!)Xk� ����h�vIE��I,� �hcy���L�{mx�M������&t����61	�M�������p$D:�9�< ���߃Em�����ρ�Q\�ؓ�nt�kD�i���An�q�,x �n_����MV��6i<�pPK�k#l�ȸ��˗b̹#kJ���ъGCV��ϧ��/ƽV���+9�1l:@%�(6z9��M]���Ӵ�O��թ6 ��MDz���ء�5t��3K�4�a����_ �]`L4�6��C��8l�:w�CC{QL�wuf�Zt���)d	��{�:^�����JgkZ{��{�Uf���0Tl�$)���#��װj��%������zK�BSxj�kVq�	d�&�)1S���@[�Q�	p#�U -D�+	6ő]�%CQ84I�MU��н�L�~T�.�]��$9�Z��.mG 0�a��6�"��#�OQrbk���A�����I#@yI��'"G(��#�ʂ[)�U�$B�`T�����Ͻ	C�B�!$}�>���F!q5��yUX4P;M�=���}��{�:H�	�!ja�I��}e���yA����h�V���b�Ɔ��[��WV���-t�7�$�BXIN��$�.@�!��0޲��9 ��4�l�}Y0���:d8�"{L�d%�'!��iD�Z���������L^FF������P�iaȼdL �4�����4Hc1�\Gf? ��0W/�zS�e��c��a�q	�C�rz4/'ڝTy��ka RUf���-�22+3��T,.9��bB,@E���c���H�,&x��K[b�?�`[����#�]�I�tS�.!m@��[E�;B���ko�эP{�NW��;Ŷc�q*<0�
�
�ޖPЅP��������[A� �ђ�s����w��8��A]�--���=�VB�d)�R*�U��$�.���aT�9܊p�P��Eeih> I-e�$�X+�`��`�f�CW��؈=D�v�T*��KB�@b���Y�ة�gD2˦Y����q D�p�	��\��Ԯu���rM ��#)6
�bD�r�
��$�"B��Z1
si`X�<�r|F*�c���Aڇ�A��0Kfƴ��-�H[f�f�[C��	fO0 pN���ޑ�bB�`iVU���	����
O���'��Z�vD;A�O�ɥo�+��h��Al�ti$�Ո��dr4���,�=���L� �M��(��QJCIG!���|��*Mc zKI���Cӥ��`j�p�Xl� �4����现֌9�b--��X"�p�l��b���Bċ�bj,-b��&�����$���b�<�n��$:κ-(�UPR)S�UZ�%���4�$�<'�5T��s8i<ƈ`�^RH;�q��:g��9UN4Z!���6@�%7gh�
��C/�nCRO�x^�%��Q��j�D��D��� װ���C;�-2Rȡ�%
���䴞/�����7Pѻ�ܢ�lJ�ў�HhH2�������3v�.J\�K�7L4	i.�BA6�c�	-s1(�4��]%	�Y�ܑ�N�q��F�lMv,)f��h�(xw)>9>sf�ق�"4���z�KN1��*��7vti7�(Ol�@	�;��,#.oە��� �F���%���Q㩅��5���f5*($�'cB�^�M}Q�|j��	l
j(B�^�&!0���
� @�N�3HA�g5��p�3#	�T= ���y1A�{`�hg(/@���Tn-�Y��7MK�mf�fa��!�(«���pw���i4��Fό�����^�p�#�v��9��`j4�L�@m5���f0d�|	�!��p
p�[�p5�45&)ΔA�ܙb �3k��.* ��"�LKy�0c0g�8Bڦ��dt��wK�0�Y��řMm����}fݡD�[n��׊c� �j\�I4`�$r�������5QC�F�%�#1J��2�$o���־�05��/�����;�Ɠf�[�	�))�&5�H�-`��7��Ǖ�vZu&MBa	��fH/T��X/&���[ vq� ��r?A���с��Q�v�	zV�
,���S�%��xL��L����6B�-��t�1��K%3��`5�S��A @p�3(�I�GR#��a�A�B�:~�(o64C�Vp�8C�:�2!:�L��!�X�����״� �z THVS+�;$���3CJ�bGc��GY ��'I��1�}�r�GPj9���F��,I��Cbm1#w��x��Vd~^�<����ow�z���풭uS0�F���[gw3j����?�?�hw�O��G�DYA��?���	�E����TD� e�AHg�$���}g��_e�^�i
 ���a�j� ��bb(��H����ܑN$9a�