GDPC                                                                               D   res://.import/character.png-eb70ac48a5acf508c4b7740ea4ac4fae.stex    2      �      ��i}|��2��y<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stexP      r      ��Ms@b(!³��m��@   res://.import/obstacle.png-0258c5f5ce65bfa0dd8610adeb784f54.stex�6      ^       H�\�.�u}��*��g@   res://.import/path_end.png-02b79e25892cd8d863bd44c3c5a1720e.stex :      �       >�ʕ��,ۼa>�<?D   res://.import/path_start.png-475bd0b469629aa8779d506c5134e5c2.stex  `=      �      ����?���dV�KH�Q   res://Game.tscn �      i      u�X^.�j⦰�Xw   res://character.gd.remappH      $       ��ߖ$���-#.�Mu   res://character.gdc @            �i)+D�$�Y��Q5   res://icon.png  �H      �      �u���?��D�K��   res://icon.png.import   �      �      ��fe��6�B��^ U�    res://pathfind_astar.gd.remap   �H      )       ��5�S�#�Qf����   res://pathfind_astar.gdc�      �      )�"c�|��T��"�!   res://project.binary�O      �      ^��`�*�fG���i$   res://sprites/character.png.import   4      �      �~��9�5T@�I$   res://sprites/obstacle.png.import   @7      �      .�%��P�N��5E�$   res://sprites/path_end.png.import   �:      �      @�D���Ff��L	�y$   res://sprites/path_start.png.import  ?      �      m�#w��=���   res://tileset/tileset.tres  �A      B      �������u �ǝV$   res://tileset/tileset_source.tscn   F      U      �)}{���$�A�,!��        [gd_scene load_steps=5 format=2]

[ext_resource path="res://tileset/tileset.tres" type="TileSet" id=1]
[ext_resource path="res://pathfind_astar.gd" type="Script" id=2]
[ext_resource path="res://character.gd" type="Script" id=3]
[ext_resource path="res://sprites/character.png" type="Texture" id=4]

[node name="Game" type="Node2D"]
position = Vector2( 1, 0 )

[node name="TileMap" type="TileMap" parent="."]
tile_set = ExtResource( 1 )
format = 1
tile_data = PoolIntArray( 0, 0, 0, 1, 0, 0, 2, 0, 0, 3, 0, 0, 4, 0, 0, 5, 0, 0, 6, 0, 0, 7, 0, 0, 8, 0, 0, 9, 0, 0, 10, 0, 0, 11, 0, 0, 12, 0, 0, 13, 0, 0, 14, 0, 0, 15, 0, 0, 65536, 0, 0, 65551, 0, 0, 131072, 0, 0, 131087, 0, 0, 196608, 0, 0, 196623, 0, 0, 262144, 0, 0, 262159, 0, 0, 327680, 0, 0, 327695, 0, 0, 393216, 0, 0, 393231, 0, 0, 458752, 0, 0, 458767, 0, 0, 524288, 0, 0, 524289, 0, 0, 524290, 0, 0, 524291, 0, 0, 524292, 0, 0, 524293, 0, 0, 524294, 0, 0, 524295, 0, 0, 524296, 0, 0, 524297, 0, 0, 524298, 0, 0, 524299, 0, 0, 524300, 0, 0, 524301, 0, 0, 524302, 0, 0, 524303, 0, 0 )
script = ExtResource( 2 )

[node name="Character" type="Position2D" parent="."]
position = Vector2( 468, 280 )
script = ExtResource( 3 )

[node name="Sprite2D" type="Sprite" parent="Character"]
position = Vector2( 7, 0 )
texture = ExtResource( 4 )

