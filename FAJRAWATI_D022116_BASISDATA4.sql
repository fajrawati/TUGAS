PGDMP                      
    z            retail    15.0    15.0 .    ,           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            -           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            .           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            /           1262    16459    retail    DATABASE     �   CREATE DATABASE retail WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE retail;
                postgres    false            �            1259    16489    barang    TABLE     �   CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    nama_barang character varying(50),
    harga integer,
    stok integer,
    id_supplier integer
);
    DROP TABLE public.barang;
       public         heap    postgres    false            �            1259    16488    barang_id_barang_seq    SEQUENCE     �   CREATE SEQUENCE public.barang_id_barang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.barang_id_barang_seq;
       public          postgres    false    223            0           0    0    barang_id_barang_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.barang_id_barang_seq OWNED BY public.barang.id_barang;
          public          postgres    false    222            �            1259    16468 	   pelanggan    TABLE     �   CREATE TABLE public.pelanggan (
    id_pelanggan integer NOT NULL,
    nama_pelanggan character varying(50),
    phone character(15),
    alamat character varying(30)
);
    DROP TABLE public.pelanggan;
       public         heap    postgres    false            �            1259    16467    pelanggan_id_pelanggan_seq    SEQUENCE     �   CREATE SEQUENCE public.pelanggan_id_pelanggan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.pelanggan_id_pelanggan_seq;
       public          postgres    false    217            1           0    0    pelanggan_id_pelanggan_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.pelanggan_id_pelanggan_seq OWNED BY public.pelanggan.id_pelanggan;
          public          postgres    false    216            �            1259    16482 
   pelanggann    TABLE     �   CREATE TABLE public.pelanggann (
    id_pelanggann integer NOT NULL,
    nama_pelanggann character varying(50),
    phone character(15),
    alamat character varying(30)
);
    DROP TABLE public.pelanggann;
       public         heap    postgres    false            �            1259    16481    pelanggann_id_pelanggann_seq    SEQUENCE     �   CREATE SEQUENCE public.pelanggann_id_pelanggann_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.pelanggann_id_pelanggann_seq;
       public          postgres    false    221            2           0    0    pelanggann_id_pelanggann_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.pelanggann_id_pelanggann_seq OWNED BY public.pelanggann.id_pelanggann;
          public          postgres    false    220            �            1259    16496 
   pembayaran    TABLE     �   CREATE TABLE public.pembayaran (
    no_pembayaran integer NOT NULL,
    id_pelanggan integer,
    tanggal_bayar date,
    jumlah_barang integer,
    total_bayar integer
);
    DROP TABLE public.pembayaran;
       public         heap    postgres    false            �            1259    16495    pembayaran_no_pembayaran_seq    SEQUENCE     �   CREATE SEQUENCE public.pembayaran_no_pembayaran_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.pembayaran_no_pembayaran_seq;
       public          postgres    false    225            3           0    0    pembayaran_no_pembayaran_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.pembayaran_no_pembayaran_seq OWNED BY public.pembayaran.no_pembayaran;
          public          postgres    false    224            �            1259    16461    supplier    TABLE     �   CREATE TABLE public.supplier (
    id_supplier integer NOT NULL,
    nama_supplier character varying(30),
    phone character(15),
    alamat character varying(100)
);
    DROP TABLE public.supplier;
       public         heap    postgres    false            �            1259    16460    supplier_id_supplier_seq    SEQUENCE     �   CREATE SEQUENCE public.supplier_id_supplier_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.supplier_id_supplier_seq;
       public          postgres    false    215            4           0    0    supplier_id_supplier_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.supplier_id_supplier_seq OWNED BY public.supplier.id_supplier;
          public          postgres    false    214            �            1259    16475 	   supplierr    TABLE     �   CREATE TABLE public.supplierr (
    id_supplierr integer NOT NULL,
    nama_supplierr character varying(30),
    phone character(15),
    alamat character varying(100)
);
    DROP TABLE public.supplierr;
       public         heap    postgres    false            �            1259    16474    supplierr_id_supplierr_seq    SEQUENCE     �   CREATE SEQUENCE public.supplierr_id_supplierr_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.supplierr_id_supplierr_seq;
       public          postgres    false    219            5           0    0    supplierr_id_supplierr_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.supplierr_id_supplierr_seq OWNED BY public.supplierr.id_supplierr;
          public          postgres    false    218            �           2604    16492    barang id_barang    DEFAULT     t   ALTER TABLE ONLY public.barang ALTER COLUMN id_barang SET DEFAULT nextval('public.barang_id_barang_seq'::regclass);
 ?   ALTER TABLE public.barang ALTER COLUMN id_barang DROP DEFAULT;
       public          postgres    false    223    222    223                       2604    16471    pelanggan id_pelanggan    DEFAULT     �   ALTER TABLE ONLY public.pelanggan ALTER COLUMN id_pelanggan SET DEFAULT nextval('public.pelanggan_id_pelanggan_seq'::regclass);
 E   ALTER TABLE public.pelanggan ALTER COLUMN id_pelanggan DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    16485    pelanggann id_pelanggann    DEFAULT     �   ALTER TABLE ONLY public.pelanggann ALTER COLUMN id_pelanggann SET DEFAULT nextval('public.pelanggann_id_pelanggann_seq'::regclass);
 G   ALTER TABLE public.pelanggann ALTER COLUMN id_pelanggann DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    16499    pembayaran no_pembayaran    DEFAULT     �   ALTER TABLE ONLY public.pembayaran ALTER COLUMN no_pembayaran SET DEFAULT nextval('public.pembayaran_no_pembayaran_seq'::regclass);
 G   ALTER TABLE public.pembayaran ALTER COLUMN no_pembayaran DROP DEFAULT;
       public          postgres    false    225    224    225            ~           2604    16464    supplier id_supplier    DEFAULT     |   ALTER TABLE ONLY public.supplier ALTER COLUMN id_supplier SET DEFAULT nextval('public.supplier_id_supplier_seq'::regclass);
 C   ALTER TABLE public.supplier ALTER COLUMN id_supplier DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    16478    supplierr id_supplierr    DEFAULT     �   ALTER TABLE ONLY public.supplierr ALTER COLUMN id_supplierr SET DEFAULT nextval('public.supplierr_id_supplierr_seq'::regclass);
 E   ALTER TABLE public.supplierr ALTER COLUMN id_supplierr DROP DEFAULT;
       public          postgres    false    218    219    219            '          0    16489    barang 
   TABLE DATA           R   COPY public.barang (id_barang, nama_barang, harga, stok, id_supplier) FROM stdin;
    public          postgres    false    223   �3       !          0    16468 	   pelanggan 
   TABLE DATA           P   COPY public.pelanggan (id_pelanggan, nama_pelanggan, phone, alamat) FROM stdin;
    public          postgres    false    217   4       %          0    16482 
   pelanggann 
   TABLE DATA           S   COPY public.pelanggann (id_pelanggann, nama_pelanggann, phone, alamat) FROM stdin;
    public          postgres    false    221   �4       )          0    16496 
   pembayaran 
   TABLE DATA           l   COPY public.pembayaran (no_pembayaran, id_pelanggan, tanggal_bayar, jumlah_barang, total_bayar) FROM stdin;
    public          postgres    false    225   )5                 0    16461    supplier 
   TABLE DATA           M   COPY public.supplier (id_supplier, nama_supplier, phone, alamat) FROM stdin;
    public          postgres    false    215   �5       #          0    16475 	   supplierr 
   TABLE DATA           P   COPY public.supplierr (id_supplierr, nama_supplierr, phone, alamat) FROM stdin;
    public          postgres    false    219    6       6           0    0    barang_id_barang_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.barang_id_barang_seq', 1, false);
          public          postgres    false    222            7           0    0    pelanggan_id_pelanggan_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.pelanggan_id_pelanggan_seq', 1, false);
          public          postgres    false    216            8           0    0    pelanggann_id_pelanggann_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.pelanggann_id_pelanggann_seq', 1, false);
          public          postgres    false    220            9           0    0    pembayaran_no_pembayaran_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.pembayaran_no_pembayaran_seq', 1, false);
          public          postgres    false    224            :           0    0    supplier_id_supplier_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.supplier_id_supplier_seq', 1, false);
          public          postgres    false    214            ;           0    0    supplierr_id_supplierr_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.supplierr_id_supplierr_seq', 1, false);
          public          postgres    false    218            �           2606    16494    barang barang_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    223            �           2606    16473    pelanggan pelanggan_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.pelanggan
    ADD CONSTRAINT pelanggan_pkey PRIMARY KEY (id_pelanggan);
 B   ALTER TABLE ONLY public.pelanggan DROP CONSTRAINT pelanggan_pkey;
       public            postgres    false    217            �           2606    16487    pelanggann pelanggann_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.pelanggann
    ADD CONSTRAINT pelanggann_pkey PRIMARY KEY (id_pelanggann);
 D   ALTER TABLE ONLY public.pelanggann DROP CONSTRAINT pelanggann_pkey;
       public            postgres    false    221            �           2606    16501    pembayaran pembayaran_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (no_pembayaran);
 D   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT pembayaran_pkey;
       public            postgres    false    225            �           2606    16466    supplier supplier_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id_supplier);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public            postgres    false    215            �           2606    16480    supplierr supplierr_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.supplierr
    ADD CONSTRAINT supplierr_pkey PRIMARY KEY (id_supplierr);
 B   ALTER TABLE ONLY public.supplierr DROP CONSTRAINT supplierr_pkey;
       public            postgres    false    219            '   M   x�34441�t����45 NC 620062�2#c� �ONK�,X�"�8}=�"�9���`�F�\1z\\\ ��      !   z   x�342�47�ts�
rw��4�02166�0042VPP���K�M*�K�
 E�J�C�<A
���--��́
}�R�RA�LLM�5������Y�	H]���k���������cW� �(      %   s   x�342�47�ts�
rw��4�02166�0042VPP���K�M*�K�
 E�J�C�<A
���--��́
}�R�RA�,- z��������L��I-O������� 	�      )   H   x�E̱ 1�z������� �F���0%��N`�.�T}�m�&�So5�wtv�}�^�63����         �   x��A
� E��s�2��궛�@ �.�жAAJn_]��{��"�'Lg�u�0�a�/ZR���J+�9F.�� DI�yCʞ7�s���V��:Ιj���&���|z��a>b	��z����f�q��3p伳x]�$1+�      #   �   x��A
� E��s�2��궛�@ �.�жAAJn_]��{��"�'Lg�u�0�a�/ZR���J+�9F.�� DI�yCʞ7�s���V��:Ιj���&���|z��a>b	��z����f�q��3p伳x]�$1+�     