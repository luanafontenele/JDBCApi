--
-- PostgreSQL database dump
--

\restrict 6NDg1bPbbIQXnhEgcKjxcjn9LPCLDdF9EGV8WnnudQUsZDYQjeJGt8eydaJuFnJ

-- Dumped from database version 17.9
-- Dumped by pg_dump version 17.9

-- Started on 2026-03-15 15:55:31

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 217 (class 1259 OID 16405)
-- Name: empresa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empresa (
    id bigint NOT NULL,
    cnpj character varying(14),
    razao_social character varying(100),
    nome_fantasia character varying(100),
    logradouro character varying(200)
);


ALTER TABLE public.empresa OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16408)
-- Name: empresa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.empresa ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.empresa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 219 (class 1259 OID 16409)
-- Name: socios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socios (
    id bigint NOT NULL,
    nome_socio character varying(100),
    cnpj_cpf_socio character varying(14),
    qualificacao_socio character varying(100),
    empresa_id character varying
);


ALTER TABLE public.socios OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16414)
-- Name: socios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.socios ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.socios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 4898 (class 0 OID 16405)
-- Dependencies: 217
-- Data for Name: empresa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.empresa (id, cnpj, razao_social, nome_fantasia, logradouro) FROM stdin;
20	00000000000191	BANCO DO BRASIL SA	DIRECAO GERAL	SAUN QUADRA 5 BLOCO B TORRE I, II, III
21	12345678000195	ROBERIO JOSE DOS SANTOS 16952477870		
23	33000167000101	PETROLEO BRASILEIRO S A PETROBRAS	PETROBRAS - EDISE	REPUBLICA DO CHILE
\.


