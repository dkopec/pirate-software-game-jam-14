GDPC                                                                               D   res://.import/character.png-eb70ac48a5acf508c4b7740ea4ac4fae.stex   �G            Ï�)��EZ|��8�@   res://.import/creep.png-9dc8d36f8c07adeefbc4d36436254221.stex   �N      Z       �#y����@u-t�VO@   res://.import/creeper.png-bb0d444bde47cd215fc4d4e6ef6cea6d.stex �Q      �      ��y`}Ew�ӯK��?�@   res://.import/ground.png-55df20774d41ed101a891f191ec3738b.stex  @X      \       ���7[JcTD
�pٽ<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�%      r      ��Ms@b(!³��m��@   res://.import/obstacle.png-0258c5f5ce65bfa0dd8610adeb784f54.stexP[      ^       H�\�.�u}��*��g   res://Character.tscnP      A      &+�q��6��Qk:�   res://Creeper.tscn  �      �      
�gt����~��z]�8�   res://Game.tscn `
      �      �A@�lt5��M�Z6;�   res://character.gd.remap�f      $       ��ߖ$���-#.�Mu   res://character.gdc P      �      �/n*d�"�M�ۦ*S   res://creeper.gd.remap  �f      "       `ۻ �	ЙߑP�D   res://creeper.gdc   �#      �      �UQP&o���uQH   res://icon.png   g      �      �u���?��D�K��   res://icon.png.import   P.      �      ��fe��6�B��^ U�    res://pathfind_astar.gd.remap   �f      )       ��5�S�#�Qf����   res://pathfind_astar.gdc 1      �      �zT�8�ۨj���~�   res://project.binary n      �      ^��`�*�fG���i$   res://sprites/character.png.import  �K      �      �~��9�5T@�I    res://sprites/creep.png.import  �N      �      {�1~=�vs��*Ӛ`�    res://sprites/creeper.png.import�U      �      ��st�x�Q���Ur&    res://sprites/ground.png.import �X      �      O/)��%2~��������$   res://sprites/obstacle.png.import   �[      �      .�%��P�N��5E�   res://tileset/tileset.tres  p^      �      ��*�����
y�6��$   res://tileset/tileset_source.tscn   @d      I      a�?�ڟ@�ˏ�K�7�#        [gd_scene load_steps=3 format=2]

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
       [gd_scene load_steps=4 format=2]

[ext_resource path="res://tileset/tileset.tres" type="TileSet" id=1]
[ext_resource path="res://pathfind_astar.gd" type="Script" id=2]
[ext_resource path="res://Character.tscn" type="PackedScene" id=3]

[node name="Game" type="Node2D"]
position = Vector2( 1, 0 )

