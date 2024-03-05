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
BZh91AY&SYH�̈ ���|������������R��ґ   0 @ `)${�\ݫU�{J�y�ｃ��V�w�S���OT뾧����{�ɻ{Ƶ+i�pi�.���]�;�ݭ�nۍv5��"��m�J�V�����]������4�lza���524OL��S��S�'��4��5=L4&Ѡ���I�����4  B���T��S��L�� M2�ѓi  a��4bh��D�ʧ�jz��L���z�����z��     �R�4LF�SyS�6�d�a0��@M ��  h(�� Si��O�jO
��4���������L���e��#P��  �	�4OM��5S�T��������mG���ɽP�4�i�hκ�!�z��>S��y���ԑO2�)���1΀�/Gɼ�7�'�_*
��͵z���b	�X��5.ĩ�z!����0��+����I����3
��2�ne�x�$rK)?���-@��%���G�d��T����Q|��`�I���dMI���׃-g��mt����K"�� �Q�N�5"��@+;���:�un!�,�ѝ&*�i�q3 `�����)9AM�VGg��ν�k�/s��wj��2~���^�Ը����w��z��V# v��g^�BI�{�g���<Ut��gF�(A,���I��g@ ����c��w��kxJ��!�nBi�X�(��x~,2Kn�tUZ��ovd%�u���f��cfr�Miu%ǖ�گ��L�"u� ұ9o�-��k)�9��-h@A`w@�|k)�tc�����%�@�d�JR�p��hғ�G�)#��sϗ��0���a)6vG6�=T� �,))kF���=��h�40Tb�dQ%yΖ-���݌[�L�a�h���0nΠw���D3����^����l�d8m�> �_o6����9_�En�l9��_�<0R�n�����1�e�\�y,[� %#�ǽ���ڼYȮX`�$h9=3"J��>���,�a�x��S��W�w�2i�T4���0�����d>�9Pǟ�>�
���vk�54������OD��`�Q���Д�!6��F����J�FB���/m��J�A�S���6uu�;�P-ڋ�\>��c�Ŋ�+�"15e�ů��]��x	$��-�t_��>[�/�����}i�c ���$~=�%X0q�>R�����׭��ʾs,�1� ;�sF��t��ΰ��z��"j[�H�5o�\����י6��i��� ��*��U_>�݌�Dc1��owm��Ŀ�3%r�4�\ww��@��i���w|/�餮�O	��K΄|)����$�_��mٖ�n��L����Mޔ
t����S�L����z�KH������פ�D��2f�\h�at���F�q����x}��F�3��O(����Mv�e��\a��{�d������Cw?M::��A<b��I&=�e��Z�3�h�Y򍩻�a_�ti�������F�� h�l�\6n���߰��u��}/��<4�]��;w�S�O˜����|U)����ů�3�?sIg?��Z����.�O��P�����X�[aƁz-�5:����#�mK1=��y��?P��X��m�q�˨����O�?Y$t����3�}[\q���`��-������a�$Z]a!Y��Ͳ�n�2�8[׀�f�u'DT�����*���vV횵ː-�Ή���09�M���d�5�h�|�v<`��5l���P�0��2q��{f���ۓ�Vޱ�Y��U�5.
�f�fƜ�B�H��g:i�����@�����ާ#}�p�,��N��>�է�J��9n��ZA?5��p��AD���LM��ͩULۓO�;-s���e1�zl���A2���$;cpoH�y��~4�@ҬBA�ٯ���Ϋ}b-�o���~��8�ԇ���0͐o�MV��~�
�ɪ������r�Y�Q�����d�E�ڪ��(b� ���Ʃ���F9e�X�m�l�t��P�$qt��=�J�0c$�f��%kn ���Ě!�u�tO�]t+�/���fWf�ڵ�׋-v�7*
ӏ!@9n[�'G��7���b�^(� 9qTƅBAD���@H�d���2\�W5����}���� ����9^M��W5���E
�i�D�0�`/	�Aq��aJ$�|��>��ϤPn�`M���k�Z-M�U(<h^�^2]��p�YOU�4�s�걗r�g�6�b�L놔��SMx�/���Py1����-�:ڑcRv�b��~Z��t�NX�˭��`�$>[�^`�Əֱ�<�~����0]ry����K����O�A$�MX���������kwz���8;sWqj�@@�m��C�Ϸ��Hzr�;(#���GM�gZ}���3E��������8�Id��_w?�c46eU+�_Ӟ�<�ބ�?�m>��4��fRH8�>��s盽Cx|�K���������͡�t2���ܕ?2ϝ�1V�Vp�[�m&�����A���y�}l�T�~R�ʥ�I7p�z��x!�"�x���Ŕ�^�Mr�7Z��6�J�B��U[�<CxI�߬���1������@'"FOx$B6�{(�S�,|x��DS��<)s����^���~� �@�.K�B�1N].T�9N�$��+cCLC�0�D�X�L��v:���;�^�b���-�y}�M`n�T�Z�V1��.�ڠ&����cI��^����<���̓Qx�5ap�!�v]f�y"�o��f�OFM*���������?��FB�k���������UYP�b���� U|L��f"N_Aq.G�h�u��<0�=�T^�i�rg�"�:�mrXv��4����'F��|�c��٣-�ӟ]�f'��
�fj�la{W,p([[��B/4�peQT��(�E�
iVܘe�m����rɔFw��n0�f�^;qZh�p�KVqx�ȶ�l��o��(N�&���C��d$>w{5؉<xzq��&�����o@��T��D�z[vH�"��İ�RgK�C<�*�ؤ�b}&kPP�ѳEp����ڏM7��bD�����&��Uo&��9��2�U�zI-�y��^��$�Q�<��C%G���j;�WQp�#�+I�(�8"���y�����L�_9��>:g�Q�WOJ���+'2�c]���9A�&� ��u������]�iZ�T����%��i���&�qi5`�b?��9�7q�� ���[���_�L�Y�#�n�֗�]ļaO�¡�p����G�a� ��V?�[�kj����`kA�SP�G��|��1���g�4������z�;�{G��8�1qFZ���4h���'���	i��W�*zu��]k�^L�M^g+f%��R����0���@�O����p��W�m��Mt��� �Hԫ�� ��qh!i2M�G���z���Vy�F��s�@��j��0O7�������K�N/w��{ŗ��Y�a�G>OMoj�P���,�
6�]�t^+�k1p&�upC�\ *O�C���nR	W����Zc��A�ڽpuR�UB��6U�gW��l���l���؁M �Y�+`{�����o��8R3����/�s/�����{O�A���y�p5Ug�K�붃��) ��ќ]��f�xY%� �6�M�,�[�X�����}
�2�g��X������F�4�z�6Iv��.�$�|
C�('�AY��_1��i�}�d��k?�Jo��cV��=C��s���%:w��|���t/$g�7	㲽ު�pp�%o9y�����z�3��[;�� *��5���͋��b��Ϩ�~e-�w�\_,o��G���Cͧԡ��؆�<#&�ϣ��V�t�i]�G_����h���&EH�HA��P��6zW>R$M�_����*�C��#�g��ZQ���].Mx��=�_b8��#��B��}�v́؍
�F���n7$�s����#���^�֒��g�iP��vU��m��j�Dn!#�<!�d��0.�:x��v� �q�N��s�|����ց�ڥS2:s���Y�x�*�g���"�V+���H������<�9��0ɛ>��J�����~���m��Ү5$P������O�IB�p���2g޴z݁�#��h���i~e��;ϰw�5Aiʎ�|�>j�Sg�f���xj�na	�#fF�s�G�V�K.��A��� ��lV��,&T8��׫VҀ�Up�ܞ3S�`K�S��j�Q�����H�w"�D�혂 %���n<���(f#��s52�Dq7��r'��F�l���R} �}��/"T\��R6$���Ձ�����xy�c��5ˡ���+�Z�7@/;�z�@�ѡo����"�2)"Ku \����|�e�]����K_��3�c��Rw����@�e����p_�U>�g)#��6�44(��y`����=��py���P�մ&1�,J8��	�ꬻ�f���h���@\��4gw�2�-�$�H�a]2OX�R�A��u�2dc�x���K_��*i(g��E�A�l�:��9��Pw�$#��B�Sΰ7�O�L�D�gX�*F��W�y�I��a&[�oܑ�/z�/(��?	 �MQ$:�P���*=pG�yȏ^9�mñ�q�������.�F�ГA��S�)!��npz�F��	���|��f��y��2���|"��6cT	53�IG�P�4�%�Z_��Y�Q� n�j�U����V�"4�4@��{��q��[=�yH�0�O�MF�y$����']��oB������5C�o��=���2^�M��s�Pm��r���0�����Q��0W �HS�wE���+��6Đa!��`���Uh��ڒr,Y�z���Ԙ���޼���?��g^1�5QT،�@�đv��NA���Ҩsf? F� �m�)v�:='�މ�(��j ��dy���v����A.�B�\�z�v6��eSt2Dڄ#
�#��2���"Wl�X~ ���m�g ቍ�v �i�)f&��5sd.��!�+�/CRVx=��:�m^�@��S_?!R�Fd�ö���[�۰��F���(�����HY�lD���	�k�����(;;�X��usB�8j1���B[M�є����b�A�3PL�7��঱b;����ڸ,����B-XʲcD�)�Rt�Y)�SCx ���L��3V��#U�KHxţcl=e(��k�'#=���@�=�����<��Yݻ���2ɢR���3��S=bT41��W�`gT,�&,6�-�D*���b^�9C+��nc �7_N�-.����ZB���,�� �7�\�L_�\��i��[t�ۙ�}�$Q�dAҙ�Hk5*����*�Gn͆96�a�&�҈�:�#"�$�9@\�
���@TS�>�s�M�	�&=�P�V�k!��#D�r�	�Ȅ�5���pX�����T T��D��!��y�$`�/5�13��56�����
��t��h\���{��܅#�Xòl�j0�`Z��,�E�D�|F'qՅ�DAtU�%,4��4�b��l.L�b	�e��3�,�I<=��k����b�.���bĈy�d�%B/$\�pڡtD�0�LtQ��'nW8C4KYV��I:N�-�HK��Ђ_=!N��
I��u��A
�e@<��K�	P�P�����1Ig�_L��Py�N��x`/I$lԡ%w��� �b]�����"�ў�Q�50���'e(��OD~�!!/6;�= `G�%��MbH�%�Q2�?)��mE���T.� �W��ES63�d_y	�=�Ph�B�4
MFK�Cr��U=�	��Im��!q��mC�����3Ll��7���Ԋ�i{ql2�{Sq����R�n�;�W���J(RI!$7@�0�`�h�趪�Q$���F���$ ����b�X��"�ԭ���d����Kz�mD`to�"���e������C��L��*iN��Kg��%�Es�a�݆�%LD�&Q�oC��Oz8DQhPG�+�uI�4���4A'S)+$��w���'_�ˠAn��̹$u��+��UUU_2[��q��S,Q��k
`(�:\�A����"��ӡ�V��0�:RE7B���Qm��n�'hm�pQ�J�M�R�^A9�r��f]GF}���r�Q���yՍ_|�Xw��*L�W��7�� �v�ԅ��9�Ԗ�W^�5�:���(��{2�\t>�XP�h\4��l�*Z#4oO7Y@2C

HDI�6�v��B�䘆�M�,�k2�!R3�\ŉ��MA��Z	6�lk�PSf;2��E"{\�ǁ�$��
t�)Xj� ���4(�.�7��IB����h��׽M9=م�Hp����F���'�k4��#bzH ,��x:^�8�$�D:j<!Qkѿ�ۃ�/�jW>3�D`~iA�'h�Е�
F����rz��c*z�A�����c�pĞ�R$���. �I�s|�ȸ��˗b̹#kJ���ъGCV��ϯ��+}���[Ij���bl(�@M6HS�t��M]���Ӵ�O��թ6 ��KDz�/X��(H�bg�$���,6��w�����i��c&�@6�q�'�J���LL}��� ���vZ������b$� Z@M�i�"�"�)��13+�%�7��VfF0�	��d!L(DT�1�� ��+MD�(D!6��D.CD�r(�L��AxM�R 0b�}e\�o%F�%��(���y����,��-�D�
m://b��z��ʛh�h܆G�؛����*L��������1��S�D8�U�jֈ0ahM�I#�� p'y2
�dr�PK`�>*�yD�@`x�*LD�{���BP� ���HF	T��ϲm�"EQx\R�a�C�T����n?K���4�	B�D V��;��>��f��j����(R+(D���_�|����u7̒K�,$�?^y1�2Hv�j޲��9 ��4�l�}Y0���:DjH�법���0�#�����Z�1���5�q;�#M�������hA��9��\(���r��t,"0�>B���}?\�\�>��z����;K����&*ӟׂ��5��L���h �d`��b$eˏ�^�g.B7�E��T&���+
���u�x�y�ο�^^�R���ӏF�m�[l}��~g�����.���l��ж=����4cT�t������x��,~�J�4B��������6�!��A�ٲ��[ɥk�"��8�EY4@8��A]�--���N��m"�"��Q����Hb��*�b�C�NU���-����H�
q���Ȇu��*�Z���?X����KB�ny5*�Bc �edR#b�F19�,���I�,y�/g�P$5�p�t�D��.T�--�߽�3�� =E���@��¼ؑ)A�. %q �#᠌�f^^�m �L��a�cB����QvTF�P�B��l�C�-S���	���x�`����H��h��s�w�	\B� �f�HZ)C�6N�sp��+g
V'��ҩx<����!ZGU���AeA���!��D�B��i�]���2��`� �)He3�AJ����,4�! �(�$Z�-/�W��Z�f�8�٥\���K���0� �9]XLih��P�1���`���b)�n�Yiti��2�=�ğP�L]Ǒ�����s���I�B�
T�*�E��z��3�`<'⥪�ͫ��Q�0�:׉B���ySy�qRF�%!��v���)B6�h�
�8�4�
[�x�QצkI�0���6�`e�H�D��1@a�AS� Ҷ�1HhX�1B$H𕨡��Z�H�S�ʋr���-�^Z�F�9L2��K�YDG{��Ivj�����M4�
��
��Tn,�p�b��%5�`��j<�������QB�����k.[,�����j�/�Z1�R*�A�+YDV4n�cD'}T�
-����P#Bps���h���-M����Ԙ�I�)����p68+lE����5`-$hF^�M]ѩ|i�����P=��N�LB`	#	�� @�/���;��s`L(���BC�+h1IX������r��y��\fĲ.��o��i~Z@`�i��(n���$�IcJ�Y�ty���C��V�_R��.�t;�ǦF��X�s��A *�W�P���S�b1�q9+�\e�
�R���Y���Q����"����.* ���$�7�A9��	�۵F������z��Y9�p�҉��=��B����X0���'�BspX�ܨ5�/�7$Ƭ�E��Ȍ�+@gh�$��w��#Z�a����1}g^U��u��6j�XM!IL�1��@|r��aSp+.�lx�@YWe�RaT�&��q�d�q����~�� LT|�8 ��z�l�C;F��L%�v�	z��
,��	�f��D��4�A�Ɯb�ѩ��&=~��S�T�c���V��J 3WKAj������-�4��I<*6�s(_g/�s�Cq��i"�LH�[�TN���j��K�|�(�t'U���B��\�c���xdgT5/IKv�hTq;
�Q:O+��í:C#���i�ޕ�X|� ��&���~tA�-�J /��CЫ����~߷�=�%��+d�{qM��x��[�.������"
�g�KX;9�?���
QC�$����` %(�R4�J�����ߧ���ޅP@��p� %�֖ӈ?�!�10�w$S�	��Ȁ