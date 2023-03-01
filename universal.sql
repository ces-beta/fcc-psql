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
    name character varying(30) NOT NULL,
    is_visible boolean NOT NULL,
    nickname text,
    is_milky_way boolean NOT NULL
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer,
    name character varying(30) NOT NULL,
    is_visible boolean NOT NULL,
    nickname text,
    distance_from_planet numeric(3,1)
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
    star_id integer,
    name character varying(30) NOT NULL,
    is_visible boolean NOT NULL,
    nickname text,
    num_moons integer
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
    galaxy_id integer,
    name character varying(30) NOT NULL,
    is_visible boolean NOT NULL,
    nickname text,
    num_planets integer
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
-- Name: villain; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.villain (
    villain_id integer NOT NULL,
    name character varying(30) NOT NULL,
    nickname text NOT NULL
);


ALTER TABLE public.villain OWNER TO freecodecamp;

--
-- Name: villain_villain_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.villain_villain_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.villain_villain_id_seq OWNER TO freecodecamp;

--
-- Name: villain_villain_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.villain_villain_id_seq OWNED BY public.villain.villain_id;


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
-- Name: villain villain_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.villain ALTER COLUMN villain_id SET DEFAULT nextval('public.villain_villain_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'g1', true, 'g1', false);
INSERT INTO public.galaxy VALUES (2, 'g2', true, 'g2', false);
INSERT INTO public.galaxy VALUES (3, 'g3', true, 'g3', false);
INSERT INTO public.galaxy VALUES (4, 'g4', true, 'g4', false);
INSERT INTO public.galaxy VALUES (5, 'g5', true, 'g5', false);
INSERT INTO public.galaxy VALUES (6, 'g6', true, 'g6', false);
INSERT INTO public.galaxy VALUES (7, 'g7', true, 'g7', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (12, 1, 'p2', true, 'p2', 44.5);
INSERT INTO public.moon VALUES (13, 24, 'p3', true, 'p3', 44.5);
INSERT INTO public.moon VALUES (14, 25, 'p4', true, 'p4', 44.5);
INSERT INTO public.moon VALUES (15, 26, 'p5', true, 'p5', 44.5);
INSERT INTO public.moon VALUES (16, 27, 'p6', true, 'p6', 44.5);
INSERT INTO public.moon VALUES (17, NULL, 'p7', true, 'p7', 44.5);
INSERT INTO public.moon VALUES (18, NULL, 'p8', true, 'p8', 44.5);
INSERT INTO public.moon VALUES (19, NULL, 'p9', true, 'p9', 44.5);
INSERT INTO public.moon VALUES (20, NULL, 'p10', true, 'p10', 44.5);
INSERT INTO public.moon VALUES (21, NULL, 'p11', true, 'p11', 44.5);
INSERT INTO public.moon VALUES (22, NULL, 'p12', true, 'p12', 44.5);
INSERT INTO public.moon VALUES (23, NULL, 'p55', true, 'p55', 44.5);
INSERT INTO public.moon VALUES (24, NULL, 'p56', true, 'p56', 44.5);
INSERT INTO public.moon VALUES (25, NULL, 'p57', true, 'p57', 44.5);
INSERT INTO public.moon VALUES (26, NULL, 'p58', true, 'p58', 44.5);
INSERT INTO public.moon VALUES (27, NULL, 'p59', true, 'p59', 44.5);
INSERT INTO public.moon VALUES (28, NULL, 'p60', true, 'p60', 44.5);
INSERT INTO public.moon VALUES (29, NULL, 'p61', true, 'p61', 44.5);
INSERT INTO public.moon VALUES (30, NULL, 'p62', true, 'p62', 44.5);
INSERT INTO public.moon VALUES (31, NULL, 'p63', true, 'p63', 44.5);
INSERT INTO public.moon VALUES (32, NULL, 'p64', true, 'p64', 44.5);
INSERT INTO public.moon VALUES (33, NULL, 'p65', true, 'p65', 44.5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'p1', true, 'p1', 5);
INSERT INTO public.planet VALUES (24, 2, 'p2', true, 'p2', 5);
INSERT INTO public.planet VALUES (25, 3, 'p3', true, 'p3', 5);
INSERT INTO public.planet VALUES (26, 4, 'p4', true, 'p4', 5);
INSERT INTO public.planet VALUES (27, 5, 'p5', true, 'p5', 5);
INSERT INTO public.planet VALUES (28, 6, 'p6', true, 'p6', 5);
INSERT INTO public.planet VALUES (29, NULL, 'p7', true, 'p7', 5);
INSERT INTO public.planet VALUES (30, NULL, 'p8', true, 'p8', 5);
INSERT INTO public.planet VALUES (31, NULL, 'p9', true, 'p9', 5);
INSERT INTO public.planet VALUES (32, NULL, 'p10', true, 'p10', 5);
INSERT INTO public.planet VALUES (33, NULL, 'p11', true, 'p11', 5);
INSERT INTO public.planet VALUES (34, NULL, 'p12', true, 'p12', 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 's1', true, 's1', 4);
INSERT INTO public.star VALUES (2, 2, 's2', true, 's2', 4);
INSERT INTO public.star VALUES (3, 3, 's3', true, 's3', 4);
INSERT INTO public.star VALUES (4, 4, 's4', true, 's4', 4);
INSERT INTO public.star VALUES (5, 5, 's5', true, 's5', 4);
INSERT INTO public.star VALUES (6, 3, 's6', true, 's6', 4);


--
-- Data for Name: villain; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.villain VALUES (1, 'char', 'char1');
INSERT INTO public.villain VALUES (2, 'char2', 'char22');
INSERT INTO public.villain VALUES (3, 'char3', 'char33');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 33, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 34, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: villain_villain_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.villain_villain_id_seq', 3, true);


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
-- Name: villain villain_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.villain
    ADD CONSTRAINT villain_name_key UNIQUE (name);


--
-- Name: villain villain_nickname_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.villain
    ADD CONSTRAINT villain_nickname_key UNIQUE (nickname);


--
-- Name: villain villain_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.villain
    ADD CONSTRAINT villain_pkey PRIMARY KEY (villain_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

