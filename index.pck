GDPC                                                                               D   res://.import/character.png-eb70ac48a5acf508c4b7740ea4ac4fae.stex   D            Ï�)��EZ|��8�@   res://.import/creep.png-9dc8d36f8c07adeefbc4d36436254221.stex   �J      Z       �#y����@u-t�VO@   res://.import/creeper.png-bb0d444bde47cd215fc4d4e6ef6cea6d.stex  N      �      ��y`}Ew�ӯK��?�<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�$      r      ��Ms@b(!³��m��@   res://.import/obstacle.png-0258c5f5ce65bfa0dd8610adeb784f54.stex�T      ^       H�\�.�u}��*��g@   res://.import/path_end.png-02b79e25892cd8d863bd44c3c5a1720e.stex�W      �       >�ʕ��,ۼa>�<?D   res://.import/path_start.png-475bd0b469629aa8779d506c5134e5c2.stex  0[      �      ����?���dV�KH�Q   res://Character.tscn       A      &+�q��6��Qk:�   res://Creeper.tscn  P	      -      HedQ�[Y����'�   res://Game.tscn �
      �      ������+�e���nU{   res://character.gd.remap@j      $       ��ߖ$���-#.�Mu   res://character.gdc p      �      ޘ#�LN�������t   res://creeper.gd.remap  pj      "       `ۻ �	ЙߑP�D   res://creeper.gdc   P$      o       ��'�1��,��c�zl   res://icon.png  �j      �      �u���?��D�K��   res://icon.png.import   @-      �      ��fe��6�B��^ U�    res://pathfind_astar.gd.remap   �j      )       ��5�S�#�Qf����   res://pathfind_astar.gdc�/             t�}Z�v*-NZ�q   res://project.binary�q      �      ^��`�*�fG���i$   res://sprites/character.png.import  0H      �      �~��9�5T@�I    res://sprites/creep.png.import  PK      �      {�1~=�vs��*Ӛ`�    res://sprites/creeper.png.import�Q      �      ��st�x�Q���Ur&$   res://sprites/obstacle.png.import   U      �      .�%��P�N��5E�$   res://sprites/path_end.png.import   pX      �      @�D���Ff��L	�y$   res://sprites/path_start.png.import �\      �      m�#w��=���   res://tileset/tileset.tres  �_      �      ���![�}��`@�gl$   res://tileset/tileset_source.tscn   @g      �      _B*���
�
���\    [gd_scene load_steps=3 format=2]

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
   [gd_scene load_steps=4 format=2]

[ext_resource path="res://tileset/tileset.tres" type="TileSet" id=1]
[ext_resource path="res://pathfind_astar.gd" type="Script" id=2]
[ext_resource path="res://Character.tscn" type="PackedScene" id=3]

[node name="Game" type="Node2D"]
position = Vector2( 1, 0 )

[node name="TileMap" type="TileMap" parent="."]
tile_set = ExtResource( 1 )
format = 1
tile_data = PoolIntArray( -1, 0, 0, -65536, 0, 0, -65535, 0, 0, -65534, 0, 0, -65533, 0, 0, -65532, 0, 0, -65531, 0, 0, -65530, 0, 0, -65529, 0, 0, -65528, 0, 0, -65527, 0, 0, -65526, 0, 0, -65525, 0, 0, -65524, 0, 0, -65523, 0, 0, -65522, 0, 0, -65521, 0, 0, -65520, 0, 0, 65535, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 3, 0, 0, 4, 0, 0, 5, 0, 0, 6, 0, 0, 7, 0, 0, 8, 0, 0, 9, 0, 0, 10, 0, 0, 11, 0, 0, 12, 0, 0, 13, 0, 0, 14, 0, 0, 15, 0, 0, 16, 0, 0, 131071, 0, 0, 65536, 0, 0, 65537, 0, 0, 65538, 0, 0, 65539, 0, 0, 65540, 0, 0, 65541, 0, 0, 65542, 0, 0, 65543, 0, 0, 65544, 0, 0, 65545, 0, 0, 65546, 0, 0, 65547, 0, 0, 65548, 0, 0, 65549, 0, 0, 65550, 0, 0, 65551, 0, 0, 65552, 0, 0, 196607, 0, 0, 131072, 0, 0, 131073, 0, 0, 131074, 0, 0, 131075, 0, 0, 131076, 0, 0, 131077, 0, 0, 131078, 0, 0, 131079, 0, 0, 131080, 0, 0, 131081, 0, 0, 131082, 0, 0, 131083, 0, 0, 131084, 0, 0, 131085, 0, 0, 131086, 0, 0, 131087, 0, 0, 131088, 0, 0, 262143, 0, 0, 196608, 0, 0, 196609, 0, 0, 196610, 0, 0, 196611, 0, 0, 196612, 0, 0, 196613, 0, 0, 196614, 0, 0, 196615, 3, 0, 196616, 3, 0, 196617, 3, 0, 196618, 0, 0, 196619, 0, 0, 196620, 0, 0, 196621, 0, 0, 196622, 0, 0, 196623, 0, 0, 196624, 0, 0, 327679, 0, 0, 262144, 0, 0, 262145, 0, 0, 262146, 0, 0, 262147, 0, 0, 262148, 0, 0, 262149, 0, 0, 262150, 0, 0, 262151, 3, 0, 262152, 3, 0, 262153, 3, 0, 262154, 0, 0, 262155, 0, 0, 262156, 0, 0, 262157, 0, 0, 262158, 0, 0, 262159, 0, 0, 262160, 0, 0, 393215, 0, 0, 327680, 0, 0, 327681, 0, 0, 327682, 0, 0, 327683, 0, 0, 327684, 0, 0, 327685, 0, 0, 327686, 0, 0, 327687, 3, 0, 327688, 3, 0, 327689, 3, 0, 327690, 0, 0, 327691, 0, 0, 327692, 0, 0, 327693, 0, 0, 327694, 0, 0, 327695, 0, 0, 327696, 0, 0, 458751, 0, 0, 393216, 0, 0, 393217, 0, 0, 393218, 0, 0, 393219, 0, 0, 393220, 0, 0, 393221, 0, 0, 393222, 0, 0, 393223, 0, 0, 393224, 0, 0, 393225, 0, 0, 393226, 0, 0, 393227, 0, 0, 393228, 0, 0, 393229, 0, 0, 393230, 0, 0, 393231, 0, 0, 393232, 0, 0, 524287, 0, 0, 458752, 0, 0, 458753, 0, 0, 458754, 0, 0, 458755, 0, 0, 458756, 0, 0, 458757, 0, 0, 458758, 0, 0, 458759, 0, 0, 458760, 0, 0, 458761, 0, 0, 458762, 0, 0, 458763, 0, 0, 458764, 0, 0, 458765, 0, 0, 458766, 0, 0, 458767, 0, 0, 458768, 0, 0, 589823, 0, 0, 524288, 0, 0, 524289, 0, 0, 524290, 0, 0, 524291, 0, 0, 524292, 0, 0, 524293, 0, 0, 524294, 0, 0, 524295, 0, 0, 524296, 0, 0, 524297, 0, 0, 524298, 0, 0, 524299, 0, 0, 524300, 0, 0, 524301, 0, 0, 524302, 0, 0, 524303, 0, 0, 524304, 0, 0, 655359, 0, 0, 589824, 0, 0, 589825, 0, 0, 589826, 0, 0, 589827, 0, 0, 589828, 0, 0, 589829, 0, 0, 589830, 0, 0, 589831, 0, 0, 589832, 0, 0, 589833, 0, 0, 589834, 0, 0, 589835, 0, 0, 589836, 0, 0, 589837, 0, 0, 589838, 0, 0, 589839, 0, 0, 589840, 0, 0 )
script = ExtResource( 2 )

[node name="Camera2D" type="Camera2D" parent="."]
offset = Vector2( 512, 300 )
current = true

[node name="Character" parent="." instance=ExtResource( 3 )]
position = Vector2( 549, 280 )
               GDSC   >      ^        ���ӄ�   �����Ŷ�   ���󶶶�   �����ᶶ   ���嶶��   ���������������   ����Ҷ��   �����Ӷ�   ����޶��   ������������������Ҷ   �������ض���   ���������������ض���   ��������϶��   ��������������Ӷ   ���������������������Ҷ�   �������Ķ���   �����϶�   ������������Ӷ��   �������Ŷ���   �����׶�   ���������������������¶�   �������ٶ���   �����Ӷ�   ���������������¶���   ����¶��   ��������ض��   ���������������Ŷ���   ������������������������ض��   ���������������������Ӷ�   �����������Ӷ���   �嶶   �������������ն�   ����������Ķ   ���������¶�   �������Ӷ���   ��������������Ķ   �������������Ŷ�   �����������������Ŷ�   �������Ŷ���   ������������Ŷ��   ���Ӷ���   ���������������Ӷ���   �������Ӷ���   ��������Ҷ��   ����������������Ӷ��   ���������������Ŷ���   �������ض���   �����������ض���   ����Ҷ��   ���Ӷ���   ���Ҷ���   ��������������ض   �����Ҷ�   �������������ض�   ���������������϶���   ���������Ҷ�   �������Ѷ���   �������ض���   ����Ӷ��   ����������ٶ   ��������Ӷ��   �������������޶�      A     HC         333333�?      res://Creeper.tscn        click        zD      Double click detected!        TileMap       Creeper already detected      Creeper                                                            	   '   
   (      .      6      >      ?      G      H      N      T      U      ^      _      e      l      m      n      u      }            �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /     0     1     2   &  3   +  4   -  5   .  6   7  7   =  8   F  9   J  :   M  ;   Q  <   R  =   X  >   ]  ?   ^  @   d  A   e  B   p  C   v  D   w  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W     X     Y   
  Z     [     \     ]     ^   3YY>�  N�  R�  OYY:�  Y:�  YY8P�  Q;�  �  Y;�  �  T�  YY;�  LMY;�	  �  P�
  QY;�  �  P�
  QYY;�  �  P�
  QYY;�  V�  Y;�  V�  YY5;�  ?P�  QYY0�  PQV�  �  P�  T�  QYYY0�  P�  QV�  &�  �  T�  V�  .�  ;�  �  P�	  Q�  &�  V�  �  T�  P�  Q�  &�X  P�  Q�  V�  �  P�  T�  Q�  .�  �	  �  L�  MYY0�  P�  QV�  &�  T�  P�  QV�  ;�  �  PQ�  �  �  PQ�  �  P�  T�  Q�  �  PQ�  ;�  �  T�  PQ�  �  &P�  �  Q	�  V�  �D  P�  Q�  ;�   �!  PQT�"  P�  QT�#  P�  Q�  ;�$  �!  PQT�"  P�  QT�%  P�  Q�  ;�&  �'  PQY�  &�&  T�(  PQ�  �   �&  V�  �D  P�	  Q�  .Y�  ;�)  �  T�*  PQ�  �)  T�
  �   �  �!  PQT�+  P�)  Q�  �  �  �  (V�  �  �  YY0�'  PQV�  ;�,  �
  �  �  ;�-  LM�  �  ;�.  �!  PQT�/  PQ�  )�0  �.  V�  �  &�0  T�1  T�2  P�,  QV�  �  ;�3  �0  T�
  �  �-  T�4  P�3  Q�  .�-  YY0�  P�5  QV�  ;�6  P�5  �
  QT�7  PQ�  �  ;�8  �6  �  �  �  �8  �  �  �
  �  �  PQ�  �9  �  T�:  PQ�  .�
  T�;  P�5  Q	�  YYY0�  P�<  QV�  &�<  �  T�  V�  �  �!  PQT�"  P�  QT�=  P�
  R�  Q�  &�  �X  P�  Q�  V�  �  P�  T�  Q�  .�  �  �  �	  �  L�  M�  �  �<  Y`           GDSC                   �������؄�   �����϶�                   	            3YY0�  PQV�  -Y` GDST@   @            V  WEBPRIFFJ  WEBPVP8L>  /?��/0D�?p#H�ٟn� !A��>������mێI�����m�V��S[?a���6�m�6G�r������գ��mۦm��}ϻ�}�v� V"����m۶�d֎��o�ܧ���[m�2)����q6�ZД��9S��G4�gR� ""
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
              GDSC   L      �   �     ������ƶ   ����������������   ���������䶶   ����Ӷ��   �������Ӷ���   �������󶶶�   ����ⶶ�   ���   ����涶�   �������Ӷ���   ���   �����������������ض�   �����������ƶ���   ���������¶�   �������Ӷ���   �������ض���   ������������������ض   �����������������������ض���   ����������������ض��   ���������������������ض�   ����������޶   ���������Ӷ�   ����Ķ��   ����   ��������Ŷ��   �������������������Ҷ���   ��������������Ӷ   ��������Ӷ��   �����϶�   ������������������¶   �����������������������Ŷ���(   ������������������������������������ڶ��   ������������¶��   �����������϶���   ϶��   ζ��   ����¶��   �����Ҷ�   ����������ζ   ��������������������ζ��   ��������¶��    ���������������������������Ŷ���   ��������������Ӷ   ����ⶶ�   ���ⶶ��   ��������   �涶   �������������Ӷ�   �������������������ζ���   ��������������������Ŷ��   ��������¶��   �������������Ŷ�   ������϶   ������ζ   �������������޶�   ����������¶   ��������Ҷ��   ����������������޶��   ���������Ҷ�   ����������Ҷ   �����������Ҷ���   ����������������ζ��   ��������������ζ   �������������޶�   �����Ӷ�   �������������Ӷ�   ���ڶ���   ����Ӷ��   ��������������Ķ   ����������������ض��   �������������Ӷ�   ���������������Ķ���   ������������������ض   �����������������Ŷ�   �������������Ŷ�   ������������������Ŷ     @@                                  	   Character         Tilemap script ready.                                                                           	   #   
   '      )      *      +      8      9      :      ;      M      X      c      d      j      k      l      m      w      x      y      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   
  8     9     :     ;     <     =     >     ?     @     A   !  B   )  C   *  D   +  E   ,  F   3  G   :  H   A  I   H  J   O  K   R  L   X  M   `  N   g  O   i  P   s  Q   u  R   v  S   w  T   x  U   y  V   �  W   �  X   �  Y   �  Z   �  [   �  \   �  ]   �  ^   �  _   �  `   �  a   �  b   �  c   �  d   �  e   �  f   �  g   �  h   �  i   �  j     k     l     m   ,  n   -  o   .  p   7  q   @  r   I  s   M  t   S  u   Y  v   l  w   s  x   v  y   w  z   x  {   ~  |   �  }   �  ~   �     �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �     �     �     �   #  �   *  �   -  �   .  �   7  �   ?  �   F  �   P  �   Z  �   d  �   n  �   q  �   t  �   u  �   ~  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   3YY:�  Y:�  �  T�  YY>�  N�  �  �  R�  �  �  R�  �  �  R�  �  �  YOYYY8P�  Q;�	  �  T�
  �  YYYY5;�  �  P�  PQT�  P�  QT�  QY5;�  �  P�  Q9�  Y5;�  �  P�  Q9�  YY;�  LMYYYY5;�  �  T�  PQYYY5;�  �  P�  T�  QY5;�  �  �  YYY0�  PQV�  �D  P�  Q�  ;�  �  P�  Q�  �  P�  QYYYY0�  P�   LMQV�  ;�!  LM�  )�"  �K  P�	  T�"  QV�  )�#  �K  P�	  T�#  QV�  ;�$  �  P�#  R�"  Q�  &�$  �   V�  ,Y�  �!  T�%  P�$  Q�  �  �  �  ;�&  �'  P�$  Q�  �  �  �  T�(  P�&  R�  P�$  T�#  R�$  T�"  R�  QQ�  .�!  YYYYYYYY0�)  P�!  QV�  )�$  �!  V�  ;�&  �'  P�$  Q�  �  �  �  ;�*  �  PL�  �$  �  T�+  R�  �$  �  T�,  R�  �$  �  T�-  R�  �$  �  T�.  R�  MQ�  )�/  �*  V�  ;�0  �'  P�/  Q�  &�1  P�/  QV�  ,�  &�  T�2  P�0  QV�  ,�  �  �  �  �  �  T�3  P�&  R�0  R�	  QYYYYY0�  P�!  QV�  )�$  �!  V�  ;�&  �'  P�$  Q�  )�4  �K  P�  QV�  )�5  �K  P�  QV�  ;�/  �  P�$  T�#  �5  �  R�$  T�"  �4  �  Q�  ;�0  �'  P�/  Q�  &�/  �$  �1  P�/  QV�  ,�  &�  T�2  P�0  QV�  ,�  �  T�3  P�&  R�0  R�
  QYYY0�'  P�$  QV�  .�$  T�#  �	  T�#  �$  T�"  YY0�1  P�$  QV�  .�$  T�#  	�  �$  T�"  	�  �$  T�#  �	  T�#  �$  T�"  �	  T�"  YYY0�6  P�7  R�8  QV�  T�  �  P�7  Q�  T�  �  P�8  Q�  �9  PQ�  ;�:  LM�  )�$  �  V�  ;�;  �<  P�  P�$  T�#  R�$  T�"  QQ�  �  �:  T�%  P�;  Q�  .�:  YYY0�9  PQV�  ;�=  �'  P�  Q�  ;�>  �'  P�  Q�  �  �  �  �  T�?  P�=  R�>  Q�  �  �@  PQYY0�A  P�B  V�  QV�  &�B  �  V�  .�  &�1  P�B  QV�  .�  .�B  YYY0�  P�C  QV�  �  �A  P�C  Q�  &�  �  �  V�  �9  PQYYY0�  P�C  QV�  �  �A  P�C  Q�  &�  �C  V�  �9  PQYY0�D  P�$  V�  QV�  ;�E  �  P�$  Q�  ;�F  �G  P�E  Q�  .�F  YY0�G  P�B  V�  QV�  ;�H  �<  P�B  Q�  ;�F  �H  �  �  .�F  �  Y0�I  P�$  V�  QV�  ;�E  �  P�$  Q�  ;�J  �  PL�  �G  P�E  �  T�+  QR�  �G  P�E  �  T�,  QR�  �G  P�E  �  T�-  QR�  �G  P�E  �  T�.  QR�  MQ�  .�J  YY0�K  P�B  V�  QV�  ;�J  �  PL�  �B  �  T�+  R�  �B  �  T�,  R�  �B  �  T�-  R�  �B  �  T�.  R�  MQ�  .�J  Y`GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m#�7�����mۆ��]�m#)N���q�F���=3���6�$�; ~,x�p�CaCc�la F�a�@�6!0-[���O��{�z/" Q
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
          GDST@   @            �   WEBPRIFFt   WEBPVP8Lg   /?� `#ɶ��W}eV��fn,�����@Ҧ�m��?���1�"�%��v��O�����{��|q�4� W|��)���"��	to��jO��RG����{     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/path_end.png-02b79e25892cd8d863bd44c3c5a1720e.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://sprites/path_end.png"
dest_files=[ "res://.import/path_end.png-02b79e25892cd8d863bd44c3c5a1720e.stex" ]

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
          GDST@   @            �  WEBPRIFFt  WEBPVP8Lg  /?� ע�m����S�{@L���m�_��̿"�m��S����0��oLP	�!�z0d? y�zL��z.*�R!L�zL   @�!��� �movl۬m���������˩�?�� ����{�[k���H�=�{�n�0.����a72�(���%Y!8�V�V��%�4���flXl *����r�
EE5�E�j'�d�5@�s�H�� �ǊΎ��m �%�n@�'�);�?	��D��d=�T��	#���A�~÷3Y�$m �i�Cu��I �-]*��CA��z��9ݵ�ҙr����<��[�ȓ���3E�gm�Qp�Oi��t���y"���S�ΎJ����=     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/path_start.png-475bd0b469629aa8779d506c5134e5c2.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://sprites/path_start.png"
dest_files=[ "res://.import/path_start.png-475bd0b469629aa8779d506c5134e5c2.stex" ]

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
    [gd_resource type="TileSet" load_steps=5 format=2]

[ext_resource path="res://sprites/obstacle.png" type="Texture" id=1]
[ext_resource path="res://sprites/path_start.png" type="Texture" id=2]
[ext_resource path="res://sprites/path_end.png" type="Texture" id=3]
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
1/name = "PathStart"
1/texture = ExtResource( 2 )
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
2/name = "PathEnd"
2/texture = ExtResource( 3 )
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
3/name = "Creep"
3/texture = ExtResource( 4 )
3/tex_offset = Vector2( 0, 0 )
3/modulate = Color( 1, 1, 1, 1 )
3/region = Rect2( 0, 0, 64, 64 )
3/tile_mode = 0
3/occluder_offset = Vector2( 32, 32 )
3/navigation_offset = Vector2( 32, 32 )
3/shape_offset = Vector2( 0, 0 )
3/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
3/shape_one_way = false
3/shape_one_way_margin = 0.0
3/shapes = [  ]
3/z_index = 0
[gd_scene load_steps=5 format=2]

[ext_resource path="res://sprites/obstacle.png" type="Texture" id=1]
[ext_resource path="res://sprites/path_start.png" type="Texture" id=2]
[ext_resource path="res://sprites/path_end.png" type="Texture" id=3]
[ext_resource path="res://sprites/creep.png" type="Texture" id=4]

[node name="Tileset" type="Node2D"]

[node name="Obstacle" type="Sprite" parent="."]
position = Vector2( 32, 32 )
texture = ExtResource( 1 )

[node name="PathStart" type="Sprite" parent="."]
position = Vector2( 112, 32 )
texture = ExtResource( 2 )

[node name="PathEnd" type="Sprite" parent="."]
position = Vector2( 192, 32 )
texture = ExtResource( 3 )

[node name="Creep" type="Sprite" parent="."]
position = Vector2( 271, 32 )
texture = ExtResource( 4 )
  [remap]

path="res://character.gdc"
            [remap]

path="res://creeper.gdc"
              [remap]

path="res://pathfind_astar.gdc"
       �PNG

   IHDR   @   @   �iq�  �IDATx���x#M��nR%�4��6_�:�է�m�Lm�m۶m���ig���M�}.[\�y�_���?�@�-�҂��x��S����x�;�K�w엊n�'��u���bX�-6-�N�*P��Fuw��G� ��{�+�[�K�~3h����.�$_����0п��~�T�w�^�1�o]s5^w[��i�Oσܛ�'�F�0|����zz��c<���T��.4n�hH��$R���R,�X��[k ��h��Sn�챐��wMuL	��ש5 �t�}��U �#!	ߧZ��?���6���Zy�kg�[n Z0��ǥ�ƾw������^s�������bu@���g��g�7 �u���R�����:�A���~2|}���"4�>3�J��?�T� O�*�o� ��U�Db)��Za��^�=8��ی1KK��� ���w�XM�K:'������Tފn�-;�h� �9d�������}�}:-�N�7᳻ ����W�/:���H�ޠ!Py}�@����Y����wӝ,lx oqM �f������7Yc�d�:ӥ+7�.[��t��5�U�W�L-��Mi���g˛o��pp�����Ĥ��
��?�nLw�C��#
՜���Ŧ	���J߈v��bwwJOtC��`	,о�6:�v _;���.������X�M��f���gZG8X��b�eз�2�҃�q?cX9���~#��n�5M ��z��{��,b�, ��`.��9�z+�p&�:����<wMK�
��x�$ހ�樹�ۋJ[������K���|�̄�nql��}/� �kp�=��uA�0�{��,/�����6涵�KW�g��3���.� �Y�g��/(�YH��'[�@0]�_�5�7�x�����z���D�#B�k� <xH,���Cb��e������֧�vh�vbl�qD�pq�GPG�q8�֤'��d�R  ��U�B�� �� H���T�:~�_y ��x</7H��vs�v�bֱ%N�V_���]�<�;m�bvʓK�)�L���2̓��Fc���k��~����:�_��,�\���iuZk��b;� ���a	\���J�}C(������\\t��2Į���R���Aն`���,��JNRMU��0��z�
X���hVV���̙��V+Q���0�qýT?��c��k�������X�p!�<y��p�W�7s��|���姧y �e�L��\驚 �e+F��� �N�J������f̘Q��a�Ю�hwA� !���Q��J�Aɿ��P ��:+EY%%�?�$�����G5�g�����������.���97Q2�FJ��Mɪ��@ ��%�^�r~�dۋ�]n���J5?�pG?m`�CCk���
J�<� k(�j� �:o�&�{J��+O��1Zy ���"��%��R��
(Y�8%�_���ǔ����wy�­+ o � �T+��\=� �233=�zPxDHm, {=�� T� 
P�E) �f��m��x�8��*y�8+���E3���NJJʈ��/���+�r���R�Y9��'p���?��*� � (��ڳ�戮>Е?�ח_�!��*���,dJ����ޢ3H��"���[eZ0i�'U%����x��۴ �.�4�    IEND�B`�              ECFG      application/config/name,      !   Grid-based Pathfinding with Astar      application/config/description�      }   This is an example of using AStar for navigation in 2D,
complete with Steering Behaviors in order to smooth the movement out.      application/run/main_scene         res://Game.tscn    application/config/icon         res://icon.png     display/window/dpi/allow_hidpi            display/window/stretch/mode         2d     display/window/stretch/aspect         expand     input/click�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script      $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2                        