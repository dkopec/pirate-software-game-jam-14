GDPC                                                                            #   D   res://.import/arrow-down.png-731b888694b5e10791cff9bd9784a9c1.stex  �U            ��G�m�?����@�7&D   res://.import/character.png-eb70ac48a5acf508c4b7740ea4ac4fae.stex   �Y            Ï�)��EZ|��8�@   res://.import/creep.png-9dc8d36f8c07adeefbc4d36436254221.stex   ``      Z       �#y����@u-t�VO@   res://.import/creeper.png-bb0d444bde47cd215fc4d4e6ef6cea6d.stex pc      �      ��y`}Ew�ӯK��?�@   res://.import/ground.png-55df20774d41ed101a891f191ec3738b.stex   j      \       ���7[JcTD
�pٽ<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�0      r      ��Ms@b(!³��m��@   res://.import/jam-jar.png-2a1b22f805a5e8e9bf4eb46917586ec3.stex 0m      �      ����)�b��~��Sx8@   res://.import/obstacle.png-0258c5f5ce65bfa0dd8610adeb784f54.stex��      ^       H�\�.�u}��*��g   res://Character.tscn 
      A      &+�q��6��Qk:�   res://Creeper.tscn  P      �      
�gt����~��z]�8�   res://Game.tscn       �      ����.���ڟp��   res://PowerUpSpeed.tscn �      �      ����p�h�p&
u_�   res://Target.tscn   @      <      ���
*�kX3��`   res://character.gd.remap��      $       ��ߖ$���-#.�Mu   res://character.gdc �             A_D�(Hq��ֻ�ׇ߳   res://creeper.gd.remap  �      "       `ۻ �	ЙߑP�D   res://creeper.gdc   �.      �      j��K��%2P�d%�   res://icon.png  ��      �      �u���?��D�K��   res://icon.png.import    9      �      ��fe��6�B��^ U�    res://pathfind_astar.gd.remap    �      )       ��5�S�#�Qf����   res://pathfind_astar.gdc�;            ����ݚ�B��G���   res://powerupspeed.gd.remap P�      '       �2B�	�o߬����   res://powerupspeed.gdc  �T      �       ��Y�����nL>   res://project.binary��      v      h���!������*�$   res://sprites/arrow-down.png.import �V      �      Z�Q�n�F	hu���iq$   res://sprites/character.png.import  �]      �      �~��9�5T@�I    res://sprites/creep.png.import  �`      �      {�1~=�vs��*Ӛ`�    res://sprites/creeper.png.import`g      �      ��st�x�Q���Ur&    res://sprites/ground.png.import �j      �      O/)��%2~��������    res://sprites/jam-jar.png.import��      �      �"UK*��s%,���$   res://sprites/obstacle.png.import    �      �      .�%��P�N��5E�   res://target.gd.remap   ��      !       ��%��/Ɠ�7���   res://target.gdc��      �       ��Y�����nL>   res://tileset/tileset.tres  ��      �      ��*�����
y�6��$   res://tileset/tileset_source.tscn   p�      I      a�?�ڟ@�ˏ�K�7�#[gd_scene load_steps=3 format=2]

[ext_resource path="res://character.gd" type="Script" id=1]
[ext_resource path="res://sprites/character.png" type="Texture" id=2]

[node name="Character" type="Position2D"]
z_index = 2
script = ExtResource( 1 )

[node name="Sprite2D" type="Sprite" parent="."]
texture = ExtResource( 2 )
               [gd_scene load_steps=3 format=2]

[ext_resource path="res://creeper.gd" type="Script" id=1]
[ext_resource path="res://sprites/creeper.png" type="Texture" id=2]

[node name="Creeper" type="Position2D"]
script = ExtResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 2 )

[node name="Timer" type="Timer" parent="."]
autostart = true

[connection signal="timeout" from="Timer" to="." method="_on_Timer_timeout"]
       [gd_scene load_steps=6 format=2]

[ext_resource path="res://tileset/tileset.tres" type="TileSet" id=1]
[ext_resource path="res://pathfind_astar.gd" type="Script" id=2]
[ext_resource path="res://Character.tscn" type="PackedScene" id=3]
[ext_resource path="res://PowerUpSpeed.tscn" type="PackedScene" id=4]
[ext_resource path="res://Target.tscn" type="PackedScene" id=5]

[node name="Game" type="Node2D"]
position = Vector2( 1, 0 )

