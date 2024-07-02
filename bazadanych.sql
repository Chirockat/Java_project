--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

-- Started on 2024-07-02 23:05:14

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- TOC entry 215 (class 1259 OID 16649)
-- Name: Egzemplarze; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Egzemplarze" (
    marka character varying(20) NOT NULL,
    model character varying(20) NOT NULL,
    rejestracja character varying(7) NOT NULL,
    data_produkcji date NOT NULL,
    kolor character varying(15) NOT NULL,
    przebieg integer NOT NULL,
    cena double precision NOT NULL
);


ALTER TABLE public."Egzemplarze" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16654)
-- Name: Klienci; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Klienci" (
    imie character varying(10) NOT NULL,
    nazwisko character varying(15) NOT NULL,
    login character varying(10) NOT NULL,
    haslo character varying(10) NOT NULL
);


ALTER TABLE public."Klienci" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16660)
-- Name: Wypozyczenia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Wypozyczenia" (
    id integer NOT NULL,
    login character varying(10) NOT NULL,
    rejestracja character varying(7) NOT NULL,
    data_wypozyczenia date NOT NULL,
    data_zwrotu date NOT NULL
);


ALTER TABLE public."Wypozyczenia" OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16659)
-- Name: Wypozyczenia_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Wypozyczenia_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Wypozyczenia_id_seq" OWNER TO postgres;

--
-- TOC entry 4829 (class 0 OID 0)
-- Dependencies: 217
-- Name: Wypozyczenia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Wypozyczenia_id_seq" OWNED BY public."Wypozyczenia".id;


--
-- TOC entry 219 (class 1259 OID 16757)
-- Name: egzemplarze; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.egzemplarze (
    rejestracja character varying(255) NOT NULL,
    cena double precision NOT NULL,
    data_produkcji timestamp without time zone NOT NULL,
    kolor character varying(255) NOT NULL,
    marka character varying(255),
    model character varying(255) NOT NULL,
    przebieg integer NOT NULL
);


ALTER TABLE public.egzemplarze OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16764)
-- Name: klienci; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.klienci (
    login character varying(255) NOT NULL,
    haslo character varying(255) NOT NULL,
    imie character varying(255) NOT NULL,
    nazwisko character varying(255) NOT NULL
);


ALTER TABLE public.klienci OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16772)
-- Name: wypozyczenia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wypozyczenia (
    id integer NOT NULL,
    data_wypozyczenia date NOT NULL,
    data_zwrotu date NOT NULL,
    rejestracja character varying(255) NOT NULL,
    login character varying(255) NOT NULL
);


ALTER TABLE public.wypozyczenia OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16771)
-- Name: wypozyczenia_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wypozyczenia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.wypozyczenia_id_seq OWNER TO postgres;

--
-- TOC entry 4830 (class 0 OID 0)
-- Dependencies: 221
-- Name: wypozyczenia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wypozyczenia_id_seq OWNED BY public.wypozyczenia.id;


--
-- TOC entry 4655 (class 2604 OID 16663)
-- Name: Wypozyczenia id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Wypozyczenia" ALTER COLUMN id SET DEFAULT nextval('public."Wypozyczenia_id_seq"'::regclass);


--
-- TOC entry 4656 (class 2604 OID 16775)
-- Name: wypozyczenia id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wypozyczenia ALTER COLUMN id SET DEFAULT nextval('public.wypozyczenia_id_seq'::regclass);


--
-- TOC entry 4816 (class 0 OID 16649)
-- Dependencies: 215
-- Data for Name: Egzemplarze; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Egzemplarze" (marka, model, rejestracja, data_produkcji, kolor, przebieg, cena) FROM stdin;
Toyota	Corolla	ABC1234	2020-01-15	Czerwony	15000	75000
Honda	Civic	DEF5678	2019-05-23	Niebieski	22000	68000
Ford	Focus	GHI9012	2018-08-30	Czarny	32000	55000
BMW	3 Series	JKL3456	2021-11-11	Biały	10000	90000
Audi	A4	MNO7890	2017-07-07	Srebrny	45000	63000
\.


--
-- TOC entry 4817 (class 0 OID 16654)
-- Dependencies: 216
-- Data for Name: Klienci; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Klienci" (imie, nazwisko, login, haslo) FROM stdin;
Jan	Kowalski	jank	haslo123
Anna	Nowak	annan	haslo456
Piotr	Wiśniewski	piotrw	haslo789
Katarzyna	Wójcik	katw	haslo101
Tomasz	Kamiński	tomk	haslo202
Lukasz	Bobik	bobik	bobik
lukasz	lukasz	lukasz	lukasz
xdd	xdd	xdd	xdd
qwer	qwer	qwer	qwer
\.


