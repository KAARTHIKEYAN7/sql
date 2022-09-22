--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    s_no integer,
    name character varying(25) NOT NULL,
    count integer,
    size integer,
    access boolean,
    nonaccess boolean,
    status text,
    nos numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: globe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.globe (
    globe_id integer NOT NULL,
    s_no integer,
    name character varying(25) NOT NULL,
    count integer,
    size integer NOT NULL,
    access boolean,
    nonaccess boolean,
    status text,
    nos numeric,
    extra integer
);


ALTER TABLE public.globe OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    s_no integer,
    name character varying(25) NOT NULL,
    count integer,
    size integer,
    access boolean,
    nonaccess boolean,
    status text,
    nos numeric
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    s_no integer,
    name character varying(25) NOT NULL,
    count integer,
    size integer,
    access boolean,
    nonaccess boolean,
    status text,
    nos numeric
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    s_no integer,
    name character varying(25) NOT NULL,
    count integer,
    size integer,
    access boolean,
    nonaccess boolean,
    status text,
    nos numeric
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, 'a', 1, 1, true, false, 'alive', 1);
INSERT INTO public.galaxy VALUES (2, NULL, 'b', 2, 2, true, false, 'alive', 2);
INSERT INTO public.galaxy VALUES (3, NULL, 'c', 3, 3, true, false, 'alive', 3);
INSERT INTO public.galaxy VALUES (4, NULL, 'd', 4, 4, true, false, 'alive', 4);
INSERT INTO public.galaxy VALUES (5, NULL, 'e', 5, 5, true, false, 'alive', 5);
INSERT INTO public.galaxy VALUES (6, NULL, 'f', 6, 6, true, false, 'alive', 6);


