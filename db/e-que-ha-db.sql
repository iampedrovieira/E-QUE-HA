PGDMP         -                y            tp2SIRbd    12.4    13.0 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16401    tp2SIRbd    DATABASE     _   CREATE DATABASE "tp2SIRbd" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE "tp2SIRbd";
                postgres    false            �           0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM rdsadmin;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    3            �            1259    33101    carrinho    TABLE     �   CREATE TABLE public.carrinho (
    carrinhoid integer NOT NULL,
    descricao character varying NOT NULL,
    userid integer NOT NULL
);
    DROP TABLE public.carrinho;
       public         heap    postgres    false            �            1259    24724    carrinho_carrinho_id_seq    SEQUENCE     �   CREATE SEQUENCE public.carrinho_carrinho_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.carrinho_carrinho_id_seq;
       public          postgres    false            �            1259    33099    carrinho_carrinhoid_seq    SEQUENCE     �   CREATE SEQUENCE public.carrinho_carrinhoid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.carrinho_carrinhoid_seq;
       public          postgres    false    236            �           0    0    carrinho_carrinhoid_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.carrinho_carrinhoid_seq OWNED BY public.carrinho.carrinhoid;
          public          postgres    false    235            �            1259    32951 	   categoria    TABLE     i   CREATE TABLE public.categoria (
    categoriaid integer NOT NULL,
    nome character varying NOT NULL
);
    DROP TABLE public.categoria;
       public         heap    postgres    false            �            1259    24727    categoria_categoria_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categoria_categoria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.categoria_categoria_id_seq;
       public          postgres    false            �            1259    32949    categoria_categoriaid_seq    SEQUENCE     �   CREATE SEQUENCE public.categoria_categoriaid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.categoria_categoriaid_seq;
       public          postgres    false    218            �           0    0    categoria_categoriaid_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.categoria_categoriaid_seq OWNED BY public.categoria.categoriaid;
          public          postgres    false    217            �            1259    32971    categoriaproduto    TABLE     k   CREATE TABLE public.categoriaproduto (
    categoriaid integer NOT NULL,
    produtoid integer NOT NULL
);
 $   DROP TABLE public.categoriaproduto;
       public         heap    postgres    false            �            1259    33055    compra    TABLE     [  CREATE TABLE public.compra (
    compraid integer NOT NULL,
    desconto numeric,
    portes numeric NOT NULL,
    total numeric,
    criadaem timestamp without time zone NOT NULL,
    descricao character varying,
    userid integer NOT NULL,
    moradaid integer NOT NULL,
    estadocompraid integer NOT NULL,
    transacaoid integer NOT NULL
);
    DROP TABLE public.compra;
       public         heap    postgres    false            �            1259    24730    compra_compra_id_seq    SEQUENCE     }   CREATE SEQUENCE public.compra_compra_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.compra_compra_id_seq;
       public          postgres    false            �            1259    33053    compra_compraid_seq    SEQUENCE     �   CREATE SEQUENCE public.compra_compraid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.compra_compraid_seq;
       public          postgres    false    233            �           0    0    compra_compraid_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.compra_compraid_seq OWNED BY public.compra.compraid;
          public          postgres    false    232            �            1259    33026    estadocompra    TABLE     o   CREATE TABLE public.estadocompra (
    estadocompraid integer NOT NULL,
    nome character varying NOT NULL
);
     DROP TABLE public.estadocompra;
       public         heap    postgres    false            �            1259    33024    estadocompra_estadocompraid_seq    SEQUENCE     �   CREATE SEQUENCE public.estadocompra_estadocompraid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.estadocompra_estadocompraid_seq;
       public          postgres    false    229            �           0    0    estadocompra_estadocompraid_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.estadocompra_estadocompraid_seq OWNED BY public.estadocompra.estadocompraid;
          public          postgres    false    228            �            1259    33004    estadotransacao    TABLE     l   CREATE TABLE public.estadotransacao (
    estadotransacaoid integer NOT NULL,
    nome character varying
);
 #   DROP TABLE public.estadotransacao;
       public         heap    postgres    false            �            1259    33002 %   estadotransacao_estadotransacaoid_seq    SEQUENCE     �   CREATE SEQUENCE public.estadotransacao_estadotransacaoid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.estadotransacao_estadotransacaoid_seq;
       public          postgres    false    225            �           0    0 %   estadotransacao_estadotransacaoid_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.estadotransacao_estadotransacaoid_seq OWNED BY public.estadotransacao.estadotransacaoid;
          public          postgres    false    224            �            1259    33115    linhacarrinho    TABLE        CREATE TABLE public.linhacarrinho (
    carrinhoid integer NOT NULL,
    produtoid integer NOT NULL,
    quantidade integer
);
 !   DROP TABLE public.linhacarrinho;
       public         heap    postgres    false            �            1259    24735 "   linhacarrinho_linhacarrinho_id_seq    SEQUENCE     �   CREATE SEQUENCE public.linhacarrinho_linhacarrinho_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.linhacarrinho_linhacarrinho_id_seq;
       public          postgres    false            �            1259    33084    linhacompra    TABLE     �   CREATE TABLE public.linhacompra (
    compraid integer NOT NULL,
    produtoid integer NOT NULL,
    quantidade integer,
    preco numeric
);
    DROP TABLE public.linhacompra;
       public         heap    postgres    false            �            1259    24738    linhacompra_linhacompra_id_seq    SEQUENCE     �   CREATE SEQUENCE public.linhacompra_linhacompra_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.linhacompra_linhacompra_id_seq;
       public          postgres    false            �            1259    33015    metodopagamento    TABLE     l   CREATE TABLE public.metodopagamento (
    metodopagamentoid integer NOT NULL,
    nome character varying
);
 #   DROP TABLE public.metodopagamento;
       public         heap    postgres    false            �            1259    33013 %   metodopagamento_metodopagamentoid_seq    SEQUENCE     �   CREATE SEQUENCE public.metodopagamento_metodopagamentoid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.metodopagamento_metodopagamentoid_seq;
       public          postgres    false    227            �           0    0 %   metodopagamento_metodopagamentoid_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.metodopagamento_metodopagamentoid_seq OWNED BY public.metodopagamento.metodopagamentoid;
          public          postgres    false    226            �            1259    32925    morada    TABLE     �   CREATE TABLE public.morada (
    moradaid integer NOT NULL,
    rua character varying NOT NULL,
    cidade character varying NOT NULL,
    codigo_postal character varying NOT NULL,
    pais character varying NOT NULL,
    descricao character varying
);
    DROP TABLE public.morada;
       public         heap    postgres    false            �            1259    24741    morada_morada_id_seq    SEQUENCE     }   CREATE SEQUENCE public.morada_morada_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.morada_morada_id_seq;
       public          postgres    false            �            1259    32923    morada_moradaid_seq    SEQUENCE     �   CREATE SEQUENCE public.morada_moradaid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.morada_moradaid_seq;
       public          postgres    false    215            �           0    0    morada_moradaid_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.morada_moradaid_seq OWNED BY public.morada.moradaid;
          public          postgres    false    214            �            1259    32934    moradautilizador    TABLE     e   CREATE TABLE public.moradautilizador (
    moradaid integer NOT NULL,
    userid integer NOT NULL
);
 $   DROP TABLE public.moradautilizador;
       public         heap    postgres    false            �            1259    32962    produto    TABLE       CREATE TABLE public.produto (
    produtoid integer NOT NULL,
    nome character varying NOT NULL,
    preco numeric NOT NULL,
    desconto numeric NOT NULL,
    stock integer NOT NULL,
    imagens character varying,
    descricao character varying NOT NULL
);
    DROP TABLE public.produto;
       public         heap    postgres    false            �            1259    24744    produto_produto_id_seq    SEQUENCE        CREATE SEQUENCE public.produto_produto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.produto_produto_id_seq;
       public          postgres    false            �            1259    32960    produto_produtoid_seq    SEQUENCE     �   CREATE SEQUENCE public.produto_produtoid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.produto_produtoid_seq;
       public          postgres    false    220            �           0    0    produto_produtoid_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.produto_produtoid_seq OWNED BY public.produto.produtoid;
          public          postgres    false    219            �            1259    32988    review    TABLE     �   CREATE TABLE public.review (
    reviewid integer NOT NULL,
    titulo character varying NOT NULL,
    descricao character varying NOT NULL,
    rating numeric NOT NULL,
    _data timestamp without time zone NOT NULL,
    produtoid integer NOT NULL
);
    DROP TABLE public.review;
       public         heap    postgres    false            �            1259    24747    review_review_id_seq    SEQUENCE     }   CREATE SEQUENCE public.review_review_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.review_review_id_seq;
       public          postgres    false            �            1259    32986    review_reviewid_seq    SEQUENCE     �   CREATE SEQUENCE public.review_reviewid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.review_reviewid_seq;
       public          postgres    false    223            �           0    0    review_reviewid_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.review_reviewid_seq OWNED BY public.review.reviewid;
          public          postgres    false    222            �            1259    33037 	   transacao    TABLE     �   CREATE TABLE public.transacao (
    transacaoid integer NOT NULL,
    criadoem timestamp without time zone NOT NULL,
    metodopagamentoid integer NOT NULL,
    estadotransacaoid integer NOT NULL
);
    DROP TABLE public.transacao;
       public         heap    postgres    false            �            1259    33035    transacao_transacaoid_seq    SEQUENCE     �   CREATE SEQUENCE public.transacao_transacaoid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.transacao_transacaoid_seq;
       public          postgres    false    231            �           0    0    transacao_transacaoid_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.transacao_transacaoid_seq OWNED BY public.transacao.transacaoid;
          public          postgres    false    230            �            1259    24750    transaction_transaction_id_seq    SEQUENCE     �   CREATE SEQUENCE public.transaction_transaction_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.transaction_transaction_id_seq;
       public          postgres    false            �            1259    24753    user_user_id_seq    SEQUENCE     y   CREATE SEQUENCE public.user_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.user_user_id_seq;
       public          postgres    false            �            1259    32914 
   utilizador    TABLE     �   CREATE TABLE public.utilizador (
    userid integer NOT NULL,
    nome character varying NOT NULL,
    contacto character varying NOT NULL,
    email character varying NOT NULL,
    pass character varying NOT NULL,
    isadmin boolean NOT NULL
);
    DROP TABLE public.utilizador;
       public         heap    postgres    false            �            1259    32912    utilizador_userid_seq    SEQUENCE     �   CREATE SEQUENCE public.utilizador_userid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.utilizador_userid_seq;
       public          postgres    false    213            �           0    0    utilizador_userid_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.utilizador_userid_seq OWNED BY public.utilizador.userid;
          public          postgres    false    212            �           2604    33104    carrinho carrinhoid    DEFAULT     z   ALTER TABLE ONLY public.carrinho ALTER COLUMN carrinhoid SET DEFAULT nextval('public.carrinho_carrinhoid_seq'::regclass);
 B   ALTER TABLE public.carrinho ALTER COLUMN carrinhoid DROP DEFAULT;
       public          postgres    false    236    235    236            �           2604    32954    categoria categoriaid    DEFAULT     ~   ALTER TABLE ONLY public.categoria ALTER COLUMN categoriaid SET DEFAULT nextval('public.categoria_categoriaid_seq'::regclass);
 D   ALTER TABLE public.categoria ALTER COLUMN categoriaid DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    33058    compra compraid    DEFAULT     r   ALTER TABLE ONLY public.compra ALTER COLUMN compraid SET DEFAULT nextval('public.compra_compraid_seq'::regclass);
 >   ALTER TABLE public.compra ALTER COLUMN compraid DROP DEFAULT;
       public          postgres    false    232    233    233            �           2604    33029    estadocompra estadocompraid    DEFAULT     �   ALTER TABLE ONLY public.estadocompra ALTER COLUMN estadocompraid SET DEFAULT nextval('public.estadocompra_estadocompraid_seq'::regclass);
 J   ALTER TABLE public.estadocompra ALTER COLUMN estadocompraid DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    33007 !   estadotransacao estadotransacaoid    DEFAULT     �   ALTER TABLE ONLY public.estadotransacao ALTER COLUMN estadotransacaoid SET DEFAULT nextval('public.estadotransacao_estadotransacaoid_seq'::regclass);
 P   ALTER TABLE public.estadotransacao ALTER COLUMN estadotransacaoid DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    33018 !   metodopagamento metodopagamentoid    DEFAULT     �   ALTER TABLE ONLY public.metodopagamento ALTER COLUMN metodopagamentoid SET DEFAULT nextval('public.metodopagamento_metodopagamentoid_seq'::regclass);
 P   ALTER TABLE public.metodopagamento ALTER COLUMN metodopagamentoid DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    32928    morada moradaid    DEFAULT     r   ALTER TABLE ONLY public.morada ALTER COLUMN moradaid SET DEFAULT nextval('public.morada_moradaid_seq'::regclass);
 >   ALTER TABLE public.morada ALTER COLUMN moradaid DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    32965    produto produtoid    DEFAULT     v   ALTER TABLE ONLY public.produto ALTER COLUMN produtoid SET DEFAULT nextval('public.produto_produtoid_seq'::regclass);
 @   ALTER TABLE public.produto ALTER COLUMN produtoid DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    32991    review reviewid    DEFAULT     r   ALTER TABLE ONLY public.review ALTER COLUMN reviewid SET DEFAULT nextval('public.review_reviewid_seq'::regclass);
 >   ALTER TABLE public.review ALTER COLUMN reviewid DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    33040    transacao transacaoid    DEFAULT     ~   ALTER TABLE ONLY public.transacao ALTER COLUMN transacaoid SET DEFAULT nextval('public.transacao_transacaoid_seq'::regclass);
 D   ALTER TABLE public.transacao ALTER COLUMN transacaoid DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    32917    utilizador userid    DEFAULT     v   ALTER TABLE ONLY public.utilizador ALTER COLUMN userid SET DEFAULT nextval('public.utilizador_userid_seq'::regclass);
 @   ALTER TABLE public.utilizador ALTER COLUMN userid DROP DEFAULT;
       public          postgres    false    212    213    213            �          0    33101    carrinho 
   TABLE DATA           A   COPY public.carrinho (carrinhoid, descricao, userid) FROM stdin;
    public          postgres    false    236   ��       �          0    32951 	   categoria 
   TABLE DATA           6   COPY public.categoria (categoriaid, nome) FROM stdin;
    public          postgres    false    218   ћ       �          0    32971    categoriaproduto 
   TABLE DATA           B   COPY public.categoriaproduto (categoriaid, produtoid) FROM stdin;
    public          postgres    false    221   v�       �          0    33055    compra 
   TABLE DATA           �   COPY public.compra (compraid, desconto, portes, total, criadaem, descricao, userid, moradaid, estadocompraid, transacaoid) FROM stdin;
    public          postgres    false    233   ,�       �          0    33026    estadocompra 
   TABLE DATA           <   COPY public.estadocompra (estadocompraid, nome) FROM stdin;
    public          postgres    false    229   Q�       �          0    33004    estadotransacao 
   TABLE DATA           B   COPY public.estadotransacao (estadotransacaoid, nome) FROM stdin;
    public          postgres    false    225   ��       �          0    33115    linhacarrinho 
   TABLE DATA           J   COPY public.linhacarrinho (carrinhoid, produtoid, quantidade) FROM stdin;
    public          postgres    false    237   ҟ       �          0    33084    linhacompra 
   TABLE DATA           M   COPY public.linhacompra (compraid, produtoid, quantidade, preco) FROM stdin;
    public          postgres    false    234   �       �          0    33015    metodopagamento 
   TABLE DATA           B   COPY public.metodopagamento (metodopagamentoid, nome) FROM stdin;
    public          postgres    false    227   �       �          0    32925    morada 
   TABLE DATA           W   COPY public.morada (moradaid, rua, cidade, codigo_postal, pais, descricao) FROM stdin;
    public          postgres    false    215   J�       �          0    32934    moradautilizador 
   TABLE DATA           <   COPY public.moradautilizador (moradaid, userid) FROM stdin;
    public          postgres    false    216   С       �          0    32962    produto 
   TABLE DATA           ^   COPY public.produto (produtoid, nome, preco, desconto, stock, imagens, descricao) FROM stdin;
    public          postgres    false    220   �       �          0    32988    review 
   TABLE DATA           W   COPY public.review (reviewid, titulo, descricao, rating, _data, produtoid) FROM stdin;
    public          postgres    false    223   ҵ       �          0    33037 	   transacao 
   TABLE DATA           `   COPY public.transacao (transacaoid, criadoem, metodopagamentoid, estadotransacaoid) FROM stdin;
    public          postgres    false    231   �       �          0    32914 
   utilizador 
   TABLE DATA           R   COPY public.utilizador (userid, nome, contacto, email, pass, isadmin) FROM stdin;
    public          postgres    false    213   ��       �           0    0    carrinho_carrinho_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.carrinho_carrinho_id_seq', 1, false);
          public          postgres    false    202            �           0    0    carrinho_carrinhoid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.carrinho_carrinhoid_seq', 6, true);
          public          postgres    false    235            �           0    0    categoria_categoria_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.categoria_categoria_id_seq', 2, true);
          public          postgres    false    203            �           0    0    categoria_categoriaid_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.categoria_categoriaid_seq', 13, true);
          public          postgres    false    217            �           0    0    compra_compra_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.compra_compra_id_seq', 1, false);
          public          postgres    false    204            �           0    0    compra_compraid_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.compra_compraid_seq', 63, true);
          public          postgres    false    232            �           0    0    estadocompra_estadocompraid_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.estadocompra_estadocompraid_seq', 4, true);
          public          postgres    false    228            �           0    0 %   estadotransacao_estadotransacaoid_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.estadotransacao_estadotransacaoid_seq', 1, true);
          public          postgres    false    224            �           0    0 "   linhacarrinho_linhacarrinho_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.linhacarrinho_linhacarrinho_id_seq', 1, false);
          public          postgres    false    205            �           0    0    linhacompra_linhacompra_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.linhacompra_linhacompra_id_seq', 1, false);
          public          postgres    false    206            �           0    0 %   metodopagamento_metodopagamentoid_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.metodopagamento_metodopagamentoid_seq', 3, true);
          public          postgres    false    226            �           0    0    morada_morada_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.morada_morada_id_seq', 1, false);
          public          postgres    false    207            �           0    0    morada_moradaid_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.morada_moradaid_seq', 2, true);
          public          postgres    false    214            �           0    0    produto_produto_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.produto_produto_id_seq', 1, false);
          public          postgres    false    208            �           0    0    produto_produtoid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.produto_produtoid_seq', 122, true);
          public          postgres    false    219            �           0    0    review_review_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.review_review_id_seq', 1, false);
          public          postgres    false    209            �           0    0    review_reviewid_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.review_reviewid_seq', 26, true);
          public          postgres    false    222            �           0    0    transacao_transacaoid_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.transacao_transacaoid_seq', 79, true);
          public          postgres    false    230            �           0    0    transaction_transaction_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.transaction_transaction_id_seq', 1, false);
          public          postgres    false    210            �           0    0    user_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.user_user_id_seq', 1, false);
          public          postgres    false    211            �           0    0    utilizador_userid_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.utilizador_userid_seq', 44, true);
          public          postgres    false    212            �           2606    33109    carrinho carrinho_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.carrinho
    ADD CONSTRAINT carrinho_pkey PRIMARY KEY (carrinhoid);
 @   ALTER TABLE ONLY public.carrinho DROP CONSTRAINT carrinho_pkey;
       public            postgres    false    236            �           2606    32959    categoria categoria_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (categoriaid);
 B   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
       public            postgres    false    218            �           2606    32975 &   categoriaproduto categoriaproduto_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.categoriaproduto
    ADD CONSTRAINT categoriaproduto_pkey PRIMARY KEY (categoriaid, produtoid);
 P   ALTER TABLE ONLY public.categoriaproduto DROP CONSTRAINT categoriaproduto_pkey;
       public            postgres    false    221    221            �           2606    33063    compra compra_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_pkey PRIMARY KEY (compraid);
 <   ALTER TABLE ONLY public.compra DROP CONSTRAINT compra_pkey;
       public            postgres    false    233            �           2606    33034    estadocompra estadocompra_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.estadocompra
    ADD CONSTRAINT estadocompra_pkey PRIMARY KEY (estadocompraid);
 H   ALTER TABLE ONLY public.estadocompra DROP CONSTRAINT estadocompra_pkey;
       public            postgres    false    229            �           2606    33012 $   estadotransacao estadotransacao_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.estadotransacao
    ADD CONSTRAINT estadotransacao_pkey PRIMARY KEY (estadotransacaoid);
 N   ALTER TABLE ONLY public.estadotransacao DROP CONSTRAINT estadotransacao_pkey;
       public            postgres    false    225            �           2606    33119     linhacarrinho linhacarrinho_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.linhacarrinho
    ADD CONSTRAINT linhacarrinho_pkey PRIMARY KEY (carrinhoid, produtoid);
 J   ALTER TABLE ONLY public.linhacarrinho DROP CONSTRAINT linhacarrinho_pkey;
       public            postgres    false    237    237            �           2606    33088    linhacompra linhacompra_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.linhacompra
    ADD CONSTRAINT linhacompra_pkey PRIMARY KEY (compraid, produtoid);
 F   ALTER TABLE ONLY public.linhacompra DROP CONSTRAINT linhacompra_pkey;
       public            postgres    false    234    234            �           2606    33023 $   metodopagamento metodopagamento_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.metodopagamento
    ADD CONSTRAINT metodopagamento_pkey PRIMARY KEY (metodopagamentoid);
 N   ALTER TABLE ONLY public.metodopagamento DROP CONSTRAINT metodopagamento_pkey;
       public            postgres    false    227            �           2606    32933    morada morada_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.morada
    ADD CONSTRAINT morada_pkey PRIMARY KEY (moradaid);
 <   ALTER TABLE ONLY public.morada DROP CONSTRAINT morada_pkey;
       public            postgres    false    215            �           2606    32938 &   moradautilizador moradautilizador_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.moradautilizador
    ADD CONSTRAINT moradautilizador_pkey PRIMARY KEY (moradaid, userid);
 P   ALTER TABLE ONLY public.moradautilizador DROP CONSTRAINT moradautilizador_pkey;
       public            postgres    false    216    216            �           2606    32970    produto produto_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (produtoid);
 >   ALTER TABLE ONLY public.produto DROP CONSTRAINT produto_pkey;
       public            postgres    false    220            �           2606    32996    review review_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.review
    ADD CONSTRAINT review_pkey PRIMARY KEY (reviewid);
 <   ALTER TABLE ONLY public.review DROP CONSTRAINT review_pkey;
       public            postgres    false    223            �           2606    33042    transacao transacao_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.transacao
    ADD CONSTRAINT transacao_pkey PRIMARY KEY (transacaoid);
 B   ALTER TABLE ONLY public.transacao DROP CONSTRAINT transacao_pkey;
       public            postgres    false    231            �           2606    32922    utilizador utilizador_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.utilizador
    ADD CONSTRAINT utilizador_pkey PRIMARY KEY (userid);
 D   ALTER TABLE ONLY public.utilizador DROP CONSTRAINT utilizador_pkey;
       public            postgres    false    213                       2606    33110    carrinho carrinho_userid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.carrinho
    ADD CONSTRAINT carrinho_userid_fkey FOREIGN KEY (userid) REFERENCES public.utilizador(userid);
 G   ALTER TABLE ONLY public.carrinho DROP CONSTRAINT carrinho_userid_fkey;
       public          postgres    false    3801    213    236            �           2606    32976 2   categoriaproduto categoriaproduto_categoriaid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.categoriaproduto
    ADD CONSTRAINT categoriaproduto_categoriaid_fkey FOREIGN KEY (categoriaid) REFERENCES public.categoria(categoriaid);
 \   ALTER TABLE ONLY public.categoriaproduto DROP CONSTRAINT categoriaproduto_categoriaid_fkey;
       public          postgres    false    3807    218    221            �           2606    32981 0   categoriaproduto categoriaproduto_produtoid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.categoriaproduto
    ADD CONSTRAINT categoriaproduto_produtoid_fkey FOREIGN KEY (produtoid) REFERENCES public.produto(produtoid);
 Z   ALTER TABLE ONLY public.categoriaproduto DROP CONSTRAINT categoriaproduto_produtoid_fkey;
       public          postgres    false    220    3809    221                        2606    33079 !   compra compra_estadocompraid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_estadocompraid_fkey FOREIGN KEY (estadocompraid) REFERENCES public.estadocompra(estadocompraid);
 K   ALTER TABLE ONLY public.compra DROP CONSTRAINT compra_estadocompraid_fkey;
       public          postgres    false    3819    233    229            �           2606    33074    compra compra_moradaid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_moradaid_fkey FOREIGN KEY (moradaid) REFERENCES public.morada(moradaid);
 E   ALTER TABLE ONLY public.compra DROP CONSTRAINT compra_moradaid_fkey;
       public          postgres    false    233    3803    215            �           2606    33064    compra compra_transacaoid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_transacaoid_fkey FOREIGN KEY (transacaoid) REFERENCES public.transacao(transacaoid);
 H   ALTER TABLE ONLY public.compra DROP CONSTRAINT compra_transacaoid_fkey;
       public          postgres    false    231    233    3821            �           2606    33069    compra compra_userid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_userid_fkey FOREIGN KEY (userid) REFERENCES public.utilizador(userid);
 C   ALTER TABLE ONLY public.compra DROP CONSTRAINT compra_userid_fkey;
       public          postgres    false    213    3801    233                       2606    33120 +   linhacarrinho linhacarrinho_carrinhoid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.linhacarrinho
    ADD CONSTRAINT linhacarrinho_carrinhoid_fkey FOREIGN KEY (carrinhoid) REFERENCES public.carrinho(carrinhoid);
 U   ALTER TABLE ONLY public.linhacarrinho DROP CONSTRAINT linhacarrinho_carrinhoid_fkey;
       public          postgres    false    236    237    3827                       2606    33125 *   linhacarrinho linhacarrinho_produtoid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.linhacarrinho
    ADD CONSTRAINT linhacarrinho_produtoid_fkey FOREIGN KEY (produtoid) REFERENCES public.produto(produtoid);
 T   ALTER TABLE ONLY public.linhacarrinho DROP CONSTRAINT linhacarrinho_produtoid_fkey;
       public          postgres    false    237    220    3809                       2606    33089 %   linhacompra linhacompra_compraid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.linhacompra
    ADD CONSTRAINT linhacompra_compraid_fkey FOREIGN KEY (compraid) REFERENCES public.compra(compraid);
 O   ALTER TABLE ONLY public.linhacompra DROP CONSTRAINT linhacompra_compraid_fkey;
       public          postgres    false    3823    233    234                       2606    33094 &   linhacompra linhacompra_produtoid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.linhacompra
    ADD CONSTRAINT linhacompra_produtoid_fkey FOREIGN KEY (produtoid) REFERENCES public.produto(produtoid);
 P   ALTER TABLE ONLY public.linhacompra DROP CONSTRAINT linhacompra_produtoid_fkey;
       public          postgres    false    220    3809    234            �           2606    32939 /   moradautilizador moradautilizador_moradaid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.moradautilizador
    ADD CONSTRAINT moradautilizador_moradaid_fkey FOREIGN KEY (moradaid) REFERENCES public.morada(moradaid);
 Y   ALTER TABLE ONLY public.moradautilizador DROP CONSTRAINT moradautilizador_moradaid_fkey;
       public          postgres    false    3803    216    215            �           2606    32944 -   moradautilizador moradautilizador_userid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.moradautilizador
    ADD CONSTRAINT moradautilizador_userid_fkey FOREIGN KEY (userid) REFERENCES public.utilizador(userid);
 W   ALTER TABLE ONLY public.moradautilizador DROP CONSTRAINT moradautilizador_userid_fkey;
       public          postgres    false    216    3801    213            �           2606    32997    review review_produtoid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.review
    ADD CONSTRAINT review_produtoid_fkey FOREIGN KEY (produtoid) REFERENCES public.produto(produtoid);
 F   ALTER TABLE ONLY public.review DROP CONSTRAINT review_produtoid_fkey;
       public          postgres    false    3809    223    220            �           2606    33048 *   transacao transacao_estadotransacaoid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.transacao
    ADD CONSTRAINT transacao_estadotransacaoid_fkey FOREIGN KEY (estadotransacaoid) REFERENCES public.estadotransacao(estadotransacaoid);
 T   ALTER TABLE ONLY public.transacao DROP CONSTRAINT transacao_estadotransacaoid_fkey;
       public          postgres    false    3815    225    231            �           2606    33043 *   transacao transacao_metodopagamentoid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.transacao
    ADD CONSTRAINT transacao_metodopagamentoid_fkey FOREIGN KEY (metodopagamentoid) REFERENCES public.metodopagamento(metodopagamentoid);
 T   ALTER TABLE ONLY public.transacao DROP CONSTRAINT transacao_metodopagamentoid_fkey;
       public          postgres    false    227    231    3817            �      x�3��4�2��41�2�&\1z\\\ ��      �   �   x�%�;�0@g�9"��+�"X�X\j���XrK�^�����7�7�ԑ��U�Z�5��g5������[(t������I��g��ZI�&��Dx�S�޴֘�]/��/��(��_��ÅF6�nj8�_����[R�/��Y7      �   �   x�%ѻD!C������뿎��(�G6�ņ$��&(,�p���0FcM�qJ��)g���=<�.1A�`��4�F�HI#��8$��XP
