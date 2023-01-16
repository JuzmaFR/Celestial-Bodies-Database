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
    name character varying(50) NOT NULL,
    constellation character varying(50),
    distance_mly integer,
    discoverer character varying(50)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    discoverer character varying(50),
    habitable boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50),
    description text,
    star_id integer,
    habitable boolean,
    minor_planet boolean NOT NULL,
    amount_moons integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50),
    galaxy_id integer,
    diameter numeric,
    description text NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe (
    universe_id integer NOT NULL,
    name character varying(30) NOT NULL,
    amount_galaxy_billion integer
);


ALTER TABLE public.universe OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'Andromeda', 3, NULL);
INSERT INTO public.galaxy VALUES (2, 'Antennae Galaxies', 'Corvus', 45, NULL);
INSERT INTO public.galaxy VALUES (3, 'Backward Galaxy', 'Centaurus', 200, NULL);
INSERT INTO public.galaxy VALUES (4, 'Black Eye Galaxy', 'Coma Berenices', 17, NULL);
INSERT INTO public.galaxy VALUES (5, 'Bode Galaxy', 'Ursa Major', 12, NULL);
INSERT INTO public.galaxy VALUES (6, 'Butterfly Galaxies', 'Virgo', 60, NULL);
INSERT INTO public.galaxy VALUES (7, 'Cartwheel Galaxy', 'Sculptor', 500, NULL);
INSERT INTO public.galaxy VALUES (8, 'Cigar Galaxy', 'Ursa Major', 12, NULL);
INSERT INTO public.galaxy VALUES (9, 'Circinus Galaxy', 'Circinus', 13, NULL);
INSERT INTO public.galaxy VALUES (10, 'Coma Pinwheel Galaxy', 'Coma Benerices', 45, NULL);
INSERT INTO public.galaxy VALUES (11, 'Comet Galaxy', 'Sculptor', 3200, NULL);
INSERT INTO public.galaxy VALUES (12, 'Condor Galaxy', 'Pavo', 212, NULL);
INSERT INTO public.galaxy VALUES (13, 'Cosmos Redshift 7', 'Sextans', 12900, NULL);
INSERT INTO public.galaxy VALUES (14, 'Eye of Sauron', 'Canes Venatici', 52, NULL);
INSERT INTO public.galaxy VALUES (15, 'Fireworks Galaxy', 'Cygnus and Cepheus', 25, NULL);
INSERT INTO public.galaxy VALUES (16, 'Hockey Stick Galaxies', 'Canes Venatici', 30, NULL);
INSERT INTO public.galaxy VALUES (17, 'Hoag Object', 'Serpens Caput', 613, NULL);
INSERT INTO public.galaxy VALUES (18, 'Large Magellanic Cloud', 'Dorado Mensa', 0, NULL);
INSERT INTO public.galaxy VALUES (19, 'Lindsay-Shapley Ring', 'Volans', 300, NULL);
INSERT INTO public.galaxy VALUES (20, 'Malin 1', 'Coma Berenices', 1190, NULL);
INSERT INTO public.galaxy VALUES (21, 'Medusa Merger', 'Ursa Major', 129, NULL);
INSERT INTO public.galaxy VALUES (22, 'Sculptor Dwarf Galaxy', 'Sculptor', 0, NULL);
INSERT INTO public.galaxy VALUES (23, 'Mice Galaxies', 'Coma Berenices', 290, NULL);
INSERT INTO public.galaxy VALUES (24, 'Small Magellanic Cloud', 'Tucana', 0, NULL);
INSERT INTO public.galaxy VALUES (25, 'Mayall Object', 'Ursa Major', 500, NULL);
INSERT INTO public.galaxy VALUES (26, 'Milky Way', 'Saggitarius', 0, NULL);
INSERT INTO public.galaxy VALUES (27, 'Needle Galaxy', 'Coma Berenices', 50, NULL);
INSERT INTO public.galaxy VALUES (28, 'Wolf-Lundmark Melotte', 'Cetus', 3, NULL);
INSERT INTO public.galaxy VALUES (29, 'Pinwheel Galaxy', 'Ursa Major', 21, NULL);
INSERT INTO public.galaxy VALUES (30, 'Sculptor Galaxy', 'Sculptor', 31, NULL);
INSERT INTO public.galaxy VALUES (31, 'Southern Pinwheel Galaxy', 'Sculptor', 0, NULL);
INSERT INTO public.galaxy VALUES (32, 'Sunflower Galaxy', 'Canes Venatici', 29, NULL);
INSERT INTO public.galaxy VALUES (33, 'Tadpole Galaxy', 'Draco', 0, NULL);
INSERT INTO public.galaxy VALUES (34, 'Triangulum Galaxy', 'Triangulum', 3, NULL);
INSERT INTO public.galaxy VALUES (35, 'Whirpool Galaxy', 'Canes Venatici', 31, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earth sole natural satellite', NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Deimos', 'The outer and smaller Mars satellite', NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Phobos', 'The inner and larger Mars satellite', NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Amalthea', 'small, potato head jupiter satellite', NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Callisto', 'outermost of the four large moons (Galilean satellites)', NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Europa', 'the smallest and second nearest of the four large moons (Galilean satellites)', NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Ganymede', 'largest of Jupiter’s satellites and of all the satellites in the solar system', NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Io', 'innermost of the four large moons (Galilean satellites)', NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Dione', 'fourth nearest of the major regular moons of Saturn', NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Enceladus', 'second nearest of the major regular moons of Saturn and the brightest of all its moons', NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Hyperion', 'major moon of Saturn, notable in that it has no regular rotation period but tumbles in an apparently random fashion in its orbit', NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Lapetus', 'outermost of Saturn’s major regular moons', NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Mimas', 'outermost of Saturn’s major regular moons', NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Phoebe', 'midsize irregular moon of Saturn', NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Rhea', 'major regular moon of Saturn and the planet’s second largest', NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Tethys', 'major regular moon of Saturn, remarkable for a fissure that wraps around the greater part of its circumference', NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Titan', 'the largest moon of Saturn and the only moon in the solar system known to have clouds and a dense atmosphere', NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Ariel', 'second nearest of the five major moons of Uranus', NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Miranda', 'innermost and smallest of the five major moons of Uranus and, topographically, the most varied of the group', NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Oberon', 'innermost and smallest of the five major moons of Uranus and the second largest of the group', NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Titania', 'largest of the moons of Uranus', NULL, NULL);
INSERT INTO public.moon VALUES (22, 'Umbriel', 'third nearest of the five major moons of Uranus and the one having the darkest and oldest surface of the group', NULL, NULL);
INSERT INTO public.moon VALUES (23, 'Nereid', 'third largest known moon of Neptune and the second to be discovered', NULL, NULL);
INSERT INTO public.moon VALUES (24, 'Triton', 'largest of Neptune’s moons', NULL, NULL);
INSERT INTO public.moon VALUES (25, 'Charon', 'largest moon of the dwarf planet Pluto', NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Earth is the third planet from the Sun and the fifth largest planet in the solar system in terms of size and mass. Its near-surface environments are the only places in the universe known to harbour life.', 1, true, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Venus is the second planet from the Sun. It is sometimes called Earths "sister" or "twin" planet as it is almost as large and has a similar composition.', 1, false, false, 0);
INSERT INTO public.planet VALUES (3, 'Mercury', 'Mercury is the smallest planet in the Solar System and the closest to the Sun. Its orbit around the Sun takes 87.97 Earth days, the shortest of all the Suns planets.', 1, false, false, 0);
INSERT INTO public.planet VALUES (4, 'Mars', 'Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, only being larger than Mercury. In the English language, Mars is named for the Roman god of war.', 1, false, false, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, only being larger than Mercury. In the English language, Mars is named for the Roman god of war.', 1, false, false, 79);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, only being larger than Mercury. In the English language, Mars is named for the Roman god of war.', 1, false, false, 83);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Uranus is the seventh planet from the Sun. It is named after Greek sky deity Uranus (Caelus), who in Greek mythology is the father of Cronus (Saturn), a grandfather of Zeus (Jupiter) and great-grandfather of Ares (Mars).', 1, false, false, 27);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Neptune is the eighth planet from the Sun and the farthest known planet in the Solar System. It is the fourth-largest planet in the Solar System by diameter, the third-most-massive planet, and the densest giant planet.', 1, false, false, 14);
INSERT INTO public.planet VALUES (9, 'Ceres', 'Ceres (/ˈsɪəriːz/;[18] minor-planet designation: 1 Ceres) is a dwarf planet in the asteroid belt between the orbits of Mars and Jupiter.', 1, false, true, 0);
INSERT INTO public.planet VALUES (10, 'Pluto', 'Pluto (minor-planet designation: 134340 Pluto) is a dwarf planet in the Kuiper belt, a ring of bodies beyond the orbit of Neptune.', 1, false, true, 5);
INSERT INTO public.planet VALUES (11, 'Haumea', 'Haumea (minor-planet designation 136108 Haumea) is a dwarf planet located beyond Neptunes orbit.', 1, false, true, 2);
INSERT INTO public.planet VALUES (12, 'Makemake', 'Haumea (minor-planet designation 136108 Haumea) is a dwarf planet located beyond Neptunes orbit.', 1, false, true, 1);
INSERT INTO public.planet VALUES (13, 'Eris', 'Haumea (minor-planet designation 136108 Haumea) is a dwarf planet located beyond Neptunes orbit.', 1, false, true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 26, 696342, 'The Sun is the star at the center of the Solar System. It is a nearly perfect ball of hot plasma,[18][19] heated to incandescence by nuclear fusion reactions in its core. The Sun radiates this energy mainly as light, ultraviolet, and infrared radiation, and is the most important source of energy for life on Earth.');
INSERT INTO public.star VALUES (2, 'Betelgeuse', 26, 617.1, 'Betelgeuse is a red supergiant of spectral type M1-2 and one of the largest stars visible to the naked eye.');
INSERT INTO public.star VALUES (3, 'Vega', 26, 16432, 'Vega is the brightest star in the northern constellation of Lyra.');
INSERT INTO public.star VALUES (4, 'Alpha Herculis', 26, 2840000, 'Alpha Herculis, also designated 64 Herculis, is a multiple star system in the constellation of Hercules.');
INSERT INTO public.star VALUES (5, 'Deneb', 26, 2030000, 'Deneb is a first-magnitude star in the constellation of Cygnus, the swan.');
INSERT INTO public.star VALUES (6, 'Sirius', 26, 20630000, 'Sirius is the brightest star in the night sky.');


--
-- Data for Name: universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe VALUES (1, 'The Cosmos', 170);
INSERT INTO public.universe VALUES (2, 'Unknown', NULL);
INSERT INTO public.universe VALUES (3, 'Unknown 2', NULL);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: universe universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_pkey PRIMARY KEY (universe_id);


--
-- Name: universe universe_universe_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_universe_id_key UNIQUE (universe_id);


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

