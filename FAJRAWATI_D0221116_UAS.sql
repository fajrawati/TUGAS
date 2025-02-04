PGDMP                 
        z            retail    15.0    15.0                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16571    retail    DATABASE     �   CREATE DATABASE retail WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE retail;
                postgres    false            �            1259    16580 	   pelanggan    TABLE     �   CREATE TABLE public.pelanggan (
    no integer,
    kode_pelanggan integer NOT NULL,
    no_whatsapp character(15),
    nama_pelanggang character varying(50),
    alamat character varying(50)
);
    DROP TABLE public.pelanggan;
       public         heap    postgres    false            �            1259    16579    pelanggan_kode_pelanggan_seq    SEQUENCE     �   CREATE SEQUENCE public.pelanggan_kode_pelanggan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.pelanggan_kode_pelanggan_seq;
       public          postgres    false    217                       0    0    pelanggan_kode_pelanggan_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.pelanggan_kode_pelanggan_seq OWNED BY public.pelanggan.kode_pelanggan;
          public          postgres    false    216            �            1259    16594 
   pembayaran    TABLE     �   CREATE TABLE public.pembayaran (
    no integer,
    no_pembayaran integer NOT NULL,
    kode_pemesanan integer,
    tanggal_bayar date,
    total_bayar money,
    keterangan character varying(50)
);
    DROP TABLE public.pembayaran;
       public         heap    postgres    false            �            1259    16593    pembayaran_no_pembayaran_seq    SEQUENCE     �   CREATE SEQUENCE public.pembayaran_no_pembayaran_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.pembayaran_no_pembayaran_seq;
       public          postgres    false    221                       0    0    pembayaran_no_pembayaran_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.pembayaran_no_pembayaran_seq OWNED BY public.pembayaran.no_pembayaran;
          public          postgres    false    220            �            1259    16587 	   pemesanan    TABLE     �   CREATE TABLE public.pemesanan (
    no integer,
    kode_pelanggan integer NOT NULL,
    tanggal_pemesanan date,
    jumlah_pemesanan integer,
    harga_jual money,
    harga_beli money,
    total_harga money
);
    DROP TABLE public.pemesanan;
       public         heap    postgres    false            �            1259    16586    pemesanan_kode_pelanggan_seq    SEQUENCE     �   CREATE SEQUENCE public.pemesanan_kode_pelanggan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.pemesanan_kode_pelanggan_seq;
       public          postgres    false    219                       0    0    pemesanan_kode_pelanggan_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.pemesanan_kode_pelanggan_seq OWNED BY public.pemesanan.kode_pelanggan;
          public          postgres    false    218            �            1259    16573    produk    TABLE     �   CREATE TABLE public.produk (
    no integer,
    kode_barang integer NOT NULL,
    nama_barang character varying(50),
    stok_awal integer,
    stok_akhir integer
);
    DROP TABLE public.produk;
       public         heap    postgres    false            �            1259    16572    produk_kode_barang_seq    SEQUENCE     �   CREATE SEQUENCE public.produk_kode_barang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.produk_kode_barang_seq;
       public          postgres    false    215                       0    0    produk_kode_barang_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.produk_kode_barang_seq OWNED BY public.produk.kode_barang;
          public          postgres    false    214            u           2604    16583    pelanggan kode_pelanggan    DEFAULT     �   ALTER TABLE ONLY public.pelanggan ALTER COLUMN kode_pelanggan SET DEFAULT nextval('public.pelanggan_kode_pelanggan_seq'::regclass);
 G   ALTER TABLE public.pelanggan ALTER COLUMN kode_pelanggan DROP DEFAULT;
       public          postgres    false    217    216    217            w           2604    16597    pembayaran no_pembayaran    DEFAULT     �   ALTER TABLE ONLY public.pembayaran ALTER COLUMN no_pembayaran SET DEFAULT nextval('public.pembayaran_no_pembayaran_seq'::regclass);
 G   ALTER TABLE public.pembayaran ALTER COLUMN no_pembayaran DROP DEFAULT;
       public          postgres    false    221    220    221            v           2604    16590    pemesanan kode_pelanggan    DEFAULT     �   ALTER TABLE ONLY public.pemesanan ALTER COLUMN kode_pelanggan SET DEFAULT nextval('public.pemesanan_kode_pelanggan_seq'::regclass);
 G   ALTER TABLE public.pemesanan ALTER COLUMN kode_pelanggan DROP DEFAULT;
       public          postgres    false    218    219    219            t           2604    16576    produk kode_barang    DEFAULT     x   ALTER TABLE ONLY public.produk ALTER COLUMN kode_barang SET DEFAULT nextval('public.produk_kode_barang_seq'::regclass);
 A   ALTER TABLE public.produk ALTER COLUMN kode_barang DROP DEFAULT;
       public          postgres    false    215    214    215                      0    16580 	   pelanggan 
   TABLE DATA           ]   COPY public.pelanggan (no, kode_pelanggan, no_whatsapp, nama_pelanggang, alamat) FROM stdin;
    public          postgres    false    217   x$                 0    16594 
   pembayaran 
   TABLE DATA           o   COPY public.pembayaran (no, no_pembayaran, kode_pemesanan, tanggal_bayar, total_bayar, keterangan) FROM stdin;
    public          postgres    false    221   �%                 0    16587 	   pemesanan 
   TABLE DATA           �   COPY public.pemesanan (no, kode_pelanggan, tanggal_pemesanan, jumlah_pemesanan, harga_jual, harga_beli, total_harga) FROM stdin;
    public          postgres    false    219   �&                 0    16573    produk 
   TABLE DATA           U   COPY public.produk (no, kode_barang, nama_barang, stok_awal, stok_akhir) FROM stdin;
    public          postgres    false    215   �'                   0    0    pelanggan_kode_pelanggan_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.pelanggan_kode_pelanggan_seq', 1, false);
          public          postgres    false    216            !           0    0    pembayaran_no_pembayaran_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.pembayaran_no_pembayaran_seq', 1, false);
          public          postgres    false    220            "           0    0    pemesanan_kode_pelanggan_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.pemesanan_kode_pelanggan_seq', 1, false);
          public          postgres    false    218            #           0    0    produk_kode_barang_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.produk_kode_barang_seq', 1, false);
          public          postgres    false    214            {           2606    16585    pelanggan pelanggan_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.pelanggan
    ADD CONSTRAINT pelanggan_pkey PRIMARY KEY (kode_pelanggan);
 B   ALTER TABLE ONLY public.pelanggan DROP CONSTRAINT pelanggan_pkey;
       public            postgres    false    217                       2606    16599    pembayaran pembayaran_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (no_pembayaran);
 D   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT pembayaran_pkey;
       public            postgres    false    221            }           2606    16592    pemesanan pemesanan_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.pemesanan
    ADD CONSTRAINT pemesanan_pkey PRIMARY KEY (kode_pelanggan);
 B   ALTER TABLE ONLY public.pemesanan DROP CONSTRAINT pemesanan_pkey;
       public            postgres    false    219            y           2606    16578    produk produk_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.produk
    ADD CONSTRAINT produk_pkey PRIMARY KEY (kode_barang);
 <   ALTER TABLE ONLY public.produk DROP CONSTRAINT produk_pkey;
       public            postgres    false    215               ?  x�e�]�� �g8'�hK�J-0F4����;�I%�7~��_�-g�5��j��R��s^$H�s���9��fG� ��� �ed�JzG3�WR�eӞƚ��P�5��cҝ��:&�
