PGDMP          5            	    z            day_26    14.5    14.5 	    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394    day_26    DATABASE     c   CREATE DATABASE day_26 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE day_26;
                postgres    false            �            1259    24577    ads    TABLE     �   CREATE TABLE public.ads (
    "Id" integer NOT NULL,
    name character(50),
    id_author integer NOT NULL,
    price integer,
    description character(100),
    id_address integer,
    is_published boolean
);
    DROP TABLE public.ads;
       public         heap    postgres    false            �          0    24577    ads 
   TABLE DATA           b   COPY public.ads ("Id", name, id_author, price, description, id_address, is_published) FROM stdin;
    public          postgres    false    209   	       a           2606    24581    ads ads_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.ads
    ADD CONSTRAINT ads_pkey PRIMARY KEY ("Id");
 6   ALTER TABLE ONLY public.ads DROP CONSTRAINT ads_pkey;
       public            postgres    false    209            c           2606    24616    ads addresses    FK CONSTRAINT        ALTER TABLE ONLY public.ads
    ADD CONSTRAINT addresses FOREIGN KEY (id_address) REFERENCES public.addresses("Id") NOT VALID;
 7   ALTER TABLE ONLY public.ads DROP CONSTRAINT addresses;
       public          postgres    false    209            b           2606    24611 
   ads author    FK CONSTRAINT     x   ALTER TABLE ONLY public.ads
    ADD CONSTRAINT author FOREIGN KEY (id_author) REFERENCES public.author("Id") NOT VALID;
 4   ALTER TABLE ONLY public.ads DROP CONSTRAINT author;
       public          postgres    false    209            �   g  x��XMoU]O~�c�JN�8�������BH�TH�l��AMc�-PQ�)H�r<����/����9��=N�KDJϼ���s�=��ilG�7�����}��_{��f>�9܊�n�����_����'5ǿ~Z|��/��'jF�f=�/�p&Cc<�����'��E���N��f��sX�l�æ<*NqiR<��+,��&\�������sw�py�%�k�"�Qs����!�`�8aE���F��'���x�[V���� `�L{%��Y�Z����?�F;�'F�`���O�ܵ���;P�&g�yH8���� C�c׷�^� ���`���ٛl�pV�G�%��f����+���\������,���Q�]��9�	SP�M��A&P	�0���l�UŇȍ��1��%�7○s�4�����g��L*5��\1���۽�&��g%!M���X3x�#��X�׀�C���	p5Е��HR �v�}_$NK�rCEif�/�u��)��uSU).�����������ZZɉ"b(�!������y1#v{kg�#����pq��C��~+�C)1	��\��'�}��X%�a�֙��k}�`tF�#r��q�B�rk��{��3I�v���,�D����ׄ.Cͷ��D�SBK���!��U �`*ݑ`a�-��O�M���`'jHB�Cc�\0/'"`*jө�!��J��%����X�+�m}fv�N���g��������?�t����bo�Kw���{+ܶ�>��ϓ�Ƃ������}$]��Sw��s��,�{�*���\K��p�V��Pa�xI��jۏa�\h������V��]�X9����vԍ��r[y]���]j�Ni�C^�R�m���ۂ5ëR�B��,����a75�N�`!�WF��0�3z�F��
֨B�;bea�Q�9Z#�U�7�ʑbT���j�*Ѕ6��i�ݱ�'�e�̴���~����8�%��7M�YsF�1F$3)�(*8ꧧ�7���{���X�1O�:�דR�l�B{ƹ�����>�6��<�ql�9a F�j��1��8�̥璢����f&5��2�~�VG��'��TR+�+8<������ge��"-N��g��a*L*�b�Vq��3��-���*��K���c��זP$<��H��^��;��l4��XV�^�E��n2������
<ZQs����>�H7�Ƶ�2`~L�PfV`#Y���Ǡ���m��$e]e.̇3#
�!D�┷W3O���i*L�2�6d��$g�da�+���EJ%�]�4�w��f�``�&g!96�n:eiѨ;�~�<\SZ5B�,C+�%J��G&ó���Q+0�shSL"=M��k/g��)�";6&���SC0\�zgK�:��X&(�k��o'O{2L����ެL�p��-���6��xi#^	2�qu[M6��I�?H�X=~daX��;�ю�jXi�k?�T����x��j��h�c�L�*#�6N�\��15S�9! �Ku�Ć�}��Tx���]
c���Wxj��^���)�6����s(�nE��{�}�p��#y����e��-����:g"
�!�@�㙽��*qà<���r�y7+i~ޘt���Z����f�~���i�ו+q�a��K��Nf���Q� r^�ؗ�t��Ã\�}��n��uga��hQ����b���*�p:Q6ʩn���9�Y�i@P#T	�D�[�	�m(�*�� �����[��]���h��O{߸��ݕȠ��@�����`ǳ�Ć��^V��3�^����؅�N6UzjW�>tQVL6@uVFX���5zj��걽� 2��������_�3�     