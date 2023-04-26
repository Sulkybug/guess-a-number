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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    number_guesses integer NOT NULL,
    user_id integer
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(55)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 742, 17);
INSERT INTO public.games VALUES (2, 17, 17);
INSERT INTO public.games VALUES (3, 1000, 18);
INSERT INTO public.games VALUES (4, 509, 18);
INSERT INTO public.games VALUES (5, 396, 17);
INSERT INTO public.games VALUES (6, 293, 17);
INSERT INTO public.games VALUES (7, 269, 17);
INSERT INTO public.games VALUES (8, 686, 19);
INSERT INTO public.games VALUES (9, 280, 19);
INSERT INTO public.games VALUES (10, 4, 20);
INSERT INTO public.games VALUES (11, 894, 20);
INSERT INTO public.games VALUES (12, 526, 19);
INSERT INTO public.games VALUES (13, 257, 19);
INSERT INTO public.games VALUES (14, 777, 19);
INSERT INTO public.games VALUES (15, 9, 21);
INSERT INTO public.games VALUES (16, 650, 22);
INSERT INTO public.games VALUES (17, 303, 22);
INSERT INTO public.games VALUES (18, 93, 23);
INSERT INTO public.games VALUES (19, 537, 23);
INSERT INTO public.games VALUES (20, 361, 22);
INSERT INTO public.games VALUES (21, 163, 22);
INSERT INTO public.games VALUES (22, 669, 22);
INSERT INTO public.games VALUES (23, 327, 24);
INSERT INTO public.games VALUES (24, 94, 24);
INSERT INTO public.games VALUES (25, 267, 25);
INSERT INTO public.games VALUES (26, 27, 25);
INSERT INTO public.games VALUES (27, 730, 24);
INSERT INTO public.games VALUES (28, 624, 24);
INSERT INTO public.games VALUES (29, 698, 24);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Sulky');
INSERT INTO public.users VALUES (2, 'user_1682463664168');
INSERT INTO public.users VALUES (3, 'user_1682463664167');
INSERT INTO public.users VALUES (4, 'user_1682463698241');
INSERT INTO public.users VALUES (5, 'user_1682463698240');
INSERT INTO public.users VALUES (6, 'user_1682463977648');
INSERT INTO public.users VALUES (7, 'user_1682463977647');
INSERT INTO public.users VALUES (8, 'user_1682464188742');
INSERT INTO public.users VALUES (9, 'user_1682464188741');
INSERT INTO public.users VALUES (10, 'user_1682465793680');
INSERT INTO public.users VALUES (11, 'user_1682465793679');
INSERT INTO public.users VALUES (12, 'ulky');
INSERT INTO public.users VALUES (13, 'user_1682466061518');
INSERT INTO public.users VALUES (14, 'user_1682466061517');
INSERT INTO public.users VALUES (15, 'user_1682466903233');
INSERT INTO public.users VALUES (16, 'user_1682466903232');
INSERT INTO public.users VALUES (17, 'user_1682467311925');
INSERT INTO public.users VALUES (18, 'user_1682467311924');
INSERT INTO public.users VALUES (19, 'user_1682467475845');
INSERT INTO public.users VALUES (20, 'user_1682467475844');
INSERT INTO public.users VALUES (21, 'Maria');
INSERT INTO public.users VALUES (22, 'user_1682467768127');
INSERT INTO public.users VALUES (23, 'user_1682467768126');
INSERT INTO public.users VALUES (24, 'user_1682467917619');
INSERT INTO public.users VALUES (25, 'user_1682467917618');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 29, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 25, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