[node name="TileMap" type="TileMap" parent="."]
tile_set = ExtResource( 1 )
format = 1
tile_data = PoolIntArray( -1, 0, 0, -65536, 0, 0, -65535, 0, 0, -65534, 0, 0, -65533, 0, 0, -65532, 0, 0, -65531, 0, 0, -65530, 0, 0, -65529, 0, 0, -65528, 0, 0, -65527, 0, 0, -65526, 0, 0, -65525, 0, 0, -65524, 0, 0, -65523, 0, 0, -65522, 0, 0, -65521, 0, 0, -65520, 0, 0, 65535, 0, 0, 0, 2, 0, 1, 2, 0, 2, 2, 0, 3, 2, 0, 4, 2, 0, 5, 2, 0, 6, 2, 0, 7, 2, 0, 8, 2, 0, 9, 2, 0, 10, 2, 0, 11, 2, 0, 12, 2, 0, 13, 2, 0, 14, 2, 0, 15, 2, 0, 16, 0, 0, 131071, 0, 0, 65536, 2, 0, 65537, 2, 0, 65538, 2, 0, 65539, 2, 0, 65540, 2, 0, 65541, 2, 0, 65542, 2, 0, 65543, 2, 0, 65544, 2, 0, 65545, 2, 0, 65546, 2, 0, 65547, 2, 0, 65548, 2, 0, 65549, 2, 0, 65550, 2, 0, 65551, 2, 0, 65552, 0, 0, 196607, 0, 0, 131072, 2, 0, 131073, 2, 0, 131074, 2, 0, 131075, 2, 0, 131076, 2, 0, 131077, 2, 0, 131078, 2, 0, 131079, 2, 0, 131080, 2, 0, 131081, 2, 0, 131082, 2, 0, 131083, 2, 0, 131084, 2, 0, 131085, 2, 0, 131086, 2, 0, 131087, 2, 0, 131088, 0, 0, 262143, 0, 0, 196608, 2, 0, 196609, 2, 0, 196610, 2, 0, 196611, 2, 0, 196612, 2, 0, 196613, 2, 0, 196614, 2, 0, 196615, 1, 0, 196616, 1, 0, 196617, 1, 0, 196618, 2, 0, 196619, 2, 0, 196620, 2, 0, 196621, 2, 0, 196622, 2, 0, 196623, 2, 0, 196624, 0, 0, 327679, 0, 0, 262144, 2, 0, 262145, 2, 0, 262146, 2, 0, 262147, 2, 0, 262148, 2, 0, 262149, 2, 0, 262150, 2, 0, 262151, 1, 0, 262152, 1, 0, 262153, 1, 0, 262154, 2, 0, 262155, 2, 0, 262156, 2, 0, 262157, 2, 0, 262158, 2, 0, 262159, 2, 0, 262160, 0, 0, 393215, 0, 0, 327680, 2, 0, 327681, 2, 0, 327682, 2, 0, 327683, 2, 0, 327684, 2, 0, 327685, 2, 0, 327686, 2, 0, 327687, 1, 0, 327688, 1, 0, 327689, 1, 0, 327690, 2, 0, 327691, 2, 0, 327692, 2, 0, 327693, 2, 0, 327694, 2, 0, 327695, 2, 0, 327696, 0, 0, 458751, 0, 0, 393216, 2, 0, 393217, 2, 0, 393218, 2, 0, 393219, 2, 0, 393220, 2, 0, 393221, 2, 0, 393222, 2, 0, 393223, 2, 0, 393224, 2, 0, 393225, 2, 0, 393226, 2, 0, 393227, 2, 0, 393228, 2, 0, 393229, 2, 0, 393230, 2, 0, 393231, 2, 0, 393232, 0, 0, 524287, 0, 0, 458752, 2, 0, 458753, 2, 0, 458754, 2, 0, 458755, 2, 0, 458756, 2, 0, 458757, 2, 0, 458758, 2, 0, 458759, 2, 0, 458760, 2, 0, 458761, 2, 0, 458762, 2, 0, 458763, 2, 0, 458764, 2, 0, 458765, 2, 0, 458766, 2, 0, 458767, 2, 0, 458768, 0, 0, 589823, 0, 0, 524288, 2, 0, 524289, 2, 0, 524290, 2, 0, 524291, 2, 0, 524292, 2, 0, 524293, 2, 0, 524294, 2, 0, 524295, 2, 0, 524296, 2, 0, 524297, 2, 0, 524298, 2, 0, 524299, 2, 0, 524300, 2, 0, 524301, 2, 0, 524302, 2, 0, 524303, 2, 0, 524304, 0, 0, 655359, 0, 0, 589824, 0, 0, 589825, 0, 0, 589826, 0, 0, 589827, 0, 0, 589828, 0, 0, 589829, 0, 0, 589830, 0, 0, 589831, 0, 0, 589832, 0, 0, 589833, 0, 0, 589834, 0, 0, 589835, 0, 0, 589836, 0, 0, 589837, 0, 0, 589838, 0, 0, 589839, 0, 0, 589840, 0, 0 )
script = ExtResource( 2 )

[node name="Camera2D" type="Camera2D" parent="."]
offset = Vector2( 512, 300 )
current = true

