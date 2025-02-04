PGDMP                 	    
    z            siakad    15.0    15.0 <    @           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            A           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            B           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            C           1262    16398    siakad    DATABASE     �   CREATE DATABASE siakad WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE siakad;
                postgres    false            �            1259    16400 	   mahasiswa    TABLE     ~   CREATE TABLE public.mahasiswa (
    nim integer NOT NULL,
    nama character varying(30),
    alamat character varying(50)
);
    DROP TABLE public.mahasiswa;
       public         heap    postgres    false            �            1259    16399    mahasiswa_nim_seq    SEQUENCE     �   CREATE SEQUENCE public.mahasiswa_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.mahasiswa_nim_seq;
       public          postgres    false    215            D           0    0    mahasiswa_nim_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.mahasiswa_nim_seq OWNED BY public.mahasiswa.nim;
          public          postgres    false    214            �            1259    16408 	   mahasiswi    TABLE     ~   CREATE TABLE public.mahasiswi (
    nim integer NOT NULL,
    nama character varying(30),
    alamat character varying(50)
);
    DROP TABLE public.mahasiswi;
       public         heap    postgres    false            �            1259    16407    mahasiswi_nim_seq    SEQUENCE     �   CREATE SEQUENCE public.mahasiswi_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.mahasiswi_nim_seq;
       public          postgres    false    217            E           0    0    mahasiswi_nim_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.mahasiswi_nim_seq OWNED BY public.mahasiswi.nim;
          public          postgres    false    216            �            1259    16415 
   matakuliah    TABLE     _   CREATE TABLE public.matakuliah (
    smstr integer NOT NULL,
    nama character varying(30)
);
    DROP TABLE public.matakuliah;
       public         heap    postgres    false            �            1259    16414    matakuliah_smstr_seq    SEQUENCE     �   CREATE SEQUENCE public.matakuliah_smstr_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.matakuliah_smstr_seq;
       public          postgres    false    219            F           0    0    matakuliah_smstr_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.matakuliah_smstr_seq OWNED BY public.matakuliah.smstr;
          public          postgres    false    218            �            1259    16446    matkul    TABLE     {   CREATE TABLE public.matkul (
    makul character varying(70),
    waktu character varying(60),
    sks integer NOT NULL
);
    DROP TABLE public.matkul;
       public         heap    postgres    false            �            1259    16445    matkul_sks_seq    SEQUENCE     �   CREATE SEQUENCE public.matkul_sks_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.matkul_sks_seq;
       public          postgres    false    227            G           0    0    matkul_sks_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.matkul_sks_seq OWNED BY public.matkul.sks;
          public          postgres    false    226            �            1259    16423    mhs    TABLE     x   CREATE TABLE public.mhs (
    nim integer NOT NULL,
    nama character varying(30),
    alamat character varying(50)
);
    DROP TABLE public.mhs;
       public         heap    postgres    false            �            1259    16422    mhs_nim_seq    SEQUENCE     �   CREATE SEQUENCE public.mhs_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.mhs_nim_seq;
       public          postgres    false    221            H           0    0    mhs_nim_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.mhs_nim_seq OWNED BY public.mhs.nim;
          public          postgres    false    220            �            1259    16431    pelajar    TABLE     |   CREATE TABLE public.pelajar (
    nim integer NOT NULL,
    nama character varying(90),
    alamat character varying(80)
);
    DROP TABLE public.pelajar;
       public         heap    postgres    false            �            1259    16430    pelajar_nim_seq    SEQUENCE     �   CREATE SEQUENCE public.pelajar_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.pelajar_nim_seq;
       public          postgres    false    223            I           0    0    pelajar_nim_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.pelajar_nim_seq OWNED BY public.pelajar.nim;
          public          postgres    false    222            �            1259    16453    pengajar    TABLE     �   CREATE TABLE public.pengajar (
    dosen character varying(90),
    matakuliahwajib character varying(80),
    codeclassrom integer NOT NULL
);
    DROP TABLE public.pengajar;
       public         heap    postgres    false            �            1259    16452    pengajar_codeclassrom_seq    SEQUENCE     �   CREATE SEQUENCE public.pengajar_codeclassrom_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.pengajar_codeclassrom_seq;
       public          postgres    false    229            J           0    0    pengajar_codeclassrom_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.pengajar_codeclassrom_seq OWNED BY public.pengajar.codeclassrom;
          public          postgres    false    228            �            1259    16438    student    TABLE     |   CREATE TABLE public.student (
    nim integer NOT NULL,
    nama character varying(90),
    alamat character varying(80)
);
    DROP TABLE public.student;
       public         heap    postgres    false            �            1259    16437    student_nim_seq    SEQUENCE     �   CREATE SEQUENCE public.student_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.student_nim_seq;
       public          postgres    false    225            K           0    0    student_nim_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.student_nim_seq OWNED BY public.student.nim;
          public          postgres    false    224            �           2604    16403    mahasiswa nim    DEFAULT     n   ALTER TABLE ONLY public.mahasiswa ALTER COLUMN nim SET DEFAULT nextval('public.mahasiswa_nim_seq'::regclass);
 <   ALTER TABLE public.mahasiswa ALTER COLUMN nim DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    16411    mahasiswi nim    DEFAULT     n   ALTER TABLE ONLY public.mahasiswi ALTER COLUMN nim SET DEFAULT nextval('public.mahasiswi_nim_seq'::regclass);
 <   ALTER TABLE public.mahasiswi ALTER COLUMN nim DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    16418    matakuliah smstr    DEFAULT     t   ALTER TABLE ONLY public.matakuliah ALTER COLUMN smstr SET DEFAULT nextval('public.matakuliah_smstr_seq'::regclass);
 ?   ALTER TABLE public.matakuliah ALTER COLUMN smstr DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    16449 
   matkul sks    DEFAULT     h   ALTER TABLE ONLY public.matkul ALTER COLUMN sks SET DEFAULT nextval('public.matkul_sks_seq'::regclass);
 9   ALTER TABLE public.matkul ALTER COLUMN sks DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    16426    mhs nim    DEFAULT     b   ALTER TABLE ONLY public.mhs ALTER COLUMN nim SET DEFAULT nextval('public.mhs_nim_seq'::regclass);
 6   ALTER TABLE public.mhs ALTER COLUMN nim DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    16434    pelajar nim    DEFAULT     j   ALTER TABLE ONLY public.pelajar ALTER COLUMN nim SET DEFAULT nextval('public.pelajar_nim_seq'::regclass);
 :   ALTER TABLE public.pelajar ALTER COLUMN nim DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    16456    pengajar codeclassrom    DEFAULT     ~   ALTER TABLE ONLY public.pengajar ALTER COLUMN codeclassrom SET DEFAULT nextval('public.pengajar_codeclassrom_seq'::regclass);
 D   ALTER TABLE public.pengajar ALTER COLUMN codeclassrom DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    16441    student nim    DEFAULT     j   ALTER TABLE ONLY public.student ALTER COLUMN nim SET DEFAULT nextval('public.student_nim_seq'::regclass);
 :   ALTER TABLE public.student ALTER COLUMN nim DROP DEFAULT;
       public          postgres    false    225    224    225            /          0    16400 	   mahasiswa 
   TABLE DATA           6   COPY public.mahasiswa (nim, nama, alamat) FROM stdin;
    public          postgres    false    215   �=       1          0    16408 	   mahasiswi 
   TABLE DATA           6   COPY public.mahasiswi (nim, nama, alamat) FROM stdin;
    public          postgres    false    217   �=       3          0    16415 
   matakuliah 
   TABLE DATA           1   COPY public.matakuliah (smstr, nama) FROM stdin;
    public          postgres    false    219   >       ;          0    16446    matkul 
   TABLE DATA           3   COPY public.matkul (makul, waktu, sks) FROM stdin;
    public          postgres    false    227   *>       5          0    16423    mhs 
   TABLE DATA           0   COPY public.mhs (nim, nama, alamat) FROM stdin;
    public          postgres    false    221   �>       7          0    16431    pelajar 
   TABLE DATA           4   COPY public.pelajar (nim, nama, alamat) FROM stdin;
    public          postgres    false    223   �>       =          0    16453    pengajar 
   TABLE DATA           H   COPY public.pengajar (dosen, matakuliahwajib, codeclassrom) FROM stdin;
    public          postgres    false    229   ?       9          0    16438    student 
   TABLE DATA           4   COPY public.student (nim, nama, alamat) FROM stdin;
    public          postgres    false    225   �?       L           0    0    mahasiswa_nim_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.mahasiswa_nim_seq', 1, false);
          public          postgres    false    214            M           0    0    mahasiswi_nim_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.mahasiswi_nim_seq', 1, false);
          public          postgres    false    216            N           0    0    matakuliah_smstr_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.matakuliah_smstr_seq', 1, false);
          public          postgres    false    218            O           0    0    matkul_sks_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.matkul_sks_seq', 1, false);
          public          postgres    false    226            P           0    0    mhs_nim_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.mhs_nim_seq', 1, false);
          public          postgres    false    220            Q           0    0    pelajar_nim_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.pelajar_nim_seq', 1, false);
          public          postgres    false    222            R           0    0    pengajar_codeclassrom_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.pengajar_codeclassrom_seq', 1, false);
          public          postgres    false    228            S           0    0    student_nim_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.student_nim_seq', 1, false);
          public          postgres    false    224            �           2606    16405    mahasiswa mahasiswa_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_pkey PRIMARY KEY (nim);
 B   ALTER TABLE ONLY public.mahasiswa DROP CONSTRAINT mahasiswa_pkey;
       public            postgres    false    215            �           2606    16413    mahasiswi mahasiswi_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.mahasiswi
    ADD CONSTRAINT mahasiswi_pkey PRIMARY KEY (nim);
 B   ALTER TABLE ONLY public.mahasiswi DROP CONSTRAINT mahasiswi_pkey;
       public            postgres    false    217            �           2606    16420    matakuliah matakuliah_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.matakuliah
    ADD CONSTRAINT matakuliah_pkey PRIMARY KEY (smstr);
 D   ALTER TABLE ONLY public.matakuliah DROP CONSTRAINT matakuliah_pkey;
       public            postgres    false    219            �           2606    16451    matkul matkul_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.matkul
    ADD CONSTRAINT matkul_pkey PRIMARY KEY (sks);
 <   ALTER TABLE ONLY public.matkul DROP CONSTRAINT matkul_pkey;
       public            postgres    false    227            �           2606    16428    mhs mhs_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY public.mhs
    ADD CONSTRAINT mhs_pkey PRIMARY KEY (nim);
 6   ALTER TABLE ONLY public.mhs DROP CONSTRAINT mhs_pkey;
       public            postgres    false    221            �           2606    16436    pelajar pelajar_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.pelajar
    ADD CONSTRAINT pelajar_pkey PRIMARY KEY (nim);
 >   ALTER TABLE ONLY public.pelajar DROP CONSTRAINT pelajar_pkey;
       public            postgres    false    223            �           2606    16458    pengajar pengajar_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.pengajar
    ADD CONSTRAINT pengajar_pkey PRIMARY KEY (codeclassrom);
 @   ALTER TABLE ONLY public.pengajar DROP CONSTRAINT pengajar_pkey;
       public            postgres    false    229            �           2606    16443    student student_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (nim);
 >   ALTER TABLE ONLY public.student DROP CONSTRAINT student_pkey;
       public            postgres    false    225            /      x������ � �      1   6   x�322444�tK�*J,O,�����M��22246��,�L�L�O�/����� 2��      3      x������ � �      ;   M   x�p��4��34�4�r,���N,�T���-(-I-�40�32�4�
H��O/J�M�SȨ,���44�30�4����� ���      5   6   x�322444�ts�
rw�����M��22246���K�M�L��%\1z\\\ +�R      7   :   x�322444�tK�*J,O,�����M��2�Xp:��d&�q�&���s��qqq }U      =   r   x��=�0@��>Ee�'t�XE�Had1j%\Q#Ya��ox�T��y*�6�ev6�Cؿ�����?
M���H�Ef<�����`ڮr�]�G����.�
�M��a��!��y       9   I   x�322444�tK�*J,O,�����M��2�Xp:��d&�q�&��楃E8�K�9�s�b���� ��p     