[node name="TileMap" type="TileMap" parent="."]
tile_set = ExtResource( 1 )
format = 1
tile_data = PoolIntArray( -1, 0, 0, -65536, 0, 0, -65535, 0, 0, -65534, 0, 0, -65533, 0, 0, -65532, 0, 0, -65531, 0, 0, -65530, 0, 0, -65529, 0, 0, -65528, 0, 0, -65527, 0, 0, -65526, 0, 0, -65525, 0, 0, -65524, 0, 0, -65523, 0, 0, -65522, 0, 0, -65521, 0, 0, -65520, 0, 0, 65535, 0, 0, 0, 2, 0, 1, 2, 0, 2, 2, 0, 3, 2, 0, 4, 2, 0, 5, 2, 0, 6, 2, 0, 7, 2, 0, 8, 2, 0, 9, 2, 0, 10, 2, 0, 11, 2, 0, 12, 2, 0, 13, 2, 0, 14, 2, 0, 15, 2, 0, 16, 0, 0, 131071, 0, 0, 65536, 2, 0, 65537, 2, 0, 65538, 2, 0, 65539, 2, 0, 65540, 2, 0, 65541, 2, 0, 65542, 2, 0, 65543, 2, 0, 65544, 2, 0, 65545, 2, 0, 65546, 2, 0, 65547, 2, 0, 65548, 2, 0, 65549, 2, 0, 65550, 2, 0, 65551, 2, 0, 65552, 0, 0, 196607, 0, 0, 131072, 2, 0, 131073, 2, 0, 131074, 2, 0, 131075, 2, 0, 131076, 2, 0, 131077, 2, 0, 131078, 2, 0, 131079, 2, 0, 131080, 2, 0, 131081, 2, 0, 131082, 2, 0, 131083, 2, 0, 131084, 2, 0, 131085, 2, 0, 131086, 2, 0, 131087, 2, 0, 131088, 0, 0, 262143, 0, 0, 196608, 2, 0, 196609, 2, 0, 196610, 2, 0, 196611, 2, 0, 196612, 2, 0, 196613, 2, 0, 196614, 2, 0, 196615, 2, 0, 196616, 1, 0, 196617, 2, 0, 196618, 2, 0, 196619, 2, 0, 196620, 2, 0, 196621, 2, 0, 196622, 2, 0, 196623, 2, 0, 196624, 0, 0, 327679, 0, 0, 262144, 2, 0, 262145, 2, 0, 262146, 2, 0, 262147, 2, 0, 262148, 2, 0, 262149, 2, 0, 262150, 2, 0, 262151, 1, 0, 262152, 1, 0, 262153, 1, 0, 262154, 2, 0, 262155, 2, 0, 262156, 2, 0, 262157, 2, 0, 262158, 2, 0, 262159, 2, 0, 262160, 0, 0, 393215, 0, 0, 327680, 2, 0, 327681, 2, 0, 327682, 2, 0, 327683, 2, 0, 327684, 2, 0, 327685, 2, 0, 327686, 2, 0, 327687, 2, 0, 327688, 1, 0, 327689, 2, 0, 327690, 2, 0, 327691, 2, 0, 327692, 2, 0, 327693, 2, 0, 327694, 2, 0, 327695, 2, 0, 327696, 0, 0, 458751, 0, 0, 393216, 2, 0, 393217, 2, 0, 393218, 2, 0, 393219, 2, 0, 393220, 2, 0, 393221, 2, 0, 393222, 2, 0, 393223, 2, 0, 393224, 2, 0, 393225, 2, 0, 393226, 2, 0, 393227, 2, 0, 393228, 2, 0, 393229, 2, 0, 393230, 2, 0, 393231, 2, 0, 393232, 0, 0, 524287, 0, 0, 458752, 2, 0, 458753, 2, 0, 458754, 2, 0, 458755, 2, 0, 458756, 2, 0, 458757, 2, 0, 458758, 2, 0, 458759, 2, 0, 458760, 2, 0, 458761, 2, 0, 458762, 2, 0, 458763, 2, 0, 458764, 2, 0, 458765, 2, 0, 458766, 2, 0, 458767, 2, 0, 458768, 0, 0, 589823, 0, 0, 524288, 2, 0, 524289, 2, 0, 524290, 2, 0, 524291, 2, 0, 524292, 2, 0, 524293, 2, 0, 524294, 2, 0, 524295, 2, 0, 524296, 2, 0, 524297, 2, 0, 524298, 2, 0, 524299, 2, 0, 524300, 2, 0, 524301, 2, 0, 524302, 2, 0, 524303, 2, 0, 524304, 0, 0, 655359, 0, 0, 589824, 0, 0, 589825, 0, 0, 589826, 0, 0, 589827, 0, 0, 589828, 0, 0, 589829, 0, 0, 589830, 0, 0, 589831, 0, 0, 589832, 0, 0, 589833, 0, 0, 589834, 0, 0, 589835, 0, 0, 589836, 0, 0, 589837, 0, 0, 589838, 0, 0, 589839, 0, 0, 589840, 0, 0 )
script = ExtResource( 2 )

[node name="Camera2D" type="Camera2D" parent="."]
offset = Vector2( 512, 300 )
current = true

[node name="Character" parent="." instance=ExtResource( 3 )]
position = Vector2( 549, 280 )

[node name="Target" parent="." instance=ExtResource( 5 )]
position = Vector2( 1779, 60 )
z_index = 1

[node name="PowerUp" parent="." instance=ExtResource( 4 )]
position = Vector2( 1779, 140 )

[node name="WinMessage" type="Label" parent="."]
visible = false
margin_left = 289.0
margin_top = 200.0
margin_right = 345.0
margin_bottom = 214.0
rect_scale = Vector2( 10, 10 )
text = "You Win!"

[node name="Timer" type="Timer" parent="."]
wait_time = 5.0
autostart = true

[connection signal="timeout" from="Timer" to="Character" method="_on_Timer_timeout"]
              [gd_scene load_steps=3 format=2]

[ext_resource path="res://powerupspeed.gd" type="Script" id=1]
[ext_resource path="res://sprites/jam-jar.png" type="Texture" id=2]

[node name="PowerUp" type="Position2D"]
script = ExtResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
position = Vector2( -4.76837e-07, 4.76837e-07 )
scale = Vector2( 0.8125, 0.8125 )
texture = ExtResource( 2 )
            [gd_scene load_steps=3 format=2]

[ext_resource path="res://target.gd" type="Script" id=1]
[ext_resource path="res://sprites/arrow-down.png" type="Texture" id=2]

[node name="Target" type="Position2D"]
z_index = 2
script = ExtResource( 1 )