[node name="Character" parent="." instance=ExtResource( 3 )]
position = Vector2( 549, 280 )
               GDSC   =      \        ���ӄ�   �����Ŷ�   ���󶶶�   �����ᶶ   ���嶶��   ���������������   ����Ҷ��   �����Ӷ�   ����޶��   ������������������Ҷ   �������ض���   ���������������ض���   ��������϶��   ��������������Ӷ   ���������������������Ҷ�   �������Ķ���   �����϶�   ������������Ӷ��   �������Ŷ���   �����׶�   ���������������������¶�   �������ٶ���   �����Ӷ�   ���������������¶���   ����¶��   ��������ض��   ������������������������ض��   �����������Ӷ���   �嶶   �������������ն�   ����������Ķ   ���������¶�   �������Ӷ���   ��������������Ķ   �������������Ŷ�   �����������������Ŷ�   �������Ŷ���   ������������Ŷ��   ���Ӷ���   ���������������Ӷ���   �������Ӷ���   ��������Ҷ��   ����������������Ӷ��   ���������������Ŷ���   �������ض���   �����������ض���   ����Ҷ��   ���Ӷ���   ���Ҷ���   ��������������ض   �����Ҷ�   �������������ض�   ���������������϶���   ���������Ҷ�   �������Ѷ���   ���������������������Ӷ�   �������ض���   ����Ӷ��   ����������ٶ   ��������Ӷ��   �������������޶�      A     HC         333333�?      res://Creeper.tscn        click        zD      Double click detected!        TileMap       Creeper already detected      Creeper                                                            	   '   
   (      .      6      >      ?      G      H      N      T      U      ^      _      e      l      m      n      u      }            �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -     .     /     0     1      2   "  3   #  4   ,  5   2  6   ;  7   ?  8   B  9   F  :   G  ;   M  <   R  =   S  >   Y  ?   Z  @   e  A   k  B   l  C   w  D   x  E     F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X      Y     Z     [     \   3YY>�  N�  R�  OYY:�  Y:�  YY8P�  Q;�  �  Y;�  �  T�  YY;�  LMY;�	  �  P�
  QY;�  �  P�
  QYY;�  �  P�
  QYY;�  V�  Y;�  V�  YY5;�  ?P�  QYY0�  PQV�  �  P�  T�  QYYY0�  P�  QV�  &�  �  T�  V�  .�  ;�  �  P�	  Q�  &�  V�  �  T�  P�  Q�  &�X  P�  Q�  V�  �  P�  T�  Q�  .�  �	  �  L�  MYY0�  P�  QV�  &�  T�  P�  QV�  �  �  PQ�  �  P�  T�  Q�  ;�  �  T�  PQ�  �  &P�  �  Q	�  V�  �D  P�  Q�  ;�  �  PQT�   P�  QT�!  P�  Q�  ;�"  �  PQT�   P�  QT�#  P�  Q�  ;�$  �%  PQY�  &�$  T�&  PQ�  �  �$  V�  �D  P�	  Q�  .Y�  ;�'  �  T�(  PQ�  �'  T�
  �  �  �  PQT�)  P�'  Q�  �  �  �  (V�  �  �  YY0�%  PQV�  ;�*  �
  �  �  ;�+  LM�  �  ;�,  �  PQT�-  PQ�  )�.  �,  V�  �  &�.  T�/  T�0  P�*  QV�  �  ;�1  �.  T�
  �  �+  T�2  P�1  Q�  .�+  YY0�  P�3  QV�  ;�4  P�3  �
  QT�5  PQ�  �  ;�6  �4  �  �  �  �6  �  �  �
  �  �7  PQ�  �8  �  T�9  PQ�  .�
  T�:  P�3  Q	�  YYY0�  P�;  QV�  &�;  �  T�  V�  �  �  PQT�   P�  QT�<  P�
  R�  Q�  &�  �X  P�  Q�  V�  �  P�  T�  Q�  .�  �  �  �	  �  L�  M�  �  �;  Y`             GDSC            6      �������؄�   ����������¶   �嶶   ������������Ӷ��   �����������������ڶ�   ����������������¶��   ������ƶ   ���������¶�   �������Ӷ���   ���������������Ŷ���   �������ض���   
         TileMap                                                     	      
                           !      -      4      3YY5;�  �  T�  PQY;�  YYYYYYYYYY0�  PQV�  ;�  �  PQT�  P�  Q�  �  T�	  P�
  QY`        GDST@   @            V  WEBPRIFFJ  WEBPVP8L>  /?��/0D�?p#H�ٟn� !A��>������mێI�����m�V��S[?a���6�m�6G�r������գ��mۦm��}ϻ�}�v� V"����m۶�d֎��o�ܧ���[m�2)����q6�ZД��9S��G4�gR� ""
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
              GDSC   U      �        ������ƶ   ����������������   ���������䶶   ����Ӷ��   ���Ӷ���   �������󶶶�   �������¶���   ����������������Ӷ��   ����涶�   ������   �������Ӷ���   ���   �����������������ض�   �����������ƶ���   ���������¶�   �������Ӷ���   �������ض���   ������������������ض   �����������������������ض���   ����������������ض��   ���������������������ض�   ����������޶   ���������Ӷ�   ����Ķ��   ����   ��������Ŷ��   �������������������Ҷ���   ��������������Ӷ   ��������Ӷ��   �����϶�   ������������������¶   �����������������������Ŷ���(   ������������������������������������ڶ��   ������������¶��   �����������϶���   ϶��   ζ��   ����¶��   �����Ҷ�   ����������ζ   ��������������������ζ��   ��������¶��    ���������������������������Ŷ���   ��������������Ӷ   ����ⶶ�   ���ⶶ��   ��������   �涶   �������������Ӷ�   �������������������ζ���   ��������������������Ŷ��   ��������¶��   �������������Ŷ�   ������϶   ������ζ   �������������޶�   ����������¶   ��������Ҷ��   ����������������޶��   ���������Ҷ�   ����������Ҷ   �����������Ҷ���   ����������������ζ��   ��������������ζ   �������������޶�   �����Ӷ�   �������������Ӷ�   ���ڶ���   ��������������Ӷ   ����Ӷ��   ��������������Ķ   ����������������ض��   �������������Ӷ�   ���������������Ķ���   ������������������ض   �����������������Ŷ�   �������������Ŷ�   ������������������Ŷ   ���������������Ŷ���   ��������Ŷ��   �������Ķ���   �������Ҷ���   �������ƶ���   ������������   ������������     @@      Obstacle      Creep         Ground           	   Character               Tilemap script ready.                                                Spreading Creep                                                  )   	   2   
   4      5      6      C      D      E      F      X      c      n      o      u      v      w      x      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4      5     6     7     8     9     :     ;     <     =     >     ?   &  @   ,  A   4  B   5  C   6  D   7  E   >  F   E  G   L  H   S  I   Z  J   ]  K   c  L   k  M   r  N   t  O   ~  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [   �  \   �  ]   �  ^   �  _   �  `   �  a   �  b   �  c   �  d   �  e   �  f   �  g   �  h     i     j     k     l   7  m   8  n   9  o   B  p   K  q   T  r   X  s   ^  t   d  u   w  v   ~  w   �  x   �  y   �  z   �  {   �  |   �  }   �  ~   �     �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �     �     �     �   !  �   )  �   1  �   4  �   5  �   >  �   F  �   M  �   P  �   Q  �   Z  �   b  �   i  �   s  �   }  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   
  �     �     �   3YY:�  Y:�  �  T�  YY;�  N�  �  �  T�  P�  QR�  �  �  T�  P�  QR�  �	  �  T�  P�  QYOYYY8P�  Q;�
  �  T�  �  YYYY5;�  �  P�  PQT�  P�  QT�  QY5;�  �  P�  Q9�  Y5;�  �  P�  Q9�  YY;�  LMYYYY5;�  �  T�  PQYYY5;�  �  P�  T�  QY5;�  �  �  YYY0�  PQV�  �D  P�  Q�  ;�  �  P�  Q�  �   P�  QYYYY0�  P�!  LMQV�  ;�"  LM�  )�#  �K  P�
  T�#  QV�  )�$  �K  P�
  T�$  QV�  ;�%  �  P�$  R�#  Q�  &�%  �!  V�  ,Y�  �"  T�&  P�%  Q�  �  �  �  ;�'  �(  P�%  Q�  �  �  �  T�)  P�'  R�  P�%  T�$  R�%  T�#  R�  QQ�  .�"  YYYYYYYY0�*  P�"  QV�  )�%  �"  V�  ;�'  �(  P�%  Q�  �  �  �  ;�+  �  PL�  �%  �  T�,  R�  �%  �  T�-  R�  �%  �  T�.  R�  �%  �  T�/  R�  MQ�  )�0  �+  V�  ;�1  �(  P�0  Q�  &�2  P�0  QV�  ,�  &�  T�3  P�1  QV�  ,�  �  �  �  �  �  T�4  P�'  R�1  R�	  QYYYYY0�   P�"  QV�  )�%  �"  V�  ;�'  �(  P�%  Q�  )�5  �K  P�
  QV�  )�6  �K  P�
  QV�  ;�0  �  P�%  T�$  �6  �  R�%  T�#  �5  �  Q�  ;�1  �(  P�0  Q�  &�0  �%  �2  P�0  QV�  ,�  &�  T�3  P�1  QV�  ,�  �  T�4  P�'  R�1  R�  QYYY0�(  P�%  QV�  .�%  T�$  �
  T�$  �%  T�#  YY0�2  P�%  QV�  .�%  T�$  	�  �%  T�#  	�  �%  T�$  �
  T�$  �%  T�#  �
  T�#  YYY0�7  P�8  R�9  QV�  T�  �  P�8  Q�  T�  �  P�9  Q�  �:  PQ�  ;�;  LM�  )�%  �  V�  ;�<  �=  P�  P�%  T�$  R�%  T�#  QQ�  �  �;  T�&  P�<  Q�  .�;  YYY0�:  PQV�  ;�>  �(  P�  Q�  ;�?  �(  P�  Q�  �  �  �  �  T�@  P�>  R�?  Q�  �  �A  PQYY0�B  P�C  V�  QV�  &�C  �  V�  .�	  �  &�2  P�C  QV�  .�	  �  .�  YY0�D  P�C  V�  QV�  &�B  P�C  QV�  .�C  �  .YYY0�  P�E  QV�  �  �D  P�E  Q�  &�  �  �  V�  �:  PQYYY0�  P�E  QV�  �  �D  P�E  Q�  &�  �E  V�  �:  PQYY0�F  P�%  V�  QV�  ;�G  �  P�%  Q�  ;�H  �I  P�G  Q�  .�H  YY0�I  P�C  V�  QV�  ;�J  �=  P�C  Q�  ;�H  �J  �  �  .�H  �  Y0�K  P�%  V�  QV�  ;�G  �  P�%  Q�  ;�L  �  PL�  �I  P�G  �  T�,  QR�  �I  P�G  �  T�-  QR�  �I  P�G  �  T�.  QR�  �I  P�G  �  T�/  QR�  MQ�  .�L  YY0�M  P�C  V�  QV�  ;�L  �  PL�  �C  �  T�,  R�  �C  �  T�-  R�  �C  �  T�.  R�  �C  �  T�/  R�  MQ�  .�L  �  Y0�N  P�%  V�  QV�  ;�G  �  P�%  Q�  ;�O  �M  P�G  Q�  �O  T�&  P�G  Q�  �D  P�  Q�  )�P  �O  V�  ;�Q  �B  P�P  Q�  ;�R  �S  P�P  Q�  T�  �  &�Q  �R  V�  �T  P�P  R�  T�  QY`   GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m#�7�����mۆ��]�m#)N���q�F���=3���6�$�; ~,x�p�CaCc�la F�a�@�6!0-[���O��{�z/" Q
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
GDST@   @            B   WEBPRIFF6   WEBPVP8L)   /?� p�ˠ]m�j�Fb���g�z����9!忑s   [remap]

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
          [gd_resource type="TileSet" load_steps=4 format=2]

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