--
-- Data for Name: globe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.globe VALUES (2, NULL, 'a', 1, 1, true, false, 'alive', 1, NULL);
INSERT INTO public.globe VALUES (3, NULL, 'b', 2, 2, true, false, 'alive', 2, NULL);
INSERT INTO public.globe VALUES (5, NULL, 'c', 3, 3, true, false, 'alive', 3, NULL);
INSERT INTO public.globe VALUES (6, NULL, 'd', 4, 4, true, false, 'alive', 4, NULL);
INSERT INTO public.globe VALUES (7, NULL, 'e', 5, 5, true, false, 'alive', 5, NULL);
INSERT INTO public.globe VALUES (8, NULL, 'f', 6, 6, true, false, 'alive', 6, NULL);
INSERT INTO public.globe VALUES (9, NULL, 'g', 7, 7, true, false, 'alive', 7, NULL);
INSERT INTO public.globe VALUES (10, NULL, 'h', 8, 8, true, false, 'alive', 8, NULL);
INSERT INTO public.globe VALUES (11, NULL, 'i', 9, 9, true, false, 'alive', 9, NULL);
INSERT INTO public.globe VALUES (12, NULL, 'j', 10, 10, true, false, 'alive', 10, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, NULL, 'a', 1, 1, true, false, 'alive', 1);
INSERT INTO public.moon VALUES (3, NULL, 'b', 2, 2, true, false, 'alive', 2);
INSERT INTO public.moon VALUES (5, NULL, 'c', 3, 3, true, false, 'alive', 3);
INSERT INTO public.moon VALUES (6, NULL, 'd', 4, 4, true, false, 'alive', 4);
INSERT INTO public.moon VALUES (7, NULL, 'e', 5, 5, true, false, 'alive', 5);
INSERT INTO public.moon VALUES (8, NULL, 'f', 6, 6, true, false, 'alive', 6);
INSERT INTO public.moon VALUES (9, NULL, 'g', 7, 7, true, false, 'alive', 7);
INSERT INTO public.moon VALUES (10, NULL, 'h', 8, 8, true, false, 'alive', 8);
INSERT INTO public.moon VALUES (11, NULL, 'i', 9, 9, true, false, 'alive', 9);
INSERT INTO public.moon VALUES (12, NULL, 'j', 10, 10, true, false, 'alive', 10);
INSERT INTO public.moon VALUES (13, NULL, 'k', 11, 11, false, true, 'dead', 11);
INSERT INTO public.moon VALUES (14, NULL, 'l', 12, 12, false, true, 'dead', 12);
INSERT INTO public.moon VALUES (15, NULL, 'm', 13, 13, false, true, 'dead', 13);
INSERT INTO public.moon VALUES (16, NULL, 'n', 14, 14, false, true, 'dead', 14);
INSERT INTO public.moon VALUES (17, NULL, 'o', 15, 15, false, true, 'dead', 15);
INSERT INTO public.moon VALUES (18, NULL, 'p', 16, 16, false, true, 'dead', 16);
INSERT INTO public.moon VALUES (19, NULL, 'q', 17, 17, false, true, 'dead', 17);
INSERT INTO public.moon VALUES (20, NULL, 'r', 18, 18, false, true, 'dead', 18);
INSERT INTO public.moon VALUES (21, NULL, 's', 19, 19, false, true, 'dead', 19);
INSERT INTO public.moon VALUES (22, NULL, 't', 20, 20, false, true, 'dead', 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, 'a', 1, 1, true, false, 'alive', 1);
INSERT INTO public.planet VALUES (3, NULL, 'b', 2, 2, true, false, 'alive', 2);
INSERT INTO public.planet VALUES (4, NULL, 'c', 3, 3, true, false, 'alive', 3);
INSERT INTO public.planet VALUES (5, NULL, 'd', 4, 4, true, false, 'alive', 4);
INSERT INTO public.planet VALUES (6, NULL, 'e', 5, 5, true, false, 'alive', 5);
INSERT INTO public.planet VALUES (7, NULL, 'f', 6, 6, true, false, 'alive', 6);
INSERT INTO public.planet VALUES (8, NULL, 'g', 7, 7, true, false, 'alive', 7);
INSERT INTO public.planet VALUES (9, NULL, 'h', 8, 8, true, false, 'alive', 8);
INSERT INTO public.planet VALUES (10, NULL, 'i', 9, 9, true, false, 'alive', 9);
INSERT INTO public.planet VALUES (11, NULL, 'j', 10, 10, true, false, 'alive', 10);
INSERT INTO public.planet VALUES (12, NULL, 'k', 11, 11, false, true, 'dead', 11);
INSERT INTO public.planet VALUES (13, NULL, 'l', 12, 12, false, true, 'dead', 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, NULL, 'a', 1, 1, true, false, 'alive', 1);
INSERT INTO public.star VALUES (2, NULL, 'b', 2, 2, true, false, 'alive', 2);
INSERT INTO public.star VALUES (3, NULL, 'c', 3, 3, true, false, 'alive', 3);
INSERT INTO public.star VALUES (4, NULL, 'd', 4, 4, true, false, 'alive', 4);
INSERT INTO public.star VALUES (5, NULL, 'e', 5, 5, true, false, 'alive', 5);
INSERT INTO public.star VALUES (6, NULL, 'f', 6, 6, true, false, 'alive', 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_s_no_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_s_no_key UNIQUE (s_no);


--
-- Name: globe globe_extra_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.globe
    ADD CONSTRAINT globe_extra_key UNIQUE (extra);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_s_no_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_s_no_key UNIQUE (s_no);


--
-- Name: globe pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.globe
    ADD CONSTRAINT pk PRIMARY KEY (globe_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_s_no_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_s_no_key UNIQUE (s_no);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_s_no_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_s_no_key UNIQUE (s_no);


--
-- Name: star fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk FOREIGN KEY (s_no) REFERENCES public.galaxy(s_no);


--
-- Name: planet fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk FOREIGN KEY (s_no) REFERENCES public.star(s_no);


--
-- Name: moon fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk FOREIGN KEY (s_no) REFERENCES public.planet(s_no);


--
-- PostgreSQL database dump complete
--