[node name="Sprite2D" type="Sprite" parent="."]
texture = ExtResource( 2 )
    GDSC   B      p   �     ���ӄ�   �����Ŷ�   ���󶶶�   �����ᶶ   ���嶶��   ���������������   ����Ҷ��   �����Ӷ�   ����޶��   ������¶   ���������¶�   �������Ӷ���   ������������������Ҷ   �������ض���   ���������������ض���   ��������϶��   �������Ķ���   �������ƶ���   �������������Ķ�   ��������������������Ŷ��   �����϶�   ������������Ӷ��   �������Ŷ���   �����׶�   �������������Ӷ�   ��������������Ķ   �����������Ӷ���   ���������������������¶�   �������ٶ���   �����Ӷ�   �����������Ķ���   ���������������¶���   ����¶��   ��������ض��   ������������������������ض��   ����������¶   ������������Ŷ��   ����������������Ӷ��   ���������������Ŷ���   �������ض���   �����������ض���   ����Ҷ��   ���Ӷ���   ���Ҷ���   ��������������ض   �����Ҷ�   ����¶��   ����������Ķ   �������������Ŷ�   �����������������Ŷ�   ���Ӷ���   ���������������Ӷ���   �������Ӷ���   ��������Ҷ��   �������������ض�   ���������������϶���   ���������Ҷ�   �������Ѷ���   ���������������������Ӷ�   �������ض���   ����Ӷ��   ����������ٶ   ��������Ӷ��   �������������޶�   ����������������¶��   ���������������ض���      A     �B      Target        res://Creeper.tscn        PowerUp              TileMap    
      �               click               Creeper       Creeper already detected                                                           	   '   
   (      .      /      <      D      L      M      U      V      _      `      m      n      s      y      z      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +     ,   	  -     .     /     0     1   #  2   )  3   0  4   4  5   ;  6   <  7   =  8   C  9   H  :   I  ;   O  <   P  =   [  >   a  ?   b  @   m  A   n  B   u  C   |  D     E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S      T     U     V     W     X     Y   #  Z   )  [   1  \   9  ]   C  ^   D  _   E  `   L  a   T  b   f  c   r  d   y  e   {  f   |  g   }  h   �  i   �  j   �  k   �  l   �  m   �  n   �  o   �  p   3YY>�  N�  R�  OYY:�  Y:�  YY8P�  Q;�  �  Y;�  �  T�  YY;�  LMYY5;�	  �
  PQT�  P�  QY;�  �  P�  QY;�  �  P�  QYY;�  �  P�  QYY5;�  ?P�  QYY5;�  �
  PQT�  P�  QYY;�  �  Y;�  LMYY0�  PQV�  �  P�  T�  QYY0�  P�  QV�  ;�  �
  PQT�  P�  QT�  P�  Q�  ;�  �
  PQT�  P�  QT�  P�  T�  Q�  &�  �  V�  �  �  �  �  T�  �  P�  R�  Q�  &�  �  T�  V�  .�  ;�  �  P�  Q�  &�  V�  �  T�  P�	  Q�  &�X  P�  Q�	  V�  &�  V�  �  P�  Q�  �	  T�  �  P�  R�  Q�  �  P�  T�  Q�  .�  �  �  L�	  MYY0�  P�   QV�  &�   T�!  P�
  QV�  �  �"  PQ�  �  P�  T�  Q�  �  �  �  �#  P�"  PQQ�  YY0�$  PQV�  ;�%  �  �  �  ;�&  LM�  �  ;�'  �
  PQT�(  PQ�  )�)  �'  V�  �  &�)  T�*  T�+  P�%  QV�  �  ;�,  �)  T�  �  �&  T�-  P�,  Q�  .�&  �  Y0�#  P�.  V�  QV�  ;�/  �
  PQT�  P�  QT�  P�.  Q�  �	  T�  �/  �  Y0�  P�.  V�  QV�  ;�/  �
  PQT�  P�  QT�  P�.  Q�  ;�0  �
  PQT�  P�  QT�1  P�.  Q�  &�  T�2  PQ�	  �/  �  V�  �D  P�  Q�  .�  ;�3  �  T�4  PQ�  �3  T�  �/  �  �
  PQT�5  P�3  Q�  �  T�-  P�/  Q�  �  �  �  YY0�  P�6  QV�  ;�7  P�6  �  QT�8  PQ�  �  ;�9  �7  �  �  �  �9  �  �  �  �  �:  PQ�  �;  �  T�<  PQ�  .�  T�=  P�6  Q	�  YYY0�  P�>  QV�  &�>  �  T�  V�  �  �
  PQT�  P�  QT�?  P�  R�  Q�  &�  �X  P�  Q�  V�  �  P�  T�  Q�  .�  �  �  �  �  L�  M�  �  �>  YYY0�@  PQV�  �  T�  �
  PQT�  P�  QT�A  PQY�  Y`GDSC            :      �������؄�   ������Ķ   ����������¶   �嶶   ������������Ӷ��   �����������������ڶ�   ����������������¶��   ������ƶ   ���������¶�   �������Ӷ���   ���������������Ŷ���   �������ض���   
         TileMap                                                     	      
                                       %      1      8      3YY2�  YY5;�  �  T�  PQY;�  YYYYYYYYYY0�  PQV�  ;�  �  PQT�	  P�  Q�  �  T�
  P�  QY`     GDST@   @            V  WEBPRIFFJ  WEBPVP8L>  /?��/0D�?p#H�ٟn� !A��>������mێI�����m�V��S[?a���6�m�6G�r������գ��mۦm��}ϻ�}�v� V"����m۶�d֎��o�ܧ���[m�2)����q6�ZД��9S��G4�gR� ""