--
-- TOC entry 4819 (class 0 OID 16660)
-- Dependencies: 218
-- Data for Name: Wypozyczenia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Wypozyczenia" (id, login, rejestracja, data_wypozyczenia, data_zwrotu) FROM stdin;
13	jank	MNO7890	2024-06-23	2024-07-23
14	qwer	JKL3456	2024-06-24	2024-07-24
\.


--
-- TOC entry 4820 (class 0 OID 16757)
-- Dependencies: 219
-- Data for Name: egzemplarze; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.egzemplarze (rejestracja, cena, data_produkcji, kolor, marka, model, przebieg) FROM stdin;
\.


--
-- TOC entry 4821 (class 0 OID 16764)
-- Dependencies: 220
-- Data for Name: klienci; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.klienci (login, haslo, imie, nazwisko) FROM stdin;
\.


--
-- TOC entry 4823 (class 0 OID 16772)
-- Dependencies: 222
-- Data for Name: wypozyczenia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wypozyczenia (id, data_wypozyczenia, data_zwrotu, rejestracja, login) FROM stdin;
\.


--
-- TOC entry 4831 (class 0 OID 0)
-- Dependencies: 217
-- Name: Wypozyczenia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Wypozyczenia_id_seq"', 14, true);


--
-- TOC entry 4832 (class 0 OID 0)
-- Dependencies: 221
-- Name: wypozyczenia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wypozyczenia_id_seq', 1, false);


--
-- TOC entry 4658 (class 2606 OID 16653)
-- Name: Egzemplarze Egzemplarze_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Egzemplarze"
    ADD CONSTRAINT "Egzemplarze_pkey" PRIMARY KEY (rejestracja);


--
-- TOC entry 4660 (class 2606 OID 16658)
-- Name: Klienci Klienci_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Klienci"
    ADD CONSTRAINT "Klienci_pkey" PRIMARY KEY (login);


--
-- TOC entry 4662 (class 2606 OID 16665)
-- Name: Wypozyczenia Wypozyczenia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Wypozyczenia"
    ADD CONSTRAINT "Wypozyczenia_pkey" PRIMARY KEY (id);


--
-- TOC entry 4664 (class 2606 OID 16763)
-- Name: egzemplarze egzemplarze_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.egzemplarze
    ADD CONSTRAINT egzemplarze_pkey PRIMARY KEY (rejestracja);


--
-- TOC entry 4666 (class 2606 OID 16770)
-- Name: klienci klienci_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.klienci
    ADD CONSTRAINT klienci_pkey PRIMARY KEY (login);


--
-- TOC entry 4668 (class 2606 OID 16779)
-- Name: wypozyczenia wypozyczenia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wypozyczenia
    ADD CONSTRAINT wypozyczenia_pkey PRIMARY KEY (id);


--
-- TOC entry 4671 (class 2606 OID 16780)
-- Name: wypozyczenia fk6quc3d6ca6yih97q8n94206t0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wypozyczenia
    ADD CONSTRAINT fk6quc3d6ca6yih97q8n94206t0 FOREIGN KEY (rejestracja) REFERENCES public.egzemplarze(rejestracja);


--
-- TOC entry 4672 (class 2606 OID 16785)
-- Name: wypozyczenia fkotbs7fqxk4tosfygxgxemlle; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wypozyczenia
    ADD CONSTRAINT fkotbs7fqxk4tosfygxgxemlle FOREIGN KEY (login) REFERENCES public.klienci(login);


--
-- TOC entry 4669 (class 2606 OID 16666)
-- Name: Wypozyczenia wypozyczenia_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Wypozyczenia"
    ADD CONSTRAINT wypozyczenia_ibfk_1 FOREIGN KEY (login) REFERENCES public."Klienci"(login);


--
-- TOC entry 4670 (class 2606 OID 16671)
-- Name: Wypozyczenia wypozyczenia_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Wypozyczenia"
    ADD CONSTRAINT wypozyczenia_ibfk_2 FOREIGN KEY (rejestracja) REFERENCES public."Egzemplarze"(rejestracja);


-- Completed on 2024-07-02 23:05:14

--
-- PostgreSQL database dump complete
--

