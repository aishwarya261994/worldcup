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
    round character varying(20) NOT NULL,
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
    name character varying(50) NOT NULL,
    team_id integer NOT NULL
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

INSERT INTO public.games VALUES (97, 2018, 'Final', 71, 92, 4, 2);
INSERT INTO public.games VALUES (98, 2018, 'Third Place', 72, 73, 2, 0);
INSERT INTO public.games VALUES (99, 2018, 'Semi-Final', 92, 73, 2, 1);
INSERT INTO public.games VALUES (100, 2018, 'Semi-Final', 71, 72, 1, 0);
INSERT INTO public.games VALUES (101, 2018, 'Quarter-Final', 92, 74, 3, 2);
INSERT INTO public.games VALUES (102, 2018, 'Quarter-Final', 73, 75, 2, 0);
INSERT INTO public.games VALUES (103, 2018, 'Quarter-Final', 72, 76, 2, 1);
INSERT INTO public.games VALUES (104, 2018, 'Quarter-Final', 71, 77, 2, 0);
INSERT INTO public.games VALUES (105, 2018, 'Eighth-Final', 73, 78, 2, 1);
INSERT INTO public.games VALUES (106, 2018, 'Eighth-Final', 75, 79, 1, 0);
INSERT INTO public.games VALUES (107, 2018, 'Eighth-Final', 72, 80, 3, 2);
INSERT INTO public.games VALUES (108, 2018, 'Eighth-Final', 76, 81, 2, 0);
INSERT INTO public.games VALUES (109, 2018, 'Eighth-Final', 92, 82, 2, 1);
INSERT INTO public.games VALUES (110, 2018, 'Eighth-Final', 74, 83, 2, 1);
INSERT INTO public.games VALUES (111, 2018, 'Eighth-Final', 77, 84, 2, 1);
INSERT INTO public.games VALUES (112, 2018, 'Eighth-Final', 71, 85, 4, 3);
INSERT INTO public.games VALUES (113, 2014, 'Final', 87, 85, 1, 0);
INSERT INTO public.games VALUES (114, 2014, 'Third Place', 86, 76, 3, 0);
INSERT INTO public.games VALUES (115, 2014, 'Semi-Final', 85, 86, 1, 0);
INSERT INTO public.games VALUES (116, 2014, 'Semi-Final', 87, 76, 7, 1);
INSERT INTO public.games VALUES (117, 2014, 'Quarter-Final', 86, 88, 1, 0);
INSERT INTO public.games VALUES (118, 2014, 'Quarter-Final', 85, 72, 1, 0);
INSERT INTO public.games VALUES (119, 2014, 'Quarter-Final', 76, 78, 2, 1);
INSERT INTO public.games VALUES (120, 2014, 'Quarter-Final', 87, 71, 1, 0);
INSERT INTO public.games VALUES (121, 2014, 'Eighth-Final', 76, 89, 2, 1);
INSERT INTO public.games VALUES (122, 2014, 'Eighth-Final', 78, 77, 2, 0);
INSERT INTO public.games VALUES (123, 2014, 'Eighth-Final', 71, 90, 2, 0);
INSERT INTO public.games VALUES (124, 2014, 'Eighth-Final', 87, 91, 2, 1);
INSERT INTO public.games VALUES (125, 2014, 'Eighth-Final', 86, 81, 2, 1);
INSERT INTO public.games VALUES (126, 2014, 'Eighth-Final', 88, 94, 2, 1);
INSERT INTO public.games VALUES (127, 2014, 'Eighth-Final', 85, 79, 1, 0);
INSERT INTO public.games VALUES (128, 2014, 'Eighth-Final', 72, 93, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 71);
INSERT INTO public.teams VALUES ('Belgium', 72);
INSERT INTO public.teams VALUES ('England', 73);
INSERT INTO public.teams VALUES ('Russia', 74);
INSERT INTO public.teams VALUES ('Sweden', 75);
INSERT INTO public.teams VALUES ('Brazil', 76);
INSERT INTO public.teams VALUES ('Uruguay', 77);
INSERT INTO public.teams VALUES ('Colombia', 78);
INSERT INTO public.teams VALUES ('Switzerland', 79);
INSERT INTO public.teams VALUES ('Japan', 80);
INSERT INTO public.teams VALUES ('Mexico', 81);
INSERT INTO public.teams VALUES ('Denmark', 82);
INSERT INTO public.teams VALUES ('Spain', 83);
INSERT INTO public.teams VALUES ('Portugal', 84);
INSERT INTO public.teams VALUES ('Argentina', 85);
INSERT INTO public.teams VALUES ('Netherlands', 86);
INSERT INTO public.teams VALUES ('Germany', 87);
INSERT INTO public.teams VALUES ('Costa Rica', 88);
INSERT INTO public.teams VALUES ('Chile', 89);
INSERT INTO public.teams VALUES ('Nigeria', 90);
INSERT INTO public.teams VALUES ('Algeria', 91);
INSERT INTO public.teams VALUES ('Croatia', 92);
INSERT INTO public.teams VALUES ('United States', 93);
INSERT INTO public.teams VALUES ('Greece', 94);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 128, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 101, true);


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
