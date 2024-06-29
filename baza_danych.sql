PGDMP      :                |           wypozyczalnia2    16.3    16.3 )    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16648    wypozyczalnia2    DATABASE     �   CREATE DATABASE wypozyczalnia2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Polish_Poland.1250';
    DROP DATABASE wypozyczalnia2;
                postgres    false            �            1259    16649    Egzemplarze    TABLE     8  CREATE TABLE public."Egzemplarze" (
    marka character varying(20) NOT NULL,
    model character varying(20) NOT NULL,
    rejestracja character varying(7) NOT NULL,
    data_produkcji date NOT NULL,
    kolor character varying(15) NOT NULL,
    przebieg integer NOT NULL,
    cena double precision NOT NULL
);
 !   DROP TABLE public."Egzemplarze";
       public         heap    postgres    false            �            1259    16654    Klienci    TABLE     �   CREATE TABLE public."Klienci" (
    imie character varying(10) NOT NULL,
    nazwisko character varying(15) NOT NULL,
    login character varying(10) NOT NULL,
    haslo character varying(10) NOT NULL
);
    DROP TABLE public."Klienci";
       public         heap    postgres    false            �            1259    16660    Wypozyczenia    TABLE     �   CREATE TABLE public."Wypozyczenia" (
    id integer NOT NULL,
    login character varying(10) NOT NULL,
    rejestracja character varying(7) NOT NULL,
    data_wypozyczenia date NOT NULL,
    data_zwrotu date NOT NULL
);
 "   DROP TABLE public."Wypozyczenia";
       public         heap    postgres    false            �            1259    16659    Wypozyczenia_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Wypozyczenia_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Wypozyczenia_id_seq";
       public          postgres    false    218            �           0    0    Wypozyczenia_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Wypozyczenia_id_seq" OWNED BY public."Wypozyczenia".id;
          public          postgres    false    217            �            1259    16676    egzemplarze    TABLE     I  CREATE TABLE public.egzemplarze (
    rejestracja character varying(255) NOT NULL,
    cena double precision NOT NULL,
    data_produkcji timestamp without time zone NOT NULL,
    kolor character varying(255) NOT NULL,
    marka character varying(255),
    model character varying(255) NOT NULL,
    przebieg integer NOT NULL
);
    DROP TABLE public.egzemplarze;
       public         heap    postgres    false            �            1259    16683    klienci    TABLE     �   CREATE TABLE public.klienci (
    login character varying(255) NOT NULL,
    haslo character varying(255) NOT NULL,
    imie character varying(255) NOT NULL,
    nazwisko character varying(255) NOT NULL
);
    DROP TABLE public.klienci;
       public         heap    postgres    false            �            1259    16691    tabela    TABLE     [   CREATE TABLE public.tabela (
    id bigint NOT NULL,
    kolumna character varying(255)
);
    DROP TABLE public.tabela;
       public         heap    postgres    false            �            1259    16690    tabela_id_seq    SEQUENCE     v   CREATE SEQUENCE public.tabela_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.tabela_id_seq;
       public          postgres    false    222            �           0    0    tabela_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.tabela_id_seq OWNED BY public.tabela.id;
          public          postgres    false    221            �            1259    16698    wypozyczenia    TABLE       CREATE TABLE public.wypozyczenia (
    id integer NOT NULL,
    data_wypozyczenia timestamp without time zone NOT NULL,
    data_zwrotu timestamp without time zone NOT NULL,
    rejestracja character varying(255) NOT NULL,
    login character varying(255) NOT NULL
);
     DROP TABLE public.wypozyczenia;
       public         heap    postgres    false            �            1259    16697    wypozyczenia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wypozyczenia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.wypozyczenia_id_seq;
       public          postgres    false    224            �           0    0    wypozyczenia_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.wypozyczenia_id_seq OWNED BY public.wypozyczenia.id;
          public          postgres    false    223            4           2604    16663    Wypozyczenia id    DEFAULT     v   ALTER TABLE ONLY public."Wypozyczenia" ALTER COLUMN id SET DEFAULT nextval('public."Wypozyczenia_id_seq"'::regclass);
 @   ALTER TABLE public."Wypozyczenia" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            5           2604    16694 	   tabela id    DEFAULT     f   ALTER TABLE ONLY public.tabela ALTER COLUMN id SET DEFAULT nextval('public.tabela_id_seq'::regclass);
 8   ALTER TABLE public.tabela ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            6           2604    16701    wypozyczenia id    DEFAULT     r   ALTER TABLE ONLY public.wypozyczenia ALTER COLUMN id SET DEFAULT nextval('public.wypozyczenia_id_seq'::regclass);
 >   ALTER TABLE public.wypozyczenia ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            �          0    16649    Egzemplarze 
   TABLE DATA           i   COPY public."Egzemplarze" (marka, model, rejestracja, data_produkcji, kolor, przebieg, cena) FROM stdin;
    public          postgres    false    215   Z0       �          0    16654    Klienci 
   TABLE DATA           A   COPY public."Klienci" (imie, nazwisko, login, haslo) FROM stdin;
    public          postgres    false    216   ;1       �          0    16660    Wypozyczenia 
   TABLE DATA           `   COPY public."Wypozyczenia" (id, login, rejestracja, data_wypozyczenia, data_zwrotu) FROM stdin;
    public          postgres    false    218   �1       �          0    16676    egzemplarze 
   TABLE DATA           g   COPY public.egzemplarze (rejestracja, cena, data_produkcji, kolor, marka, model, przebieg) FROM stdin;
    public          postgres    false    219   d2       �          0    16683    klienci 
   TABLE DATA           ?   COPY public.klienci (login, haslo, imie, nazwisko) FROM stdin;
    public          postgres    false    220   �2       �          0    16691    tabela 
   TABLE DATA           -   COPY public.tabela (id, kolumna) FROM stdin;
    public          postgres    false    222   �2       �          0    16698    wypozyczenia 
   TABLE DATA           ^   COPY public.wypozyczenia (id, data_wypozyczenia, data_zwrotu, rejestracja, login) FROM stdin;
    public          postgres    false    224   �2       �           0    0    Wypozyczenia_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Wypozyczenia_id_seq"', 5, true);
          public          postgres    false    217            �           0    0    tabela_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.tabela_id_seq', 1, false);
          public          postgres    false    221            �           0    0    wypozyczenia_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.wypozyczenia_id_seq', 1, false);
          public          postgres    false    223            8           2606    16653    Egzemplarze Egzemplarze_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public."Egzemplarze"
    ADD CONSTRAINT "Egzemplarze_pkey" PRIMARY KEY (rejestracja);
 J   ALTER TABLE ONLY public."Egzemplarze" DROP CONSTRAINT "Egzemplarze_pkey";
       public            postgres    false    215            :           2606    16658    Klienci Klienci_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public."Klienci"
    ADD CONSTRAINT "Klienci_pkey" PRIMARY KEY (login);
 B   ALTER TABLE ONLY public."Klienci" DROP CONSTRAINT "Klienci_pkey";
       public            postgres    false    216            <           2606    16665    Wypozyczenia Wypozyczenia_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Wypozyczenia"
    ADD CONSTRAINT "Wypozyczenia_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Wypozyczenia" DROP CONSTRAINT "Wypozyczenia_pkey";
       public            postgres    false    218            >           2606    16682    egzemplarze egzemplarze_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.egzemplarze
    ADD CONSTRAINT egzemplarze_pkey PRIMARY KEY (rejestracja);
 F   ALTER TABLE ONLY public.egzemplarze DROP CONSTRAINT egzemplarze_pkey;
       public            postgres    false    219            @           2606    16689    klienci klienci_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.klienci
    ADD CONSTRAINT klienci_pkey PRIMARY KEY (login);
 >   ALTER TABLE ONLY public.klienci DROP CONSTRAINT klienci_pkey;
       public            postgres    false    220            B           2606    16696    tabela tabela_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.tabela
    ADD CONSTRAINT tabela_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.tabela DROP CONSTRAINT tabela_pkey;
       public            postgres    false    222            D           2606    16705    wypozyczenia wypozyczenia_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.wypozyczenia
    ADD CONSTRAINT wypozyczenia_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.wypozyczenia DROP CONSTRAINT wypozyczenia_pkey;
       public            postgres    false    224            G           2606    16711 (   wypozyczenia fk9d64c6i5n14cql7prj42x6exm    FK CONSTRAINT     �   ALTER TABLE ONLY public.wypozyczenia
    ADD CONSTRAINT fk9d64c6i5n14cql7prj42x6exm FOREIGN KEY (login) REFERENCES public.klienci(login);
 R   ALTER TABLE ONLY public.wypozyczenia DROP CONSTRAINT fk9d64c6i5n14cql7prj42x6exm;
       public          postgres    false    4672    220    224            H           2606    16706 (   wypozyczenia fkakly5cvqbx5w0hj7sn788qa98    FK CONSTRAINT     �   ALTER TABLE ONLY public.wypozyczenia
    ADD CONSTRAINT fkakly5cvqbx5w0hj7sn788qa98 FOREIGN KEY (rejestracja) REFERENCES public.egzemplarze(rejestracja);
 R   ALTER TABLE ONLY public.wypozyczenia DROP CONSTRAINT fkakly5cvqbx5w0hj7sn788qa98;
       public          postgres    false    224    219    4670            E           2606    16666     Wypozyczenia wypozyczenia_ibfk_1    FK CONSTRAINT     �   ALTER TABLE ONLY public."Wypozyczenia"
    ADD CONSTRAINT wypozyczenia_ibfk_1 FOREIGN KEY (login) REFERENCES public."Klienci"(login);
 L   ALTER TABLE ONLY public."Wypozyczenia" DROP CONSTRAINT wypozyczenia_ibfk_1;
       public          postgres    false    4666    216    218            F           2606    16671     Wypozyczenia wypozyczenia_ibfk_2    FK CONSTRAINT     �   ALTER TABLE ONLY public."Wypozyczenia"
    ADD CONSTRAINT wypozyczenia_ibfk_2 FOREIGN KEY (rejestracja) REFERENCES public."Egzemplarze"(rejestracja);
 L   ALTER TABLE ONLY public."Wypozyczenia" DROP CONSTRAINT wypozyczenia_ibfk_2;
       public          postgres    false    215    4664    218            �   �   x��;n�0D��)rKR��R�-;;��I#[,"@�	�2w˽���j߾�c���]Lq�4m��)�I�$%�E���w��P��Pq�m��L��p�j�۲r�Q�$+��>�S��K�����>�}<߮�l�jR�'�IC�3�l1`K�{�y8��o������j��0���b�H�)������*W*I<8$bC��Q^�xB���>�      �   �   x��J����/O�)����J����H,��742�r��K���es&�yS3�����"��̣��2S�A:@"���\މ%�EU�@�o�J����N,��r���&Wqz'�fmP�������+F��� w5V      �   �   x�E�I
�0��tI��<������)Ő�7��}��1'X��,ڀ�hEN72�@�9f�lw��P�Ul�Pû�g����KmfZ��@�e�����u��6Y�B^	�����\�&z|,�y�'�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     