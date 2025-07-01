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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    size integer,
    name character varying(60),
    discovered_by text NOT NULL,
    no_of_stars numeric,
    event_horizon numeric
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    size integer,
    name character varying(60),
    discovered_by text NOT NULL,
    lensing numeric
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
    size integer,
    name character varying(60),
    discovered_by text NOT NULL,
    no_of_gutters numeric,
    planet_id integer
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
    size integer,
    name character varying(60),
    discovered_by text NOT NULL,
    life_worthy boolean,
    color numeric,
    star_id integer
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
    size integer,
    name character varying(60),
    discovered_by text NOT NULL,
    binary_system boolean,
    velocity double precision,
    galaxy_id integer
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


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
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 1, 'Sagittarus A *', 'Bruce ballick', 100001, 1);
INSERT INTO public.blackhole VALUES (2, 2, 'M87', 'Event horizon', 100002, 2);
INSERT INTO public.blackhole VALUES (3, 3, 'LMC', 'UHuru', 100003, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 100, 'GGHY', 'Visal', 15);
INSERT INTO public.galaxy VALUES (2, 1000, 'Milkyway', 'Early Humans', 0);
INSERT INTO public.galaxy VALUES (3, 2100, 'Rosemily', 'Aaro', 1);
INSERT INTO public.galaxy VALUES (4, 455, 'Spiral', 'Avan', 7);
INSERT INTO public.galaxy VALUES (5, 788, 'irregular', 'AVAL', 8);
INSERT INTO public.galaxy VALUES (6, 899, 'Non shaped', 'Avar', 5);
INSERT INTO public.galaxy VALUES (7, 45, 'Andromeda galaxy', 'scientist', 45);
INSERT INTO public.galaxy VALUES (8, 4705, 'Trigalum', 'scientists', 454);
INSERT INTO public.galaxy VALUES (9, 4785, 'Somberero', 'indpired mind', 484);
INSERT INTO public.galaxy VALUES (10, 95, 'Whir pool', 'indpired2mind', 884);
INSERT INTO public.galaxy VALUES (11, 985, 'Messier', 'Wilfred', 89);
INSERT INTO public.galaxy VALUES (12, 1985, 'Large megalletic', 'Gokul', 893);
INSERT INTO public.galaxy VALUES (13, 1995, 'Centarus', 'Visal', 8935);
INSERT INTO public.galaxy VALUES (14, 19395, 'Pin wheel galaxy', 'Melwin', 1995);
INSERT INTO public.galaxy VALUES (15, 10001, 'Black wheel galaxy', 'Lijo', 1994);
INSERT INTO public.galaxy VALUES (16, 10002, 'Cart wheel galaxy', 'Jose', 1993);
INSERT INTO public.galaxy VALUES (17, 10003, 'Tadpole', 'Pallisseri', 1992);
INSERT INTO public.galaxy VALUES (18, 10004, 'Hoag', 'Satyan ANTHIKAD', 1991);
INSERT INTO public.galaxy VALUES (19, 10005, 'ngc', 'JEETHU JOSEPH', 1990);
INSERT INTO public.galaxy VALUES (20, 10006, 'ic1125', 'Martin prakat', 1989);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1500, 'Moon', 'Early Humans', 15000, 1);
INSERT INTO public.moon VALUES (2, 101, 'phobos', 'early humans', 121, 2);
INSERT INTO public.moon VALUES (3, 103, 'Deimos', 'early humans', 123, 3);
INSERT INTO public.moon VALUES (4, 104, 'Io', 'early humans', 124, 4);
INSERT INTO public.moon VALUES (5, 105, 'Europa', 'early humans', 125, 5);
INSERT INTO public.moon VALUES (6, 106, 'Ganymede', 'early humans', 126, 6);
INSERT INTO public.moon VALUES (7, 107, 'Callisto', 'early humans', 127, 7);
INSERT INTO public.moon VALUES (8, 108, 'Titam', 'early humans', 128, 8);
INSERT INTO public.moon VALUES (9, 109, 'Rhea', 'early humans', 129, 9);
INSERT INTO public.moon VALUES (10, 110, 'Enceladus', 'early humans', 130, 10);
INSERT INTO public.moon VALUES (11, 111, 'Lapetus', 'early humans', 131, 11);
INSERT INTO public.moon VALUES (12, 112, 'Mimas', 'early humans', 132, 12);
INSERT INTO public.moon VALUES (13, 113, 'Triton', 'early humans', 133, 13);
INSERT INTO public.moon VALUES (14, 114, 'Nereid', 'early humans', 134, 14);
INSERT INTO public.moon VALUES (15, 115, 'Cherion', 'early humans', 135, 15);
INSERT INTO public.moon VALUES (16, 116, 'Styx', 'early humans', 136, 16);
INSERT INTO public.moon VALUES (17, 117, 'Nix', 'early humans', 137, 17);
INSERT INTO public.moon VALUES (18, 118, 'Nix', 'Kerberos', 138, 18);
INSERT INTO public.moon VALUES (19, 119, 'Hydra', 'Early humans', 139, 19);
INSERT INTO public.moon VALUES (20, 120, 'Dynsomia', 'Early humans', 140, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1000, 'GGH67', 'Stane', true, 45, 1);
INSERT INTO public.planet VALUES (2, 3124, 'ttyy7', 'Ramakrishanan', true, 78, 2);
INSERT INTO public.planet VALUES (3, 565, 'tyt7', 'udhayakrishnan', false, 90, 3);
INSERT INTO public.planet VALUES (4, 123, 'qqwwe', 'wweer', false, 65, 4);
INSERT INTO public.planet VALUES (5, 1223, 'yqqwwe', 'wyweer', false, 5, 5);
INSERT INTO public.planet VALUES (6, 223, 'wwe', 'wyr', false, 8, 6);
INSERT INTO public.planet VALUES (7, 2423, 'xwwe', 'twyr', true, 18, 7);
INSERT INTO public.planet VALUES (8, 22423, 'xvwwe', 'yr', true, 38, 8);
INSERT INTO public.planet VALUES (9, 23, 'tye', 'uyr', false, 378, 9);
INSERT INTO public.planet VALUES (10, 73, 't8ye', '5uyr', false, 8878, 10);
INSERT INTO public.planet VALUES (11, 93, 't48ye', '54uyr', true, 578, 11);
INSERT INTO public.planet VALUES (12, 953, 't48y5e', '564uyr', true, 5978, 12);
INSERT INTO public.planet VALUES (13, 456, 'Mercury', 'Early humans', false, 12, 13);
INSERT INTO public.planet VALUES (14, 457, 'Venus', 'Early humans', false, 14, 14);
INSERT INTO public.planet VALUES (15, 458, 'Mars', 'Early humans', false, 15, 15);
INSERT INTO public.planet VALUES (16, 459, 'Jupiter', 'Early humans', false, 16, 16);
INSERT INTO public.planet VALUES (17, 460, 'Satern', 'Early humans', false, 17, 17);
INSERT INTO public.planet VALUES (18, 461, 'Uranus', 'William hershel', false, 450, 18);
INSERT INTO public.planet VALUES (19, 462, 'Neeptune', 'Johanne', false, 19, 19);
INSERT INTO public.planet VALUES (20, 463, 'Pluto', 'Clyde', false, 20, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 100, 'Beetlejuice', 'Sean roony', true, 1000, 1);
INSERT INTO public.star VALUES (2, 1000, 'Thiruvathira', 'Sethu panikkar', false, 2000, 2);
INSERT INTO public.star VALUES (3, 1500, 'Aswathi', 'Rajeevan', true, 5000, 3);
INSERT INTO public.star VALUES (4, 4500, 'Bharani', 'Sudhakaran', false, 7878787, 4);
INSERT INTO public.star VALUES (5, 400, 'Karthika', 'Sura', false, 787878, 5);
INSERT INTO public.star VALUES (6, 1400, 'Rohini', 'Krishna', false, 7878, 6);
INSERT INTO public.star VALUES (7, 788, 'SDFASD', 'YYO', true, 555, 7);
INSERT INTO public.star VALUES (8, 4788, 'S5DFASD', '7YYO', true, 5505, 8);
INSERT INTO public.star VALUES (9, 878, 'S55DFASD', '7Y0YO', false, 5405, 9);
INSERT INTO public.star VALUES (10, 878, 'S55DFASD', '7Y0YO', false, 545, 10);
INSERT INTO public.star VALUES (11, 978, 'S57SD', '87YY', true, 5, 11);
INSERT INTO public.star VALUES (12, 18, 'S50SD', '88YY', true, 895, 12);
INSERT INTO public.star VALUES (13, 455, 'sirus', 'early egyptians', true, 8882, 13);
INSERT INTO public.star VALUES (14, 4355, 'Regel', 'Arabs', true, 38882, 14);
INSERT INTO public.star VALUES (15, 47355, 'Alpha centuary', 'Jessuit missionaries', false, 3882, 15);
INSERT INTO public.star VALUES (20, 100012, 'Proxima centaury', 'Rox innes', false, 43882, 16);
INSERT INTO public.star VALUES (19, 100013, 'Barnard star', 'EE BARNARD', false, 43782, 17);
INSERT INTO public.star VALUES (18, 100014, 'Vega', 'HIPPARCUS', false, 789, 18);
INSERT INTO public.star VALUES (16, 100015, 'Altair', 'Antiguity', false, 7489, 19);
INSERT INTO public.star VALUES (17, 100016, 'Polar', 'Ancient navigators', false, 74894, 19);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 2, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: blackhole blackhole_event_horizon_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_event_horizon_key UNIQUE (event_horizon);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_lensing_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_lensing_key UNIQUE (lensing);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_no_of_gutters_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_no_of_gutters_key UNIQUE (no_of_gutters);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_color_key UNIQUE (color);


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
-- Name: star star_velocity_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_velocity_key UNIQUE (velocity);


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

