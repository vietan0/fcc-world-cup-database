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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (131, 2018, 'Final', 279, 280, 4, 2);
INSERT INTO public.games VALUES (132, 2018, 'Third Place', 281, 282, 2, 0);
INSERT INTO public.games VALUES (133, 2018, 'Semi-Final', 280, 282, 2, 1);
INSERT INTO public.games VALUES (134, 2018, 'Semi-Final', 279, 281, 1, 0);
INSERT INTO public.games VALUES (135, 2018, 'Quarter-Final', 280, 283, 3, 2);
INSERT INTO public.games VALUES (136, 2018, 'Quarter-Final', 282, 284, 2, 0);
INSERT INTO public.games VALUES (137, 2018, 'Quarter-Final', 281, 285, 2, 1);
INSERT INTO public.games VALUES (138, 2018, 'Quarter-Final', 279, 286, 2, 0);
INSERT INTO public.games VALUES (139, 2018, 'Eighth-Final', 282, 287, 2, 1);
INSERT INTO public.games VALUES (140, 2018, 'Eighth-Final', 284, 288, 1, 0);
INSERT INTO public.games VALUES (141, 2018, 'Eighth-Final', 281, 289, 3, 2);
INSERT INTO public.games VALUES (142, 2018, 'Eighth-Final', 285, 290, 2, 0);
INSERT INTO public.games VALUES (143, 2018, 'Eighth-Final', 280, 291, 2, 1);
INSERT INTO public.games VALUES (144, 2018, 'Eighth-Final', 283, 292, 2, 1);
INSERT INTO public.games VALUES (145, 2018, 'Eighth-Final', 286, 293, 2, 1);
INSERT INTO public.games VALUES (146, 2018, 'Eighth-Final', 279, 294, 4, 3);
INSERT INTO public.games VALUES (147, 2014, 'Final', 295, 294, 1, 0);
INSERT INTO public.games VALUES (148, 2014, 'Third Place', 296, 285, 3, 0);
INSERT INTO public.games VALUES (149, 2014, 'Semi-Final', 294, 296, 1, 0);
INSERT INTO public.games VALUES (150, 2014, 'Semi-Final', 295, 285, 7, 1);
INSERT INTO public.games VALUES (151, 2014, 'Quarter-Final', 296, 297, 1, 0);
INSERT INTO public.games VALUES (152, 2014, 'Quarter-Final', 294, 281, 1, 0);
INSERT INTO public.games VALUES (153, 2014, 'Quarter-Final', 285, 287, 2, 1);
INSERT INTO public.games VALUES (154, 2014, 'Quarter-Final', 295, 279, 1, 0);
INSERT INTO public.games VALUES (155, 2014, 'Eighth-Final', 285, 298, 2, 1);
INSERT INTO public.games VALUES (156, 2014, 'Eighth-Final', 287, 286, 2, 0);
INSERT INTO public.games VALUES (157, 2014, 'Eighth-Final', 279, 299, 2, 0);
INSERT INTO public.games VALUES (158, 2014, 'Eighth-Final', 295, 300, 2, 1);
INSERT INTO public.games VALUES (159, 2014, 'Eighth-Final', 296, 290, 2, 1);
INSERT INTO public.games VALUES (160, 2014, 'Eighth-Final', 297, 301, 2, 1);
INSERT INTO public.games VALUES (161, 2014, 'Eighth-Final', 294, 288, 1, 0);
INSERT INTO public.games VALUES (162, 2014, 'Eighth-Final', 281, 302, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (279, 'France');
INSERT INTO public.teams VALUES (280, 'Croatia');
INSERT INTO public.teams VALUES (281, 'Belgium');
INSERT INTO public.teams VALUES (282, 'England');
INSERT INTO public.teams VALUES (283, 'Russia');
INSERT INTO public.teams VALUES (284, 'Sweden');
INSERT INTO public.teams VALUES (285, 'Brazil');
INSERT INTO public.teams VALUES (286, 'Uruguay');
INSERT INTO public.teams VALUES (287, 'Colombia');
INSERT INTO public.teams VALUES (288, 'Switzerland');
INSERT INTO public.teams VALUES (289, 'Japan');
INSERT INTO public.teams VALUES (290, 'Mexico');
INSERT INTO public.teams VALUES (291, 'Denmark');
INSERT INTO public.teams VALUES (292, 'Spain');
INSERT INTO public.teams VALUES (293, 'Portugal');
INSERT INTO public.teams VALUES (294, 'Argentina');
INSERT INTO public.teams VALUES (295, 'Germany');
INSERT INTO public.teams VALUES (296, 'Netherlands');
INSERT INTO public.teams VALUES (297, 'Costa Rica');
INSERT INTO public.teams VALUES (298, 'Chile');
INSERT INTO public.teams VALUES (299, 'Nigeria');
INSERT INTO public.teams VALUES (300, 'Algeria');
INSERT INTO public.teams VALUES (301, 'Greece');
INSERT INTO public.teams VALUES (302, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 162, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 302, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

