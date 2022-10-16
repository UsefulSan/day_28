PGDMP         7            	    z            day_26    14.5    14.5     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394    day_26    DATABASE     c   CREATE DATABASE day_26 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE day_26;
                postgres    false            �            1259    24595 	   addresses    TABLE     X   CREATE TABLE public.addresses (
    id integer NOT NULL,
    addresses character(50)
);
    DROP TABLE public.addresses;
       public         heap    postgres    false            �            1259    24577    ads    TABLE     �   CREATE TABLE public.ads (
    id integer NOT NULL,
    name character(50),
    id_author integer NOT NULL,
    price integer,
    description character(100),
    id_address integer,
    is_published boolean
);
    DROP TABLE public.ads;
       public         heap    postgres    false            �            1259    24606    author    TABLE     R   CREATE TABLE public.author (
    id integer NOT NULL,
    author character(20)
);
    DROP TABLE public.author;
       public         heap    postgres    false            �          0    24595 	   addresses 
   TABLE DATA           2   COPY public.addresses (id, addresses) FROM stdin;
    public          postgres    false    210   �       �          0    24577    ads 
   TABLE DATA           `   COPY public.ads (id, name, id_author, price, description, id_address, is_published) FROM stdin;
    public          postgres    false    209   �       �          0    24606    author 
   TABLE DATA           ,   COPY public.author (id, author) FROM stdin;
    public          postgres    false    211   I       d           2606    24581    ads ads_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.ads
    ADD CONSTRAINT ads_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.ads DROP CONSTRAINT ads_pkey;
       public            postgres    false    209            f           2606    24599    addresses fk_addresses_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT fk_addresses_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY public.addresses DROP CONSTRAINT fk_addresses_pkey;
       public            postgres    false    210            h           2606    24610    author fk_author_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.author
    ADD CONSTRAINT fk_author_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.author DROP CONSTRAINT fk_author_pkey;
       public            postgres    false    211            j           2606    24616    ads addresses    FK CONSTRAINT     }   ALTER TABLE ONLY public.ads
    ADD CONSTRAINT addresses FOREIGN KEY (id_address) REFERENCES public.addresses(id) NOT VALID;
 7   ALTER TABLE ONLY public.ads DROP CONSTRAINT addresses;
       public          postgres    false    209    210    3174            i           2606    24611 
   ads author    FK CONSTRAINT     v   ALTER TABLE ONLY public.ads
    ADD CONSTRAINT author FOREIGN KEY (id_author) REFERENCES public.author(id) NOT VALID;
 4   ALTER TABLE ONLY public.ads DROP CONSTRAINT author;
       public          postgres    false    209    211    3176            �   �   x���M
�@FםS��b����h��� nU(�ܶ���vz�/7�kA&	y��=��
d���8�Ȃ�7�(�i&[�����	,*��H	�zH.1��le-	�7�
=�\Mz�����ӧ��S���A8
�fׅ'�$ƕVV���©���]N���Q4����8<>��8s�<�a��Q�淚��J�;��      �   g  x��XMoU]O~�c�JN�8�������BH�TH�l��AMc�-PQ�)H�r<����/����9��=N�KDJϼ���s�=��ilG�7�����}��_{��f>�9܊�n�����_����'5ǿ~Z|��/��'jF�f=�/�p&Cc<�����'��E���N��f��sX�l�æ<*NqiR<��+,��&\�������sw�py�%�k�"�Qs����!�`�8aE���F��'���x�[V���� `�L{%��Y�Z����?�F;�'F�`���O�ܵ���;P�&g�yH8���� C�c׷�^� ���`���ٛl�pV�G�%��f����+���\������,���Q�]��9�	SP�M��A&P	�0���l�UŇȍ��1��%�7○s�4�����g��L*5��\1���۽�&��g%!M���X3x�#��X�׀�C���	p5Е��HR �v�}_$NK�rCEif�/�u��)��uSU).�����������ZZɉ"b(�!������y1#v{kg�#����pq��C��~+�C)1	��\��'�}��X%�a�֙��k}�`tF�#r��q�B�rk��{��3I�v���,�D����ׄ.Cͷ��D�SBK���!��U �`*ݑ`a�-��O�M���`'jHB�Cc�\0/'"`*jө�!��J��%����X�+�m}fv�N���g��������?�t����bo�Kw���{+ܶ�>��ϓ�Ƃ������}$]��Sw��s��,�{�*���\K��p�V��Pa�xI��jۏa�\h������V��]�X9����vԍ��r[y]���]j�Ni�C^�R�m���ۂ5ëR�B��,����a75�N�`!�WF��0�3z�F��
֨B�;bea�Q�9Z#�U�7�ʑbT���j�*Ѕ6��i�ݱ�'�e�̴���~����8�%��7M�YsF�1F$3)�(*8ꧧ�7���{���X�1O�:�דR�l�B{ƹ�����>�6��<�ql�9a F�j��1��8�̥璢����f&5��2�~�VG��'��TR+�+8<������ge��"-N��g��a*L*�b�Vq��3��-���*��K���c��זP$<��H��^��;��l4��XV�^�E��n2������
<ZQs����>�H7�Ƶ�2`~L�PfV`#Y���Ǡ���m��$e]e.̇3#
�!D�┷W3O���i*L�2�6d��$g�da�+���EJ%�]�4�w��f�``�&g!96�n:eiѨ;�~�<\SZ5B�,C+�%J��G&ó���Q+0�shSL"=M��k/g��)�";6&���SC0\�zgK�:��X&(�k��o'O{2L����ެL�p��-���6��xi#^	2�qu[M6��I�?H�X=~daX��;�ю�jXi�k?�T����x��j��h�c�L�*#�6N�\��15S�9! �Ku�Ć�}��Tx���]
c���Wxj��^���)�6����s(�nE��{�}�p��#y����e��-����:g"
�!�@�㙽��*qà<���r�y7+i~ޘt���Z����f�~���i�ו+q�a��K��Nf���Q� r^�ؗ�t��Ã\�}��n��uga��hQ����b���*�p:Q6ʩn���9�Y�i@P#T	�D�[�	�m(�*�� �����[��]���h��O{߸��ݕȠ��@�����`ǳ�Ć��^V��3�^����؅�N6UzjW�>tQVL6@uVFX���5zj��걽� 2��������_�3�      �   c   x�e��� DϻUP���j,�@=[ &$D"5�v�r��f޴�Y,�,��;<"�
��A�XS<.����C}����s"l
�^sU�a�c�>�     