T\jT@B]t�V[�7֋����"_����`Cէ�֮v���'�F�������S�����?z'=�      �     x�u�۹b!��w����G�"���@���+d��^xq׋*�O���.�E��\�_e`�$��G���������R�I#ւ�+�A�Q�Z!�W_J��*��;QG-H���Rn���$wN3��i�
R'lo0�P&�C�@p��7�ӊ�>h��Ҝ?.TO� �/�ԕKv�M7�p+���R;b�����<��>��i�Dǝ��g/j��ns�����O�A�t�7����x�9$:x]�D��ܫd9��k���[�Q�<��{�] Y�ƟR���C�j��ط�����8�/��2z>r{���<{�&�	p����x$;���9��qZA���E:��͗9(}�����P�<��cKu>�*���!�Ka��J<��d�݋tLm)��'��r�*�'R�K�9���]�u��v����r¹Ҵ�{�Ê��g�7'�Q�},�S=�W�碊���kP�R�M�n�g�v�Vb�=3^��h���h️��Z�u`k��;���IKR��r�� t#�      �   G   x�3�HM�L�WJMNM2��8��SJK�5�5Rs�sS򋹌Q���2��&��%E�饩�\1z\\\ gP�      �      x�3�L��K�,�MLI����� 6@      �      x������ � �      �     x�MQK�![�a��/w���c�~�n�� 2��·Ł'L�|�QX���a뀟Xf` ]��@���h��G� �B�J`��Rޤl�v&(�D��M��bW��./�-Ê�ht (��L��b���$�Śi���Vvb��دC��u�Y^����Ɇ4�S��@/m����W��ݨr�j�׎��;5:��p�R��hL�?�"��F����BY�a��f��o�e�{������.t�֗_7��|w���]W\��v�5�;����e      �   ,   x�3��M*O��2��-�)�LJ�K��2�LN,*9�8�+F��� ��E      �   v   x�3�*MT02UpL*���t/��M,:�8������T��А3 ���4=1�3 ��$_!%U��45W�,1����%(X�����px�B^�Br~Y"�����>�y� JJS�b���� -�'�      �      x�3�4�2�=... ��      �      x��[Ao㸒>3�B��;$E�$��$�t&��Nc��؊��,y%9�=xǞ�0��=�a��=�q�ǶHJ6�q<����$���b��"E�~������o��i��)���~�n�.��oy�a��{�f�xA8�F�#"��/�d�t���b4�ҁ8��_�m#=`�r@��b�*r��#K1�����Z���&X�� ��ʽ�$̳m�f�#=��5�]�y�vW�G�.���寠�4̣$C�o�ގq���ޜ�(0΅�k��hm���'S�$i�1XChDi�]�.�X���i�<nx����\Ro��y�Y�<�/N��t���(� 0�P�[��;�`q����r}}y���_"��V�qtbq|o���pG\���Ε]9����d�DO�$�d��5
�E���p:[��G,���}����/?���E����}7qEy ��R�� qY�3|��µ8]��n�����3r�����|A��`o��}ۋ�Q2_�9μ4�fy^r`4vz��/}�	v�����0�[�a�����ԁ/%����_O�q�d@�V�3��_�V�@�I@*�z4�D֣��a�=.�m]4Cם��9"��7L/��4*�qk������[�pO�<l�Y�N��C�����`�R9j�Y�����
�dh1<�A^xA�ܪk�:�w��Y}�8g����G�cT���oEE���yj;���8�ϩ��;�Z�q��\=W���y�N���&C�Y���_�po���(����9���u3EQ\f����dm��5�7V	�W�A�aZPq�j��\V�jS��Le��Z腩$��]t��yoC���(N'�C��ܞ��,a�hQFy��-�����Ի0�0���:l�f�r\1��A�=� BN��a zeB�p��
&I�,��>Y	{�ZT�އۛ"o8��~�e��=N�YW���¥5��;N������U��]�.�@��0�v�y�6~}k��Z�:�
L% ��\_��o;�a�;���l
d�x�!� :�:��Y���]´�M��H��_����ML� ���;'#���F�i�+,�C�7�G�S���C��?dQ�I<y��k�B��"��(�'��!ġ�!��_�@����|Tl�V&��>n���y�Q�� (|=������QH�¾��(��'�TD^���y8�����Qd���矄�s�ƿ��&e�"e����;�Qp�}���A����3�8�C�:{w�~E����8|ȳ�Հ�+��1��"LJ����\| ��8���Xְ0�a^u�u�\������ᰯ�E&Ҹ,�׏�ա�Ӝ�XX�P�Ƌ}Ad"���)Urm��@�Z�f9�`�K���'��Q�-h'�^�vno�~���%�,���W]]��ծJ\�X�>��#���,aX��D�5c��A��W	t��vp9�w���� �+C�?ϊ�h%�2*FQZ�f	�����HS%�qRUG<pk�����o(����.�0�D��Y�x��H�T{GB�w��N����t/Z���h���c�ċz��(��1�J���l���^�_Q/Bv��訉�]���z�7�Phpwvv���ޜb>͓(-k�hj�d�$j�#(�f�(�
]�
_�B	����W8������7�Jp�� ^4����V���h �,=��#�Gv.�m�P��kMt��Z�s���s2�q�*�H���Z�>,4�%q>G�9UuM:ҖU�)�P�r�_@�h
A���w�W@���U�h���/��o����
ϫ�$k�c�.D�5��؃
bAmGPtuwq���C��BO��4�q}
]�+Mgy��$��W���eP�Y8��pH���g���n���t�k�چ��h>�6F�o_�7y��-��tOMV��hn��Qm'Y��Y������)�8B��8U�G�G�v�b0�#_GI��J&E�[e8��ƛE	��</3��!3e^���.�q-N'��K��F��b���^��Dq���7��;��z���
p���rڪ�Y��2�M,�-'�.� �`�H!դN����]	�v�w$t�q��Q�Ģ>3/o5S�;���x��w�@��$�@N��-l���W�Aq`0P:NRP#�oC"�WH�l�s�0<�Ѵ���Fz�@�~�m"��,-�2~ڰI�F+ ���P]��Q`WYY���eU-�ow#��Ƿ��ݽFԔ>E�0��ukN��&�n��h�4�O�Q�r�d)��-�5]0�8v{
�I��.w����]�ah���P(��t 鍧�<1��;�³p�?�����������M-k<�]p�!�OY�	�V�(9�?&�'�Z�AP�WK��n`�I�@���h��s��c]��kc�N����&cyjm$�No�����[~���DJ�}�$E	1* �=�-�l�O��{c�I�N�@ڞ�2��\� !
˪%��������~���q���um:���ïЎ�}�g�� ��vW�`ϻ^�S�#�ԛ����Am�2����[=�M��[��#j��	�t�>b�u�U��6�"�}�޾���_�׳�N�_�0����N~��<k=��qlzwB`_Vy��iyg ��4�& G���q���7�Ǟ��*I0ɑ����Zw�M_���ͧ���[�ͩM���^P�s=�6!�.\Y�
2rg!E��%_�W�e���˟�w}� 8��(�[���QQ�Ͳ<����r�Ǵ����u �[W����C*��0����f��ԘۯVҞ��$��=W�ӯ�Uu?�]��W/SJ>�����J�>�F5E"�JpcǏw��kiz��=�Z�oYz3�q���˵�j#�^�0��[�pu_5��� 9�XMLa��W��z�]�5�T��:~?a�gi�rff���8����\S���:�;=�ڋg����x~�M�~c�/9����ѱ�_ȁz����I��r
ⷉ�7����7��d��H	����_��6bf�`Ia��QY�^���Q8֭��tԚ�y��e<�6�]�l�u�E� ���hClZ��-�`9iȕ`P���*���5m\��`@���/� �chQ�Yq� j�p�$p���Kwp��w {��z�a�O*�� rU�r���`i�4��7��"�M: ��`o�Tq�S&^XJ��Q@��M?�߹3��W����@���XW{#�N���\s�Uӄ���NH������A-��-*jQ���V��Ei��
)!͓U�Ѱ�y��45E%$�2��M�|m:�Y`�%R'n�:�I�֒lI)}n���e�Wf�/{������Q��;�x���C<�n�N ���{�U�$o9�����mpi���āʕ)_��F��x����[��Sc��1�p����(�'B�!X�u���9u�M��Ӹ-�yQڣT�.�ƹuV&aK�+$l�!|��P�@�mj )sC�T��+��x�t�v�Q�Cg��mX柡�L4��
�����4J�T�$�����fab,���!� ��0��9�:Tx�K��cЎ=Wo����o��z7�5߂r5��i6}���V��U��牾�tx �Ժ:|���r{K&1q���e��s=F$��ȪFf��*qeT�i�����`d�o�����emf��1��:S�W�/�<���>�h=ę�3����s=I�"�-JPJ��(p}���W�s�ҘT�m�Y7��B����3��oO��ٙO�'o�y����rzc�B�Q�;��E㕗� ���Y���Q�h���'�t��%'T�N���U"�.����f�>���f�uk�sX���m�f=es[	�S�a$�����)��i$�f3��٧H�p��ugC��<�6
�RR���>rNi�l��뵭�\�F��/Q����`�H��fy��|�#�<Z�a�Z�=c� �_�Za�A�
�U��P�
�"��3�y|�x����5*É�uj��X�	8^ ����a��qY����9j�>�"!	g��C���b���ޚ��0{$L��`��l>�[���e�� �  4֡b��ضH�7�k'gu�Sŝj���㪵��(U:v�ʳ%^P��8j�;!�s܅��u=������w�|�yo�cMi}������w�g@w�<c����*�1�|3od�ς��w�O���(V6x���]����O@cm��&I�ذ)���� 85�c�W$oQ��7�_�
h� LX�|���z�H݁x���?ʹO��-��9F<\���cE�3|a`B��{#I���up`>�$��^Z'�A�������<�b��(�;J&L,xe)�N;���WDDu�y�7a�T����|�k�()��(]]��q�h��:� �p���>�g����mン�@-a�pT��᥾��s���"��ǯ>Y�����׏6��_ٍ���}���j���(~f�a��0�MD_Ӻ��l�ZX���X+V1Z��P�nxB�*�{f��/ҷJ�{�ӻ���)��WI�x�'��fN��d���̶EƎW�	�EP�;���� ����W��r�H�H��d�������/��y�Zуg}�2քu�釲a�V��uC���o�����;��=��H�J��Тk;����h��D��������ٕ]��#��Ѵ���j������}�R����"@�m;_0�~���������>Nݰ�t��%��㕫n۾	���'�,t�d�ʳqX����^.h>�l�o��S��y�A_|ݲY�ؗ��KѸ���C��#}��v8�<_]�0�h*��2�����6��8i�����H��^	��/R_�6�� }��G�C}1�M�z��;=H\�;g��Oj�G�棦���8��gP�=���i��#���U� V�o�5P㢰��ovb �����\(��@�+Ƌ������H�7��V�v�}��9�pa�:c���v18���f�".�.&������.�]�^?D�����?�9::�?��;�      �   ;  x��S;��0��Sp����,S$#l�"W��
�L[��{� E���)�%��Xμ7�f�л��M��.��{�ԕ���	�(��4=�)u�C�
�V~�
�����#����>��TU�/�����+�]�wa!�p\��)�D�2.�������_0��Xy����qs��1ǀPe2�LЏix}�k�) ����N��}������Hi2�~چŕ&p�b��	�zF�*OlB��J��̦ckm6	|���:v�����I�� &�'��8d���a��<��%5ΗO�8Q	�is��ǳ㜰\i�]���.����3QL��1�&��\Y���z�׻��~W�o|�q�	�Ė��`�:$	�����O#�܆�1v�n7��_J��Ⱥ�%ƨ���؍~ni�n�DQ�T"���|�.6pG�	E4�Hڂ��o���}��qS�/k�B��&L�@�g>�`���N&��eZ��܆��"n�u�k�bK���p��R�i�\�o��x�O{ǰ6](�Y�ܶZk�_C�A�\��i?�3�v�:�S��?HQS�      �   �  x�m�ۑ#!E��QtC�7���J�Y�ծ��)}t%�`G���p�\ċ����{��lLR��Z#�M�R�_�16�'�������6F�l���K�5׎'�s�禳R[��6���~0P� xc��]�B�/�`��ٜ*��CL#�7,����R1�.~�Z+��S
���`�j�+6<6+��F��FY0ڴ��Y='�&wn�䬦����o@�5!h�qp�昻���jͱ�-�`��9���<��5�p�3K�՚c�z��5���ٔ��Zc^�[o�޻[Ӹ���wi#���X|��\�F���6�/x��#�>���NIlOL�A$4�x��ճ� ��^0E5��W3̺�5�\�OJ���Wil��)���*��r���U�Ź�/��&��~6d��nX�mr��4�}�.�f'����|����}�����8��oi�W�?��HI�5��i��҆���m�=b��'�^�7>/C��,��;�(�QF}���V0���{k�Qq��������|'�����wܫ*��p
�X�hL�>2J�8�-+�\���yp��X����ջ5�a��zZ�X���t��'�$rϱ��b��p��^h��
o��fwi�B�Cς�]ڈ���m��wUC�>�&�s��Йy�!m^�����d�M?q�T�l=�kvú)�$��7lq5�Ȅ�Z��F�
�s@��o{�^� ���      �   �   x�u���0���S���C�neB����b�R"�����6!�䳿;Ybti�\
�~ w�0'�Ps� �6kP�(d׸��2Ƕ�w����F�q�#�ٺjF;��� j�"����B+Q��A���bm1����������(�U�.�EL�Ҽɚ�vw&F��X�L����|ȄO�)X_     