--
-- TOC entry 4900 (class 0 OID 16409)
-- Dependencies: 219
-- Data for Name: socios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socios (id, nome_socio, cnpj_cpf_socio, qualificacao_socio, empresa_id) FROM stdin;
128	ANGELICA GARCIA COBAS LAUREANO	***912137**	Diretor	33000167000101
130	CLAUDIO ROMEO SCHLOSSER	***077120**	Diretor	33000167000101
132	MAGDA MARIA DE REGINA CHAMBRIARD	***612937**	Presidente	33000167000101
134	RICARDO WAGNER DE ARAUJO	***017831**	Diretor	33000167000101
136	WILLIAM FRANCA DA SILVA	***487787**	Diretor	33000167000101
129	CLARICE COPPETTI	***995240**	Diretor	33000167000101
131	FERNANDO SABBI MELGAREJO	***650110**	Diretor	33000167000101
133	RENATA FARIA RODRIGUES BARUZZI LOPES	***944618**	Diretor	33000167000101
135	SYLVIA MARIA COUTO DOS ANJOS	***701217**	Diretor	33000167000101
89	ALAN CARLOS GUEDES DE OLIVEIRA	***550179**	Diretor	00000000000191
90	ALBERTO MARTINHAGO VIEIRA	***842999**	Diretor	00000000000191
91	ALEXANDRE BOCCHETTI NUNES	***753277**	Diretor	00000000000191
92	ANA CRISTINA ROSA GARCIA	***443671**	Diretor	00000000000191
93	ANELIZE LENZI RUAS DE ALMEIDA	***195641**	Conselheiro de Administração	00000000000191
94	ANTONIO CARLOS WAGNER CHIARELLO	***263100**	Diretor	00000000000191
95	CARLA NESI	***295868**	Diretor	00000000000191
96	CARLOS EDUARDO GUEDES PINTO	***464088**	Diretor	00000000000191
97	ELISA VIEIRA LEONEL	***460676**	Conselheiro de Administração	00000000000191
98	EULER ANTONIO LUZ MATHIAS	***344088**	Diretor	00000000000191
99	FABIO FRANCO BARBOSA FERNANDES	***324698**	Conselheiro de Administração	00000000000191
100	FELIPE GUIMARAES GEISSLER PRINCE	***345856**	Diretor	00000000000191
101	FERNANDO FLORENCIO CAMPOS	***755588**	Conselheiro de Administração	00000000000191
102	FRANCISCO AUGUSTO LASSALVIA	***355918**	Diretor	00000000000191
103	GILSON ALCEU BITTENCOURT	***284509**	Diretor	00000000000191
104	JOAO VAGNES DE MOURA SILVA	***043411**	Diretor	00000000000191
105	JOSE RICARDO SASSERON	***404558**	Diretor	00000000000191
106	JOSE SALVADOR CONSTANTINO ZARCOS FILHO	***192438**	Diretor	00000000000191
107	JULIO CESAR VEZZARO	***058029**	Diretor	00000000000191
108	KAMILLO TONONI OLIVEIRA SILVA	***027514**	Diretor	00000000000191
109	LARISSA DA SILVA NOVAIS VIEIRA	***038787**	Diretor	00000000000191
110	LUCIANO MATARAZZO REGNO	***210718**	Diretor	00000000000191
111	MARCELO HENRIQUE GOMES DA SILVA	***263598**	Diretor	00000000000191
112	MARCIO LUIZ DE ALBUQUERQUE OLIVEIRA	***563227**	Conselheiro de Administração	00000000000191
113	MARCO GEOVANNE TOBIAS DA SILVA	***225791**	Diretor	00000000000191
114	MARIANA PIRES DIAS	***147908**	Diretor	00000000000191
115	MARISA REGHINI FERREIRA MATTOS	***301948**	Diretor	00000000000191
116	NEUDSON PERES DE FREITAS	***631536**	Diretor	00000000000191
117	PAULA SAYAO CARVALHO ARAUJO	***989951**	Diretor	00000000000191
118	PEDRO BRAMONT	***472469**	Diretor	00000000000191
119	PEDRO HENRIQUE DUARTE OLIVEIRA	***476143**	Diretor	00000000000191
120	RAFAEL MACHADO GIOVANELLA	***211719**	Diretor	00000000000191
121	RODRIGO COSTA VASCONCELOS	***561061**	Diretor	00000000000191
122	RODRIGO MULINARI	***599070**	Diretor	00000000000191
123	ROSIANE BARBOSA LAVIOLA	***181471**	Diretor	00000000000191
124	SELMA CRISTINA ALVES SIQUEIRA	***991626**	Conselheiro de Administração	00000000000191
125	TARCIANA PAULA GOMES MEDEIROS	***128734**	Presidente	00000000000191
126	THIAGO AFFONSO BORSARI	***759718**	Diretor	00000000000191
127	VALMIR PEDRO ROSSI	***266790**	Conselheiro de Administração	00000000000191
\.


--
-- TOC entry 4907 (class 0 OID 0)
-- Dependencies: 218
-- Name: empresa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.empresa_id_seq', 23, true);


--
-- TOC entry 4908 (class 0 OID 0)
-- Dependencies: 220
-- Name: socios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socios_id_seq', 136, true);


--
-- TOC entry 4748 (class 2606 OID 16416)
-- Name: empresa empresa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empresa
    ADD CONSTRAINT empresa_pkey PRIMARY KEY (id);


--
-- TOC entry 4752 (class 2606 OID 16418)
-- Name: socios socios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socios
    ADD CONSTRAINT socios_pkey PRIMARY KEY (id);


--
-- TOC entry 4750 (class 2606 OID 16420)
-- Name: empresa unique_cnpj; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empresa
    ADD CONSTRAINT unique_cnpj UNIQUE (cnpj);


-- Completed on 2026-03-15 15:55:32

--
-- PostgreSQL database dump complete
--

\unrestrict 6NDg1bPbbIQXnhEgcKjxcjn9LPCLDdF9EGV8WnnudQUsZDYQjeJGt8eydaJuFnJ

