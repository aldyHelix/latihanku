PGDMP     *                     u         
   db_absensi    10.1    10.1     �
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �
           1262    16414 
   db_absensi    DATABASE     �   CREATE DATABASE db_absensi WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE db_absensi;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16415    absen_masuk    TABLE     �   CREATE TABLE absen_masuk (
    no character varying(10) NOT NULL,
    nip character varying(30),
    waktu_absen timestamp with time zone
);
    DROP TABLE public.absen_masuk;
       public         postgres    false    3            �            1259    16420    absen_pulang    TABLE     �   CREATE TABLE absen_pulang (
    no character varying(10) NOT NULL,
    nip character varying(30),
    waktu_absen timestamp without time zone
);
     DROP TABLE public.absen_pulang;
       public         postgres    false    3            �
          0    16415    absen_masuk 
   TABLE DATA               4   COPY absen_masuk (no, nip, waktu_absen) FROM stdin;
    public       postgres    false    196   �       �
          0    16420    absen_pulang 
   TABLE DATA               5   COPY absen_pulang (no, nip, waktu_absen) FROM stdin;
    public       postgres    false    197   2       q
           2606    16419    absen_masuk absen_masuk_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY absen_masuk
    ADD CONSTRAINT absen_masuk_pkey PRIMARY KEY (no);
 F   ALTER TABLE ONLY public.absen_masuk DROP CONSTRAINT absen_masuk_pkey;
       public         postgres    false    196            s
           2606    16424    absen_pulang absen_pulang_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY absen_pulang
    ADD CONSTRAINT absen_pulang_pkey PRIMARY KEY (no);
 H   ALTER TABLE ONLY public.absen_pulang DROP CONSTRAINT absen_pulang_pkey;
       public         postgres    false    197            �
   I   x�3�4���2�P��B�A(s ed`h�kh�k`�`d`edjed�m`�e�!eD� )KL)C+S�T� ���      �
      x������ � �     