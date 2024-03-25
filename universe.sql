--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(40) NOT NULL,
    some_column integer,
    known_life boolean NOT NULL,
    want_to_go boolean
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
    name character varying(40) NOT NULL,
    size_sqkm integer NOT NULL,
    planet_id integer NOT NULL,
    description text
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
    name character varying(40) NOT NULL,
    habitable boolean NOT NULL,
    size_sqkm integer NOT NULL,
    star_id integer NOT NULL
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
    name character varying(40) NOT NULL,
    galaxy_id integer NOT NULL,
    description text,
    something character varying(30)
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
-- Name: surface; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.surface (
    surface_id integer NOT NULL,
    name character varying(30),
    something numeric(4,1),
    letter character varying(30) NOT NULL
);


ALTER TABLE public.surface OWNER TO freecodecamp;

--
-- Name: surface_surface_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.surface_surface_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.surface_surface_id_seq OWNER TO freecodecamp;

--
-- Name: surface_surface_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.surface_surface_id_seq OWNED BY public.surface.surface_id;


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
-- Name: surface surface_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.surface ALTER COLUMN surface_id SET DEFAULT nextval('public.surface_surface_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', NULL, false, false);
INSERT INTO public.galaxy VALUES (2, 'Black Eye Galaxy', NULL, false, false);
INSERT INTO public.galaxy VALUES (3, 'Cartwheel Galaxy', NULL, false, false);
INSERT INTO public.galaxy VALUES (4, 'Sombrero Galaxy', NULL, false, true);
INSERT INTO public.galaxy VALUES (5, 'Cigar Galaxy', NULL, false, true);
INSERT INTO public.galaxy VALUES (6, 'Milky Way', NULL, true, true);
INSERT INTO public.galaxy VALUES (7, 'Sunflower Galaxy', NULL, false, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 10, 1, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 10, 2, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 10, 2, NULL);
INSERT INTO public.moon VALUES (4, 'Callisto', 10, 5, NULL);
INSERT INTO public.moon VALUES (5, 'Ganymede', 10, 5, NULL);
INSERT INTO public.moon VALUES (6, 'Io', 10, 5, NULL);
INSERT INTO public.moon VALUES (7, 'Europa', 10, 5, NULL);
INSERT INTO public.moon VALUES (8, 'Titan', 10, 6, NULL);
INSERT INTO public.moon VALUES (9, 'Enceladus', 10, 6, NULL);
INSERT INTO public.moon VALUES (10, 'Hyperion', 10, 6, NULL);
INSERT INTO public.moon VALUES (11, 'Prometheus', 10, 6, NULL);
INSERT INTO public.moon VALUES (12, 'Pandora', 10, 6, NULL);
INSERT INTO public.moon VALUES (13, 'Janus', 10, 6, NULL);
INSERT INTO public.moon VALUES (14, 'Epimetheus', 10, 6, NULL);
INSERT INTO public.moon VALUES (15, 'Mimas', 10, 6, NULL);
INSERT INTO public.moon VALUES (16, 'Iapetus', 10, 6, NULL);
INSERT INTO public.moon VALUES (17, 'Phoebe', 10, 6, NULL);
INSERT INTO public.moon VALUES (18, 'Tethys', 10, 6, NULL);
INSERT INTO public.moon VALUES (19, 'Telesto', 10, 6, NULL);
INSERT INTO public.moon VALUES (20, 'Miranda', 10, 7, NULL);
INSERT INTO public.moon VALUES (21, 'Ariel', 10, 7, NULL);
INSERT INTO public.moon VALUES (22, 'Umbriel', 10, 7, NULL);
INSERT INTO public.moon VALUES (23, 'Titania', 10, 7, NULL);
INSERT INTO public.moon VALUES (24, 'Oberon', 10, 7, NULL);
INSERT INTO public.moon VALUES (25, 'Despina', 10, 8, NULL);
INSERT INTO public.moon VALUES (26, 'Galatea', 10, 8, NULL);
INSERT INTO public.moon VALUES (27, 'Halimede', 10, 8, NULL);
INSERT INTO public.moon VALUES (28, 'Hippocamp', 10, 8, NULL);
INSERT INTO public.moon VALUES (29, 'Laomedeia', 10, 8, NULL);
INSERT INTO public.moon VALUES (30, 'Larissa', 10, 8, NULL);
INSERT INTO public.moon VALUES (31, 'Naiad', 10, 8, NULL);
INSERT INTO public.moon VALUES (32, 'Nereid', 10, 8, NULL);
INSERT INTO public.moon VALUES (33, 'Neso', 10, 8, NULL);
INSERT INTO public.moon VALUES (34, 'Proteus', 10, 8, NULL);
INSERT INTO public.moon VALUES (35, 'Psamathe', 10, 8, NULL);
INSERT INTO public.moon VALUES (36, 'Sao', 10, 8, NULL);
INSERT INTO public.moon VALUES (37, 'Thalassa', 10, 8, NULL);
INSERT INTO public.moon VALUES (38, 'Triton', 10, 8, NULL);
INSERT INTO public.moon VALUES (39, 'Charon', 10, 9, NULL);
INSERT INTO public.moon VALUES (40, 'Nix', 10, 9, NULL);
INSERT INTO public.moon VALUES (41, 'Ni', 10, 9, NULL);
INSERT INTO public.moon VALUES (42, 'Hydra', 10, 9, NULL);
INSERT INTO public.moon VALUES (43, 'Kerberos', 10, 9, NULL);
INSERT INTO public.moon VALUES (44, 'Styx', 10, 9, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 100, 10);
INSERT INTO public.planet VALUES (2, 'Mars', false, 50, 10);
INSERT INTO public.planet VALUES (3, 'Mercury', false, 200, 10);
INSERT INTO public.planet VALUES (4, 'Venus', false, 300, 10);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 400, 10);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 500, 10);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 600, 10);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 700, 10);
INSERT INTO public.planet VALUES (9, 'Pluto', false, 10, 10);
INSERT INTO public.planet VALUES (10, 'Ceres', false, 10, 10);
INSERT INTO public.planet VALUES (11, 'Jaumea', false, 10, 10);
INSERT INTO public.planet VALUES (12, 'Makemake', false, 10, 10);
INSERT INTO public.planet VALUES (13, 'Eris', false, 10, 10);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpheratz', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Mirach', 1, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Almach', 1, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Delta Andromeda', 1, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Iota Andromedae', 1, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Upsilon Andromedae', 1, NULL, NULL);
INSERT INTO public.star VALUES (7, 'Adhil', 1, NULL, NULL);
INSERT INTO public.star VALUES (8, 'Nembus', 1, NULL, NULL);
INSERT INTO public.star VALUES (9, 'Mu Andromedae', 1, NULL, NULL);
INSERT INTO public.star VALUES (10, 'The Sun', 6, NULL, NULL);


--
-- Data for Name: surface; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.surface VALUES (1, 'Ice', NULL, 'I');
INSERT INTO public.surface VALUES (2, 'Fire', NULL, 'F');
INSERT INTO public.surface VALUES (3, 'Gass', NULL, 'G');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 44, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: surface_surface_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.surface_surface_id_seq', 3, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: surface surface_letter_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.surface
    ADD CONSTRAINT surface_letter_key UNIQUE (letter);


--
-- Name: surface surface_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.surface
    ADD CONSTRAINT surface_pkey PRIMARY KEY (surface_id);


--
-- Name: moon unique_moonname; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moonname UNIQUE (name);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planetname; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planetname UNIQUE (name);


--
-- Name: star unique_starname; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_starname UNIQUE (name);


--
-- Name: moon moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

