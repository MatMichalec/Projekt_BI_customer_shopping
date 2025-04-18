--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

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
-- Name: transactions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transactions (
    invoice_no character varying(10) NOT NULL,
    customer_id character varying(10),
    gender character varying(10),
    age integer,
    category character varying(50),
    quantity integer,
    price numeric(10,2),
    payment_method character varying(20),
    invoice_date date,
    shopping_mall character varying(100),
    total_value numeric(12,2),
    day_of_week character varying(15),
    month character varying(15)
);


ALTER TABLE public.transactions OWNER TO postgres;

--
-- Name: transactions transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (invoice_no);


--
-- PostgreSQL database dump complete
--