1L &��MOyaw9]�\��h5ΐ/��!�k������\|��1���z�Q:���Ǻ�'Q�:|scy;�s����������5{Ɂ�S��J�Yjͮ�C�qD65�H��L�QE�Ě�-�E�Uy��rKs8�
�u_�lj��&ޘ1�qC�9$[�d-�;�Aݡ���j��Vy��:�5�H��'F�}� �H���)�ЃN         �   x�u�=n�0���>K-�G��{�!E�"��"}D�DJW�!@�5o,L,�j.�	��G�p�i�L��>�����ϟ]�+�/�s��:���:σ��케��sIu�Ź���'v����
nN�,�W��>��2���o��SYR��	/���x&�1`㵶ޒ�=�Z�U�1����
��_Z9��/)/��
ښ�W�
�>W�".�{�7��
��S]ߟgM����z�s         �   x���;r1Dct����4�p�C��ъ��u�g�����	�1#�At�
|~����h5z-u��,l,;���s���f�͊��l���ÿX����ۜ� Ϟ�5p����o�v&���nl�,��4�d��/r��.5���4z:݁�_�&������4�؍�ם��g�K�[��ת�ݣq���2>��|e�Zk��L��UڵӚSʢn��4��G7ᛵeۖ4э�-^iI�N�}p����X7��         �   x�e�Mn�0���)8Ae���ɄQ�.������*u���g����QE��Y��3V��	�[�~���o/:�CS���c����1���b�/��ȡf���,LG��i^�z.S��oeM��S����B��W���ğ�g+��A� ������n�x��u
$��/�'�W	RI{�Bډ�oG<Һ�F�@���P�X=CлsF���)�Rآ�ύ�0i����c5��dU���a��1�R\     