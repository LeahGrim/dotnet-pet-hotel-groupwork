--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

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
-- Name: PetOwners; Type: TABLE; Schema: public; Owner: desireequade
--

CREATE TABLE public."PetOwners" (
    id integer NOT NULL,
    "ownerName" text,
    email character(1) NOT NULL,
    pets integer NOT NULL
);


ALTER TABLE public."PetOwners" OWNER TO desireequade;

--
-- Name: PetOwners_id_seq; Type: SEQUENCE; Schema: public; Owner: desireequade
--

ALTER TABLE public."PetOwners" ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."PetOwners_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Pets; Type: TABLE; Schema: public; Owner: desireequade
--

CREATE TABLE public."Pets" (
    id integer NOT NULL,
    name text,
    color text,
    "checkedIn" timestamp without time zone NOT NULL,
    "petByOwnerId" integer NOT NULL
);


ALTER TABLE public."Pets" OWNER TO desireequade;

--
-- Name: Pets_id_seq; Type: SEQUENCE; Schema: public; Owner: desireequade
--

ALTER TABLE public."Pets" ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Pets_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: __EFMigrationsHistory; Type: TABLE; Schema: public; Owner: desireequade
--

CREATE TABLE public."__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);


ALTER TABLE public."__EFMigrationsHistory" OWNER TO desireequade;

--
-- Data for Name: PetOwners; Type: TABLE DATA; Schema: public; Owner: desireequade
--

COPY public."PetOwners" (id, "ownerName", email, pets) FROM stdin;
\.


--
-- Data for Name: Pets; Type: TABLE DATA; Schema: public; Owner: desireequade
--

COPY public."Pets" (id, name, color, "checkedIn", "petByOwnerId") FROM stdin;
\.


--
-- Data for Name: __EFMigrationsHistory; Type: TABLE DATA; Schema: public; Owner: desireequade
--

COPY public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") FROM stdin;
20220223214057_CreatePetOwnersTable	5.0.8
20220223214137_CreatePetsTable	5.0.8
20220223220602_CreatePetsTable	5.0.8
20220223220618_CreatePetOwnersTable	5.0.8
\.


--
-- Name: PetOwners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: desireequade
--

SELECT pg_catalog.setval('public."PetOwners_id_seq"', 1, false);


--
-- Name: Pets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: desireequade
--

SELECT pg_catalog.setval('public."Pets_id_seq"', 1, false);


--
-- Name: PetOwners PK_PetOwners; Type: CONSTRAINT; Schema: public; Owner: desireequade
--

ALTER TABLE ONLY public."PetOwners"
    ADD CONSTRAINT "PK_PetOwners" PRIMARY KEY (id);


--
-- Name: Pets PK_Pets; Type: CONSTRAINT; Schema: public; Owner: desireequade
--

ALTER TABLE ONLY public."Pets"
    ADD CONSTRAINT "PK_Pets" PRIMARY KEY (id);


--
-- Name: __EFMigrationsHistory PK___EFMigrationsHistory; Type: CONSTRAINT; Schema: public; Owner: desireequade
--

ALTER TABLE ONLY public."__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");


--
-- PostgreSQL database dump complete
--