�q�u��.�ѹm����s���<��=�g�_Xe������R��(�ڶ�ٶ��v^=��3X�/�"I@��05Nt��ѭ"P�D���(H�(�z�e��6��҂�y"��Zi��95�n���nózci�OT#��h �ӛN<��v]��t�����b�-_xjٙ����OT�@�a�����e�C&N� ��W� ^?�w��rg�F�W�47��1h(&NK���9��yO���·�� �B�(���"д?�k��P� �������+X�[<ވ�� ��!.Tl�lR�iu�ݼݾa�����w�4�gӛ Ý� �c�y�-�mU����U�8e�����m��Q����G)�6�5�d[>�l
X��O6��SǖO6�u�=]�U��	�b�e{��]��W�=�`�첇��a�\K��/	�-g�) ��D��@@��삺����b ��Q�Đ�-�6�t�o��s�}O�}��SGL�&��}z �>���S4������@���f�e�*6���Ã����  2�}�s��~2���(B��⛞����>�(��f�l: �!R�@�hMm�2ؔ{�=�!�9 ٧2y ����u���u���2X�;���-����� �r	��&Q��)�8ڠ��I��P�C #�|
���@��)�N��O �j��ܐ�򣂢%t���7�^_1ؿ`{~�)?�iA�E�
>[�_�@�Se�+�u���}�[uc}_����-7��>  [�m���������:��(8p+y�����$C�L�Qo����;PMW�Z��K�Eg�2�i��qSV��\����n��MPXIj�Z��O�����1���=h����3  ���ߝ���x��Og�� �m.���ʆP��g#@��7X�3$ =z]� �e��{���>�>�{y-6��hU E��o�)z$  ǏMb4��6��~.k�	`�+o5��~e�_`CX�j�jB��$7��I,����  �/%����6U�;Z��%�N?���/���ɼB
)������������~#L��LQ0ؠ��/G��
��G��*�B�c�9��٫`5Db�U �H !quD�D����٥: ϲ9�&�(��BV{�,߿�f�#�=V~۾�-�(P����Y[29k��2[$HL�/
�D6G�Ғ��LNm�)dB���c����.�K&Gs��KWT�
 \t�2@�(�l���6[�m����ޙ�*�y�(  d*hv',iZK�V�;���3��a^�ډP;���a"�0�1s���聅� ��|�fw<ش.�}�. @  <�8'���<����.]F�K���*�^@yD$^X�,�@�� ��y7Xrዳ�v�.��[_1�� �� �@�������ڏKw��zV
��2�|g��8����V�� ��?H���8sd����=R��W2
J��B^-�z`l	��hnc�{,�b�
  �Oߴ�v�;ipH%#����X�!��>ÿ(w&*�!�# ( SYY58�\P@�@�B�4Qnd@�B�kϪ����3�'V�m�'u��">Q�ե�#������������ucQ���Q	bw�r��(jb�%s�?#��O���rp�&��>��w���ԱW��Q`�>l�:�bu����85��LD 0��=��h`S �O�Xm~�Gl/6RL��������W�U�z�I�	(��gb7��C, 	 �( �yPQ 2� $ 
���:�}2d)PY��Ϻs7��$�����8P��Ye�#clD���X������A�C��b�!Q1}�ˑ(�R�@�؁�@�*�� ��1�*�X�=�G��"D�XF��HTds�1G�@AA@1=����58              [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              GDSC   a      �   �     ������ƶ   ����������������   ���������䶶   ����Ӷ��   ���Ӷ���   �������󶶶�   �������¶���   ����������������Ӷ��   ����涶�   ������   �������Ӷ���   ���   �����������������ض�   �����������ƶ���   ���������¶�   �������Ӷ���   �������ض���   ������������������ض   �����������������������ض���   ����������������ض��   ���������������������ض�   ����������޶   ���������Ӷ�   ����Ķ��   ����   ��������Ŷ��   �������������������Ҷ���   ��������������Ӷ   ��������Ӷ��   �����϶�   ������������������¶   �����������������������Ŷ���(   ������������������������������������ڶ��   �������Ŷ���   ����׶��   ���Ӷ���   ������Ӷ   ������������¶��   �����������϶���   ϶��   ζ��   ����¶��   �����Ҷ�   ����������ζ   ��������������������ζ��   ��������¶��    ���������������������������Ŷ���   ��������������Ӷ   ����ⶶ�   ���ⶶ��   ��������   �涶   �������������Ӷ�   �������������������ζ���   ��������������������Ŷ��   ��������¶��   �������������Ŷ�   ������϶   ������ζ   �������������޶�   ����������¶   ��������Ҷ��   ����������������޶��   ���������Ҷ�   ����������Ҷ   �����������Ҷ���   ����������������ζ��   ��������������ζ   �������������޶�   �����Ӷ�   �������������Ӷ�   ���ڶ���   ��������������Ӷ   ����Ӷ��   ��������������Ķ   ����������������ض��   �������������Ӷ�   ���������������Ķ���   ������������������ض   �����������������Ŷ�   �������������Ŷ�   ������������������Ŷ   ���������������Ŷ���   ��������Ŷ��   �������Ķ���   �������Ҷ���   �������ƶ���   ������������   ������������   ���������������ض���   �����������Ŷ���   ����������Ŷ   ��������������Ŷ   �����������϶���   �����������ζ���   ����������Ӷ   ������������������������ض��     @@      Obstacle      Creep         Ground           	   Character               Tilemap script ready.             
   WinMessage                                        Spreading Creep                                                  )   	   2   
   4      5      6      C      D      E      F      X      c      n      o      u      v      w      x      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .      /   
  0     1     2     3     4     5     6     7   %  8   &  9   '  :   ;  ;   >  <   ?  =   @  >   A  ?   B  @   C  A   D  B   E  C   L  D   R  E   Z  F   [  G   \  H   ]  I   d  J   k  K   r  L   y  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [   �  \   �  ]   �  ^   �  _   �  `   �  a   �  b   �  c   �  d   �  e   	  f     g     h     i   "  j   #  k   $  l   +  m   8  n   9  o   @  p   ]  q   ^  r   _  s   h  t   q  u   z  v   ~  w   �  x   �  y   �  z   �  {   �  |   �  }   �  ~   �     �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �     �     �   	  �     �     �     �   #  �   $  �   %  �   ,  �   3  �   9  �   =  �   >  �   G  �   O  �   W  �   Z  �   [  �   d  �   l  �   s  �   v  �   w  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �   
  �     �     �     �   $  �   0  �   7  �   @  �   A  �   G  �   Q  �   [  �   a  �   h  �   o  �   }  �   �  �   �  �   �  �   3YY:�  Y:�  �  T�  YY;�  N�  �  �  T�  P�  QR�  �  �  T�  P�  QR�  �	  �  T�  P�  QYOYYY8P�  Q;�
  �  T�  �  YYYY5;�  �  P�  PQT�  P�  QT�  QY5;�  �  P�  Q9�  Y5;�  �  P�  Q9�  YY;�  LMYYYY5;�  �  T�  PQYYY5;�  �  P�  T�  QY5;�  �  �  YYY0�  PQV�  �D  P�  Q�  ;�  �  P�  Q�  �   P�  Q�  Y0�!  P�"  QV�  &P�  P�  T�	  QT�#  PQ�  QV�  �  PQT�  P�	  QT�$  �
  YYYY0�  P�%  LMQV�  ;�&  LM�  )�'  �K  P�
  T�'  QV�  )�(  �K  P�
  T�(  QV�  ;�)  �  P�(  R�'  Q�  &�)  �%  V�  ,Y�  �&  T�*  P�)  Q�  �  �  �  ;�+  �,  P�)  Q�  �  �  �  T�-  P�+  R�  P�)  T�(  R�)  T�'  R�  QQ�  .�&  YYYYYYYY0�.  P�&  QV�  )�)  �&  V�  ;�+  �,  P�)  Q�  �  �  �  ;�/  �  PL�  �)  �  T�0  R�  �)  �  T�1  R�  �)  �  T�2  R�  �)  �  T�3  R�  MQ�  )�4  �/  V�  ;�5  �,  P�4  Q�  &�6  P�4  QV�  ,�  &�  T�7  P�5  QV�  ,�  �  �  �  �  �  T�8  P�+  R�5  R�  QYYYYY0�   P�&  QV�  )�)  �&  V�  ;�+  �,  P�)  Q�  )�9  �K  P�  QV�  )�:  �K  P�  QV�  ;�4  �  P�)  T�(  �:  �  R�)  T�'  �9  �  Q�  ;�5  �,  P�4  Q�  &�4  �)  �6  P�4  QV�  ,�  &�  T�7  P�5  QV�  ,�  �  T�8  P�+  R�5  R�
  QYYY0�,  P�)  QV�  .�)  T�(  �
  T�(  �)  T�'  YY0�6  P�)  QV�  .�)  T�(  	�  �)  T�'  	�  �)  T�(  �
  T�(  �)  T�'  �
  T�'  YYY0�;  P�<  R�=  QV�  T�  �  P�<  Q�  T�  �  P�=  Q�  �>  PQ�  ;�?  LM�  )�)  �  V�  ;�@  �A  P�  P�)  T�(  R�)  T�'  QQ�  �  �?  T�*  P�@  Q�  .�?  YYY0�>  PQV�  ;�B  �,  P�  Q�  ;�C  �,  P�  Q�  �  �  �  �  T�D  P�B  R�C  Q�  �  �E  PQYY0�F  P�G  V�  QV�  &�G  �  V�  .�  �  &�6  P�G  QV�  .�  �  .�
  YY0�H  P�G  V�  QV�  &�F  P�G  QV�  .�G  �  .YYY0�  P�I  QV�  �  �H  P�I  Q�  &�  �  �  V�  �>  PQYYY0�  P�I  QV�  �  �H  P�I  Q�  &�  �I  V�  �>  PQYY0�J  P�)  V�  QV�  ;�K  �  P�)  Q�  ;�L  �M  P�K  Q�  .�L  YY0�M  P�G  V�  QV�  ;�N  �A  P�G  Q�  ;�L  �N  �  �  .�L  �  Y0�O  P�)  V�  QV�  ;�K  �  P�)  Q�  ;�P  �  PL�  �M  P�K  �  T�0  QR�  �M  P�K  �  T�1  QR�  �M  P�K  �  T�2  QR�  �M  P�K  �  T�3  QR�  MQ�  .�P  YY0�Q  P�G  V�  QV�  ;�P  �  PL�  �G  �  T�0  R�  �G  �  T�1  R�  �G  �  T�2  R�  �G  �  T�3  R�  MQ�  .�P  �  Y0�R  P�)  V�  QV�  ;�K  �  P�)  Q�  ;�S  �Q  P�K  Q�  �S  T�*  P�K  Q�  �D  P�  Q�  )�T  �S  V�  ;�U  �F  P�T  Q�  ;�V  �W  P�T  Q�  T�  �  &�U  �V  V�  �X  P�T  R�  T�  QYY0�Y  PQV�  ;�Z  �  P�  T�	  Q�  ;�[  �  P�  T�  Q�  ;�\  LM�  �\  T�]  P�Z  Q�  �\  T�]  P�[  Q�  ;�^  �(  P�  R�\  T�#  PQQ�  ;�_  �\  L�^  M�  ;�`  �M  P�_  Q�  .�`  Y`         GDSC                   �������؄�   �����϶�                                                 	   	   
   
                                             3YYYYYYYYY0�  PQV�  -YYYYYY`     GDST@   @            �   WEBPRIFF�   WEBPVP8L�   /?�G��mz�ڶ�sf��q���m��)���)��0������5	pUko��A�A`XZ%�.AR�R���[��Fn�8�O����O��*��e!��M}Emq�h'��.9���Mr{�3Ȼ���-�ݘa�F�lD�]�S1����O�#G�̰R3|��}��Qz�2�3��q������R���Gc�3=���Ec��I��\��S4 [remap]

importer="texture"
type="StreamTexture"
path="res://.import/arrow-down.png-731b888694b5e10791cff9bd9784a9c1.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://sprites/arrow-down.png"
dest_files=[ "res://.import/arrow-down.png-731b888694b5e10791cff9bd9784a9c1.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
    GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m#�7�����mۆ��]�m#)N���q�F���=3���6�$�; ~,x�p�CaCc�la F�a�@�6!0-[���O��{�z/" Q
�&��5�d�5�V�j-"g@]�67m�	��B�4+Ԕ���q#�������u��af$��WD��mGN�]���b�|>�c+��V9�uǮu��Q��8��0�k��܎�P��� �A�;n>!�����]�k�URJ@ĉ��(�͈�سљ�H����p��l�5۩��'�?�D1;8XȢў?���L�^�>k�P��Df1 �Ɨ$2U�͎-�C�T��	 *ư&L�w|@nLQ`�g�h�)���h����L `�頴�i�,X�4b)|��_����	Q���盇8^~_����gA#�5(�q?�n�G��P��`T�I�\i�/�+�N4���
���~��XэB PY���A�}SyPnf�dXǉ�u��Ī���0�zv��Ľ�'��qODD����٥�G���$���q-���5SP�嬓���ӱ�b�lgA9�t[�S�H?�٦�i����2,:�i��Ӎ�~9�LúO
A/��^F�K������V�&�O&���T4��wRpw蝓j[���nv}�����_)]�$n��6��_������6�W߿��f���+qMC'ָ<���R_r�Y�s(�bH�JV���'�5Ó+ٚ��HR�����h$ a#��}���ٖL�ͬ�bv���.������۝��y�Q8=-s�����@�YN��Ȗ��a��L#�N�k�RX�/��D,�I�ܐ�(���@Š��BN�}!?,�5e:�p�郭��T)k�˽��6���s�Ќ�����ʹ��FQ�w2=�����!����l�����w�x�"�i~B6�>�iV�B��	NClK�$~aV
/@�,F%����j��i�3@�T�?Lܭ���w)        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/character.png-eb70ac48a5acf508c4b7740ea4ac4fae.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://sprites/character.png"
dest_files=[ "res://.import/character.png-eb70ac48a5acf508c4b7740ea4ac4fae.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
       GDST@   @            >   WEBPRIFF2   WEBPVP8L&   /?� 0�7��xP�HsNο�g��g�� ����#�      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/creep.png-9dc8d36f8c07adeefbc4d36436254221.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://sprites/creep.png"
dest_files=[ "res://.import/creep.png-9dc8d36f8c07adeefbc4d36436254221.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
   GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?�mɹ�?��QPж����D�4��8V����m��9I3?$�?\�`�!�X���ŃB,�A�A��ABB�b �B,�ABB�"�����{Qeꅠ^�2eB�ܳ�E�^) ""PD@@[ ��m�y�����Q1��\w�<O�Χ�#Ct|c��.�%���)���FR$����#��@S�h��R�@�t�4�W#J�6�|�
"~�W����*_{~�`2�/e���$H5����/M�����'R����K˚�ʻ�(	���e�,Z��B(f�8Sw��"ݹ��HCnH	�YD:�Tد�Q�FO:]�K=�L	��t/�ç:x�+\�YWK��������2=7/����� P&Mz4c�}|�y
��Y\��%���)rÚn;^A�<e��0�F�x�^�:p�D�7��ieq	��7�K�d�y��B��^1�Q��h���Cjލ���s_f�
�O"�����[�G2����k��~����w޲+uY�r4�w��R����߿�}���p��A8��|���z�������q2{�)@�E�\�R����~��o�;~����*�^�u���޿�»���p��\n�g_k�d��/�K���!Xu�Uq���4!�⤟��wT"� 72��I�ݫP@u��64ސ�ὍB=�ǯg�@�nJ���ã�M�͙Je9�����f	��Ǻam���s���J�/����n�Rd(k?Zou�IY�n���{ފ�>.fn���%U�eؚ �(�MF+[���Rb\w[Ϲ-Y��)9�@��^�c���D�Æ��N]�/K[�iTcF|����b�=�!���-��ؙ��F0���dl��dW�K��~ɺ�S;�Gt��� R��s=�d�����            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/creeper.png-bb0d444bde47cd215fc4d4e6ef6cea6d.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://sprites/creeper.png"
dest_files=[ "res://.import/creeper.png-bb0d444bde47cd215fc4d4e6ef6cea6d.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
             GDST@   @            @   WEBPRIFF4   WEBPVP8L(   /?� p��״�af�JIb���w��7�,���sђ�s    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/ground.png-55df20774d41ed101a891f191ec3738b.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://sprites/ground.png"
dest_files=[ "res://.import/ground.png-55df20774d41ed101a891f191ec3738b.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
GDST@   @            �  WEBPRIFF�  WEBPVP8Lv  /?�͈IS����82��7�"���S��I i������C�����������Y�rhD���������[7����.c;���ֆݝ�E���K�̳�<��_��mS�h۶�RI�$ː8q��)�t133N��L�q��1333���PC:�+v�$�
la�~N��|?�Q]]h#N:�3�m[G룝=�m۶7�(�N:�N5
�$d��6���7\ABc�%���E�4�J`(���e�m9���>�	��?%ߪQ      �!���r��{BW0$ 0\  @����v�4��  ��+ Tg K%���5  �|�*1��41��ɱj�@� � <	�o��}ގf�k4�� ��P�R-L�級bØY+�bq��%�(y�	9�;   V   ������B�9�9'��s�	s�̢�0�LFDA3�W��n_   R���VVG�?�QQ��g���� ��w�d��
ytr�qo:�](Uch�7�j%4#Rl�P"!x� ����5t	�Ҷ��*�   iwh�Y�-�15�"��;�KŻ�O�������kN\�)�; !��Q�L�zzq��!�(y��$'l!�Y�˳C�U�00ێ��5 (�������+���� � 
�K9�0��/��%r�i�������/h��+(i��� ��DF�zjld
E�[^�#!
��	9�Q�Ʊ�v�{� �`8J) �(�$!  0S�,z ��|��֟���9��Nk޹N��G!�EH%��AD�)�׺V�I+9��"��0hS rΏ�����(_��<!֚` �Tص�;
��$ X2}[�
��ܵ�(W]��1�R��N]~�D�7��z�v~�4)7D�Ut�!��� �L�*X�+�#�Z�B!�q���T$VEb]�[  ~X���X΁�c��N��{-�yF㚠&C(�XMP��J+��d�q��*����Dv�  @�JVl�0Ƙ� ���B�!��@OqE���Y�=nArVA��8�w� 8�"r2,[����DI��h�"�b���E��R�Q#���nXxH�Z��E��HPR PR��YτiOb��"E�#E�˰�d+Q��O.g�� �[��S���!��� �)�ߺ�|�;�\� ����𧻓O�<C�s9/��h��^��=�I!j�S�7�������R-�/�kȸ��Zu�NmA�B�(y�NY�BB!���	5��bn:��9�(�}��F
@�i  �o[ 1��l�4�y�k{�z�8�dw�Gu�-O�<��l~��V>#e��T����zy_yR��z�$@��"�  B�2��V0�<F:��b��s��A`  �E�/�g�g��3\�b�
N��9 �  ����O�=�ѝ�y=VY��ң����`��?<�Z-�q��у�p�6��K.(4��PPH H�������/8i6Nlm���"5{M�9���� 8   ���O�<��]�|"RB��ʜ����o^�p���a,b�D�u�\Aږ��Dn�3jʐb͖SE  ��$�5������]P�,��g;����k�  !ʚ��.a���o�`ۅ&d5w�B��V�{_�����'c����ŕ�+=Ҿz��w�tj8���� DXO��D�ژ�Z�8!NK��+'�{э�˜'��� �"����fe�T���S��ׅ�a��a��1q����2�eXc�=��z�?���`�>�h��:M�/<�y�&n�B���(#%eGj���#�8� ( ��y�ozƥ�:�]�O�ځ[O8{��XAmfH{��t
��h�u�)��.�VDpS��� �TF��lp}#3�m;�����lB%�Q��Z��/����v.u�d�Mi��E�:�>�
�v
�	.x�]��3h�ȶ��>5	V�����{&�+���E��w��p ^d�񙾿}�|�������:Ufpܔ���G�rY߷Ou������T
ڧA�9i?X�_<�����hd�hcN�P�X����b�� �T�/Т�a���S�v��df�iӻ��g5��N���TU��LC�f؍���"� �ŗ�"�N1�'n�4"4=GO���������n����rCH.������;I�W�^E��]�'ܺ��N,�x������Jj�u}2Qx`���C��7��k9S_M��:ʜ��M��հX��[͎�X~X_�z���
�=I=*��.�e���F��ҥaH��y�̓����a,.�Qc�"�;=�r1�ȩҾ*�Ь ���   4��B'g�vI��=3�*�
�l>/{�Fq�n�>������s�\㜰6ߧq�7�v;��1I���-�z����6�0����`t��ylCc����E���^��R�����Y_Y��*�F�R��0S����O��]Nx��E��۩�Uzj�*-���H��!ݼa)�Y�QC�ir"�{��q������L��Vh�ާo����G�i=����&��+CF�]���N��w���p��_�vn&ej��5M%�L�ZB�+�e����5�����2.y�r�n-T>� 
�uv٤���6F�U���KG]-Wi,c��]��YE�Z��|��?���*9��+�b�9qH�ҤxU5���9IG$�<��>�P���L�qz�˙�k�+ � .�m������]v9���˝��Y�:�Ơ�U{�¥�X�J��Ok� �L�nE��r�Nz���	:*^�	��y��W}��?��,����ʨl��
�\��=��	� +x,Z��)�x�
��#|�̀�Mrɻp%Βd���u����N±7h"�P|�M9�UQ�Ey��PA7A����q}�[ڟw��ٯ��	��~zC��b�BI눖�jy����G���O����8�՝���]U�r��N���hV���n �C;�s�u����Ȟ}��6.q�~�#K�e�z���XEO:%8耨�j\j���I�/��r{ŢGy(��G�
%���cNk�;����I���o�by�M��o1����(j(M�y��L� ��� �6��ց��g���������Jׯ �z�r��}�	�������*  �@��K��ek{����X-�����
u��� @\�)��iGN��(G�"�(��(6F������NR��3�X.X.  x�LQ��_�y��$vX�w���]vKl�9����U`�a�1�]k��7�2e�>=��x>�"���U`��*��j�Ȇ{���?��4Le]�s�I�pr'��	�$B���
{�%br�4�;�k0B�@ �*|IS<��/L���z�s�5�1l��m߸D�������z��R	�2  TSѻ3p���~����>?��KS�uk���wͰ?�I���VǬ����PwJZ�)Zh�ΐ�%�|�mb�&��	�a�O���0sx)�J,h��m,댚�-cbآc��s}�s�����W�)Yu�I�ȝ�t�0t
�2@�,����ۆ�������	Ni�0��|�Ui�ˍ�N��,�c���Zfk���]�B�B������`( (� `�i��̡�����/�L�yv���ؑ�E���d')N�K�q&��R5�x�=�+��|[k��s�����0~G��0e��j6"ow�24  � Ni����u��8M5-��;!���Y������B�����3�
��   �JT�smR�r��ѓ~>����4�|��7��u�C\0�j�E �����7�i�1�gRB�g�3�^'�[���@3a�� �(���TK>V_��M$�T
��/S9 ��U�p� bb�����6<�Q��
�������	o XE�  $�2 x�t��3��'â��_0�S���=!��[�/#q����V^�(�ͺσ`3_��AlZoB7�i-$�N�TWc�)��1�,�3?c;�ԯs��.��4��B&xd�-I@�h F �5�WV�~6/ {�W�_g���Uܷ��y���i�M+�w�Sr�M��V�M8޵~N�������|�{�̕zo�^l�}�`���tS����s�0� ������.̐��u��J������65���������h}�f](n �Pr�_xe�>}L��W���f�1k8O�vJ�-K۷3y����ߙ0��$�+[�%.R���:�Ӂwz\CLBy�%��b�"-^KDtL^�O��H���1�f�������[��)��v��'��u/� D���p��6�?[�A�������)��� �X��}��[�֝� �N��y�;K�Y���bWl��   �l��E���˭�_n���-�w�Xbt��5٠���WBĭe�=�{��h���X�{ �+aa@H�q�]bB�O�T�/5[�mm���.�2���7�a|�9��1�8�  �iţ����V�� ��߻�� �<��s��Z��<��@ϋ�a�ω����w��qJ�8S���o&�� �)�	 @�$�J��6?�Bm���6�H��61���33��OF%����?uҗ�^&���W4�|י� @D  �u:�DX��ͅx�p�NE�:m���N�"�w%�O�BE�h�^+  ta\�b �]ϓ?����i���'  �"f�hn!mJFk�s�N��5}ژ�P`\|L^�Y��s�� �  (��V^�eWo܍���v`0(��c��U�Me%>V��׷�w�r хqV�I^�1v\���[ۭz2d   �t�ԉXr��w/pnl=07nC�����M��s7Sg}k6Bk�X���N�ǧ\o,��LXtD�sP��)�JK[�����)$��7�. }��S���AƎ�������.<��>y9C��֡� @���>s�@	��X۞��54:.o�n�NQ�@Շ	�T�9 'qf���MӸ�$��߭��f+E�MZV6�)9�y��u(  XE�̈́w |_lDd��g��+�b���>��
jAX  ĈH���E�!燁_Ƹ�ԑ8���B-]���ͻql��,ϣ��%����e�.����%��tK[�����~6GQ% 
Ѡ�o� �( �?
 �]@Tl0��;�a�k�����
j@�C-(��q(�H��^�<s�,�_���8����f{&0!�g�;yH�c?Ԛu��v'Vĺ�7etB%��8�(��G��A�jٵak��$_q��e\Q ān�����5U�%��{������6/�3F�cP��:2��G��c�S����� 4�)_η���I�'�R��S�,J�=+�|At0�����l@��������ɦ���S�8;�7=�Vkܮ��a��2 � @5 ��������/y��|e�S��{���aA�3�U3!�EF�͊gsG�Q��x����E��(j��_;	�:�����f���5�N���jX]���X����O����&;�h%�V�����1���vwJ4�W��;�X�Q��|V��3Tш�o+3,L{�f��f���٫��
|ktJ?R�eN)F�8����jŮ�4DP�n�C
�یD�C��Q�J���]X7B 17C��"ɽLUo¡;�!�P ���5P  ��K xV��?��Y��k�Ɠ�{�iO�q�7Nyhe\�TٵCe�����9PO�:n��\��ؘ��%q��u}56�ʯS��PK�Ui�1�W�$�iĒݍjy�Q��x8����^�|oD�Z�9%    JK-��$  u@T�}��k�4=��Q��[jAY�s)����["�G��D�En��LJ��x�қ�5!�9h��
,��fvE=�+�kI &],P���38{�����q�gFQ)4	�S  ���z�+�� @���1[c�_7h�3����P��������ڍ���:�:�eѭ�ᴳ?4�=�x�+��([{)�U�d�Ry݅�E��\O�֨��Ĉ'�x���!k�&�)�a  >�a �K%,�"n��ׯ6���|��֔����(��׸j�ڸc�g��^��ҡ�g�ud����W%0�pZ��R��9�R�^��A�UI�:u۝���^W�mdH�f �  �*J�'|�)n `�^䠝�<��k��9[�D䅏L��x`�A".WW�����QM�ry#��k�{N�4l�	��b�Z�k�eRz��8�>�ȳ�[w.޿�#4	-c� ��~�	 ��HA;#��楆�,P'־Qs�� A	c����Ɉ�Hf<��6I~"�7��=C�
IL[�yJTV.å�Ջ�ѕ3�t��������j�'  ���Z���w   ��rV���}��ub�g���^e��R���k�o�"�94v���abe�8������+ϥ|+�ܞp�Es�#��Z�ST6̕��Q oy92�z���!Z�;�� �#�� �H-�a'�9L.'����r%�^���]�y` oV�t7�s���)��Z�gZ�bD_)wBu�k:5�-�D���W�v��U��A�U4� ��������l�  ��pݐ�Tߚ��e&�[$|TPUn��	����Ux=��43�8�N�m�iRQ%���iܻ^��N��o45f�/Wx}����>x�E�ұ����02�Y�^ ? ��i?`�B���y`�ϖ�4�}Ԯr"���q���W�����e�VP��� Y�N��j�JX+{�2!�׏}��9m	Zi �   �@�j�b/��JS� :��~0�����c���?]f��!��J���u�=�TM��Du������J7MRߘ���,�?U�e�O�q���T^ F  X�;���F��� M� `� ��*��mx/$�>�zLf�b���sD��4.*JM%�M�q��O�O:�M���P׭!r�'Ǿ7������L��2 <�- ԓ  � AX�J�yׯx���zT����!�/͔������ZaB�VPk�ր�\=��G�s�9@a�c����a�; ��S����� �X��BӘH�2Uʍ%��NiNJ���x�̻\9�o���`�� ��Ӂ�f% J �K�Q�s̀ֱXn0� L3�0�1�z��1N����k	?I?�����1/�+~w�   � �c�\�LL�a
�4�� @��0��<V����.
WR n %��� ����7�r+��6 ��q�7��K� ����S~�        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/jam-jar.png-2a1b22f805a5e8e9bf4eb46917586ec3.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://sprites/jam-jar.png"
dest_files=[ "res://.import/jam-jar.png-2a1b22f805a5e8e9bf4eb46917586ec3.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
             GDST@   @            B   WEBPRIFF6   WEBPVP8L)   /?� p�ˠ]m�j�Fb���g�z����9!忑s   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/obstacle.png-0258c5f5ce65bfa0dd8610adeb784f54.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://sprites/obstacle.png"
dest_files=[ "res://.import/obstacle.png-0258c5f5ce65bfa0dd8610adeb784f54.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
          GDSC                   �������؄�   �����϶�                                                 	   	   
   
                                             3YYYYYYYYY0�  PQV�  -YYYYYY`     [gd_resource type="TileSet" load_steps=4 format=2]

[ext_resource path="res://sprites/obstacle.png" type="Texture" id=1]
[ext_resource path="res://sprites/ground.png" type="Texture" id=2]
[ext_resource path="res://sprites/creep.png" type="Texture" id=4]

[resource]
0/name = "Obstacle"
0/texture = ExtResource( 1 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 0, 0, 64, 64 )
0/tile_mode = 0
0/occluder_offset = Vector2( 32, 32 )
0/navigation_offset = Vector2( 32, 32 )
0/shape_offset = Vector2( 0, 0 )
0/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
0/shape_one_way = false
0/shape_one_way_margin = 0.0
0/shapes = [  ]
0/z_index = 0
1/name = "Creep"
1/texture = ExtResource( 4 )
1/tex_offset = Vector2( 0, 0 )
1/modulate = Color( 1, 1, 1, 1 )
1/region = Rect2( 0, 0, 64, 64 )
1/tile_mode = 0
1/occluder_offset = Vector2( 32, 32 )
1/navigation_offset = Vector2( 32, 32 )
1/shape_offset = Vector2( 0, 0 )
1/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
1/shape_one_way = false
1/shape_one_way_margin = 0.0
1/shapes = [  ]
1/z_index = 0
2/name = "Ground"
2/texture = ExtResource( 2 )
2/tex_offset = Vector2( 0, 0 )
2/modulate = Color( 1, 1, 1, 1 )
2/region = Rect2( 0, 0, 64, 64 )
2/tile_mode = 0
2/occluder_offset = Vector2( 32, 32 )
2/navigation_offset = Vector2( 32, 32 )
2/shape_offset = Vector2( 0, 0 )
2/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
2/shape_one_way = false
2/shape_one_way_margin = 0.0
2/shapes = [  ]
2/z_index = 0
   [gd_scene load_steps=4 format=2]

[ext_resource path="res://sprites/obstacle.png" type="Texture" id=1]
[ext_resource path="res://sprites/ground.png" type="Texture" id=2]
[ext_resource path="res://sprites/creep.png" type="Texture" id=4]

[node name="Tileset" type="Node2D"]

[node name="Obstacle" type="Sprite" parent="."]
position = Vector2( 32, 32 )
texture = ExtResource( 1 )

[node name="Creep" type="Sprite" parent="."]
position = Vector2( 190, 32 )
texture = ExtResource( 4 )

[node name="Ground" type="Sprite" parent="."]
position = Vector2( 112, 32 )
texture = ExtResource( 2 )
       [remap]

path="res://character.gdc"
            [remap]

path="res://creeper.gdc"
              [remap]

path="res://pathfind_astar.gdc"
       [remap]

path="res://powerupspeed.gdc"
         [remap]

path="res://target.gdc"
               �PNG

   IHDR   @   @   �iq�  �IDATx���x#M��nR%�4��6_�:�է�m�Lm�m۶m���ig���M�}.[\�y�_���?�@�-�҂��x��S����x�;�K�w엊n�'��u���bX�-6-�N�*P��Fuw��G� ��{�+�[�K�~3h����.�$_����0п��~�T�w�^�1�o]s5^w[��i�Oσܛ�'�F�0|����zz��c<���T��.4n�hH��$R���R,�X��[k ��h��Sn�챐��wMuL	��ש5 �t�}��U �#!	ߧZ��?���6���Zy�kg�[n Z0��ǥ�ƾw������^s�������bu@���g��g�7 �u���R�����:�A���~2|}���"4�>3�J��?�T� O�*�o� ��U�Db)��Za��^�=8��ی1KK��� ���w�XM�K:'������Tފn�-;�h� �9d�������}�}:-�N�7᳻ ����W�/:���H�ޠ!Py}�@����Y����wӝ,lx oqM �f������7Yc�d�:ӥ+7�.[��t��5�U�W�L-��Mi���g˛o��pp�����Ĥ��
��?�nLw�C��#
՜���Ŧ	���J߈v��bwwJOtC��`	,о�6:�v _;���.������X�M��f���gZG8X��b�eз�2�҃�q?cX9���~#��n�5M ��z��{��,b�, ��`.��9�z+�p&�:����<wMK�
��x�$ހ�樹�ۋJ[������K���|�̄�nql��}/� �kp�=��uA�0�{��,/�����6涵�KW�g��3���.� �Y�g��/(�YH��'[�@0]�_�5�7�x�����z���D�#B�k� <xH,���Cb��e������֧�vh�vbl�qD�pq�GPG�q8�֤'��d�R  ��U�B�� �� H���T�:~�_y ��x</7H��vs�v�bֱ%N�V_���]�<�;m�bvʓK�)�L���2̓��Fc���k��~����:�_��,�\���iuZk��b;� ���a	\���J�}C(������\\t��2Į���R���Aն`���,��JNRMU��0��z�
X���hVV���̙��V+Q���0�qýT?��c��k�������X�p!�<y��p�W�7s��|���姧y �e�L��\驚 �e+F��� �N�J������f̘Q��a�Ю�hwA� !���Q��J�Aɿ��P ��:+EY%%�?�$�����G5�g�����������.���97Q2�FJ��Mɪ��@ ��%�^�r~�dۋ�]n���J5?�pG?m`�CCk���
J�<� k(�j� �:o�&�{J��+O��1Zy ���"��%��R��
(Y�8%�_���ǔ����wy�­+ o � �T+��\=� �233=�zPxDHm, {=�� T� 
P�E) �f��m��x�8��*y�8+���E3���NJJʈ��/���+�r���R�Y9��'p���?��*� � (��ڳ�戮>Е?�ח_�!��*���,dJ����ޢ3H��"���[eZ0i�'U%����x��۴ �.�4�    IEND�B`�              ECFG      _global_script_classes�                     base   
   Position2D        class         Creeper       language      GDScript      path      res://creeper.gd   _global_script_class_icons                Creeper           application/config/name,      !   Grid-based Pathfinding with Astar      application/config/description�      }   This is an example of using AStar for navigation in 2D,
complete with Steering Behaviors in order to smooth the movement out.      application/run/main_scene         res://Game.tscn    application/config/icon         res://icon.png     display/window/dpi/allow_hidpi            display/window/stretch/mode         2d     display/window/stretch/aspect         expand     input/click�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script      $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2                    