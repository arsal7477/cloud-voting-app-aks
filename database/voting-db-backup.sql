--
-- PostgreSQL database dump
--

\restrict exVl2Y1nQ1h9Q8wvwn65x51GCt2fOql0H8tOSTPDKJOjacO1lX9Cak5WRgT3E8m

-- Dumped from database version 15.15
-- Dumped by pg_dump version 15.15

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
-- Name: votes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.votes (
    id character varying(255) NOT NULL,
    vote character varying(255) NOT NULL
);


ALTER TABLE public.votes OWNER TO postgres;

--
-- Data for Name: votes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.votes (id, vote) FROM stdin;
4a2016550a6ed2e	b
482611641d62b0b	a
bb1ad0fe109a4ab	a
ef4347ae7f508ae	a
\.


--
-- Name: votes votes_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.votes
    ADD CONSTRAINT votes_id_key UNIQUE (id);


--
-- PostgreSQL database dump complete
--

\unrestrict exVl2Y1nQ1h9Q8wvwn65x51GCt2fOql0H8tOSTPDKJOjacO1lX9Cak5WRgT3E8m