[node name="Camera2D" type="Camera2D" parent="."]
offset = Vector2( 512, 300 )
current = true
       GDSC   )      ?   L     ���ӄ�   �����Ŷ�   ���󶶶�   �����ᶶ   ���嶶��   ���������������   ����Ҷ��   �����Ӷ�   ����޶��   ������������������Ҷ   ���������������ض���   ��������϶��   �����϶�   ������������Ӷ��   �������Ŷ���   �����׶�   ���������������������¶�   �������ٶ���   �����Ӷ�   ���������������¶���   ����¶��   ����������������Ҷ��   ���������������Ŷ���   ������������������������ض��   ����¶��   �������������Ҷ�   ��������ⶶ�   ��������������ض   �������������ض�   ���������������϶���   �������ض���   ���������Ҷ�   �������Ѷ���   ���������������������Ӷ�   �������ض���   ����Ӷ��   ����������ٶ   ��������Ӷ��   ���������¶�   �������Ӷ���   �������������޶�      A     HC             click         TileMap                                                            	   '   
   (      .      5      <      =      D      E      F      L      S      T      U      \      d      f      n      r      y      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2     3     4     5     6     7   (  8   4  9   ;  :   =  ;   >  <   ?  =   F  >   J  ?   3YY>�  N�  R�  OYY:�  Y:�  YY8P�  Q;�  �  Y;�  �  T�  YY;�  LMY;�	  �  PQY;�
  �  PQYY;�  �  PQYYY0�  PQV�  �  P�  T�  QYYY0�  P�  QV�  &�  �  T�  V�  .�  ;�  �  P�	  Q�  &�  V�  �  T�  P�  Q�  &�X  P�  Q�  V�  �  P�  T�  Q�  .�  �	  �  L�  MYYY0�  P�  QV�  &�  T�  P�  QV�  ;�  �  PQ�  &�  T�  P�  QV�  �  �  �  (V�  �
  �  �  �  P�  T�  QYYY0�  P�  QV�  ;�  P�  �  QT�  PQ�  �  ;�   �  �  �  �  �   �  �  �  �  �!  PQ�  �"  �  T�#  PQ�  .�  T�$  P�  Q	�  YYY0�  P�%  QV�  &�%  �  T�  V�  �  �&  PQT�'  P�  QT�(  P�  R�
  Q�  &�  �X  P�  Q�  V�  �  P�  T�  Q�  .�  �  �  �	  �  L�  M�  �  �%  Y`           GDST@   @            V  WEBPRIFFJ  WEBPVP8L>  /?��/0D�?p#H�ٟn� !A��>������mێI�����m�V��S[?a���6�m�6G�r������գ��mۦm��}ϻ�}�v� V"����m۶�d֎��o�ܧ���[m�2)����q6�ZД��9S��G4�gR� ""
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
              GDSC   C   
   �   �     ������ƶ   ����������������   ���������䶶   ����Ӷ��   �������Ӷ���   ���   ������������������ض   �����������������������ض���   ����������������ض��   ���������������������ض�   ����������޶   ���������Ӷ�   ����Ķ��   ����   ��������Ŷ��   �������������������Ҷ���   ��������������Ӷ   ��������Ӷ��   �����϶�   ������������������¶   �����������������������Ŷ���    ���������������������������Ŷ���   ��������   ����������¶   ��������Ҷ��   �������ڶ���   ζ��   ϶��   ���������¶�   �����������Ҷ���   ����ζ��   ������������¶��   ��������Ӷ��   ����������Ӷ   ������������¶��   �����������϶���   ����¶��   �����Ҷ�   ����������ζ   ��������������������ζ��   ��������¶��   ��������������Ӷ   ����ⶶ�   ���ⶶ��   ��������   �涶   �������������Ӷ�   �������������������ζ���   ��������������������Ŷ��   ��������¶��   �������������Ŷ�(   ������������������������������������ڶ��   ������϶   ������ζ   ��������������������������Ѷ   �������������޶�   ����������¶   ��������Ҷ��   �����������ƶ���   ����������������޶��   ���������Ҷ�   ����������Ҷ   ����������������ζ��   ��������������ζ   �������������޶�   �����Ӷ�   ����Ӷ��     @@                                     @                                                                        	       
   !      *      3      4      :      ;      <      F      G      H      Q      Y      Z      [      a      i      n      o      p      v      {      }       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *      +     ,     -     .     /     0     1     2   #  3   .  4   8  5   >  6   @  7   A  8   H  9   I  :   J  ;   K  <   S  =   T  >   U  ?   i  @   l  A   m  B   n  C   o  D   p  E   q  F   r  G   s  H   z  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [   �  \   �  ]   �  ^   �  _   �  `   �  a   �  b   �  c   �  d   �  e   �  f     g     h   $  i   ,  j   7  k   9  l   C  m   E  n   P  o   Q  p   R  q   Y  r   f  s   g  t   h  u   n  v   s  w   u  x   }  y   �  z   �  {   �  |   �  }   �  ~   �     �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �     �     �     �     �   "  �   *  �   2  �   3  �   4  �   ?  �   @  �   D  �   E  �   F  �   G  �   N  �   T  �   V  �   ]  �   _  �   `  �   n  �   {  �     �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   3YY:�  Y:�  �  T�  YYY8P�  Q;�  �  T�  �  YYYY;�  �  PQ9�  Y;�  �  PQ9�	  YY;�
  LMYYY5;�  �  T�  PQYYY5;�  �  P�  QY5;�  �  �  YYY0�  PQV�  ;�  �  P�  Q�  �  P�  QYYY0�  PQV�  &�
  V�  .�  ;�  �
  L�  M�  ;�  �
  L�X  P�
  Q�  MY�  �  P�  T�  R�  T�  R�  Q�  �  P�  T�  R�  T�  R�  QY�  ;�  �  P�  P�  T�  R�  T�  QQ�  �  )�  �K  P�  R�X  P�
  QQV�  ;�  �  P�  P�
  L�  MT�  R�
  L�  MT�  QQ�  �  �   P�  R�  R�  R�  R�  Q�  �!  P�  R�  �  R�  Q�  �  �  YYYYY0�  P�"  LMQV�  ;�#  LM�  )�  �K  P�  T�  QV�  )�  �K  P�  T�  QV�  ;�$  �  P�  R�  Q�  &�$  �"  V�  ,Y�  �#  T�%  P�$  Q�  �  �  �  ;�&  �'  P�$  Q�  �  �  �  T�(  P�&  R�  P�$  T�  R�$  T�  R�  QQ�  .�#  YYYYYYYY0�  P�#  QV�  )�$  �#  V�  ;�&  �'  P�$  Q�  �  �  �  ;�)  �  PL�  �$  �  T�*  R�  �$  �  T�+  R�  �$  �  T�,  R�  �$  �  T�-  R�  MQ�  )�.  �)  V�  ;�/  �'  P�.  Q�  &�0  P�.  QV�  ,�  &�  T�1  P�/  QV�  ,�  �  �  �  �  �  T�2  P�&  R�/  R�  QYYYYY0�3  P�#  QV�  )�$  �#  V�  ;�&  �'  P�$  Q�  )�4  �K  P�	  QV�  )�5  �K  P�	  QV�  ;�.  �  P�$  T�  �5  �  R�$  T�  �4  �  Q�  ;�/  �'  P�.  Q�  &�.  �$  �0  P�.  QV�  ,�  &�  T�1  P�/  QV�  ,�  �  T�2  P�&  R�/  R�  QYYY0�'  P�$  QV�  .�$  T�  �  T�  �$  T�  YYY0�6  PQV�  &�
  V�  .�  ;�  �
  L�  M�  ;�  �
  L�X  P�
  Q�  M�  �  P�  T�  R�  T�  R�  Q�  �  P�  T�  R�  T�  R�  QYYY0�0  P�$  QV�  .�$  T�  	�  �$  T�  	�  �$  T�  �  T�  �$  T�  �  T�  YYY0�7  P�8  R�9  QV�  T�  �:  P�8  Q�  T�  �:  P�9  Q�  �;  PQ�  ;�<  LM�  )�$  �
  V�  ;�=  �  P�  P�$  T�  R�$  T�  QQ�  �  �<  T�%  P�=  Q�  .�<  YYY0�;  PQV�  �6  PQ�  ;�>  �'  P�  Q�  ;�?  �'  P�  Q�  �  �  �
  �  T�@  P�>  R�?  Q�  �  �A  PQYYYY0�  P�B  QV�  &�B  �  V�  .�  &�0  P�B  QV�  .Y�  �  P�  T�  R�  T�  R�  Q�  �  P�B  T�  R�B  T�  R�  Q�  �  �B  �  &�  �  �  V�  �;  PQYYY0�	  P�B  QV�  &�B  �  V�  .�  &�0  P�B  QV�  .Y�  �  P�  T�  R�  T�  R�  Q�  �  P�B  T�  R�B  T�  R�  Q�  �  �B  �  &�  �B  V�  �;  PQY`           GDST3   :            �  WEBPRIFF�  WEBPVP8L�  /2@���m$G����A�l#Ir���s�¢���!h�6n7����ֶ�Dww�鉾逐̙y�����)�C`U�*?���^��?��W���`+ij
V��v�y����U�(�Z篁�`�:�ˠ��~�7��R(���.%�p]�FJ���d������o���bƾ"��ȍ$)r�0�	>�VY,G��"Ў�����I��v�{+���/1.F�fV]�I6�E�5���c)���)2�����~�y�#Ƙg8�'�p�	+TX���� c�٨0a��.�D��&� �p�!#֠b�[Π�%KX�;�"��u*_I���P���}¡_��f����)�+�+3L�F�H�-�pe�*LY!��ϻ���ó,�b��XD׬2dEx�M�����ڹLua-/�ntv���R�� ؊�����Pp               [remap]

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
       GDST@   @            B   WEBPRIFF6   WEBPVP8L)   /?� p�ˠ]m�j�Fb���g�z����9!忑s   [remap]

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
    [gd_resource type="TileSet" load_steps=4 format=2]

[ext_resource path="res://sprites/obstacle.png" type="Texture" id=1]
[ext_resource path="res://sprites/path_start.png" type="Texture" id=2]
[ext_resource path="res://sprites/path_end.png" type="Texture" id=3]

[resource]

0/name = "Obstacle"
0/texture = ExtResource( 1 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 0, 0, 64, 64 )
0/is_autotile = false
0/occluder_offset = Vector2( 32, 32 )
0/navigation_offset = Vector2( 32, 32 )
0/shapes = [  ]
1/name = "PathStart"
1/texture = ExtResource( 2 )
1/tex_offset = Vector2( 0, 0 )
1/modulate = Color( 1, 1, 1, 1 )
1/region = Rect2( 0, 0, 64, 64 )
1/is_autotile = false
1/occluder_offset = Vector2( 32, 32 )
1/navigation_offset = Vector2( 32, 32 )
1/shapes = [  ]
2/name = "PathEnd"
2/texture = ExtResource( 3 )
2/tex_offset = Vector2( 0, 0 )
2/modulate = Color( 1, 1, 1, 1 )
2/region = Rect2( 0, 0, 64, 64 )
2/is_autotile = false
2/occluder_offset = Vector2( 32, 32 )
2/navigation_offset = Vector2( 32, 32 )
2/shapes = [  ]
_sections_unfolded = [ "2" ]

              [gd_scene load_steps=4 format=2]

[ext_resource path="res://sprites/obstacle.png" type="Texture" id=1]
[ext_resource path="res://sprites/path_start.png" type="Texture" id=2]
[ext_resource path="res://sprites/path_end.png" type="Texture" id=3]

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
           [remap]

path="res://character.gdc"
            [remap]

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