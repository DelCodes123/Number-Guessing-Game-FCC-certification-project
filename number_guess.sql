--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    user_id integer NOT NULL,
    guesses integer NOT NULL
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
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 2, 421);
INSERT INTO public.games VALUES (2, 3, 205);
INSERT INTO public.games VALUES (3, 2, 700);
INSERT INTO public.games VALUES (4, 2, 378);
INSERT INTO public.games VALUES (5, 2, 112);
INSERT INTO public.games VALUES (6, 4, 852);
INSERT INTO public.games VALUES (7, 5, 636);
INSERT INTO public.games VALUES (8, 4, 742);
INSERT INTO public.games VALUES (9, 4, 122);
INSERT INTO public.games VALUES (10, 4, 376);
INSERT INTO public.games VALUES (11, 1, 15);
INSERT INTO public.games VALUES (12, 6, 554);
INSERT INTO public.games VALUES (13, 7, 899);
INSERT INTO public.games VALUES (14, 6, 951);
INSERT INTO public.games VALUES (15, 6, 509);
INSERT INTO public.games VALUES (16, 6, 308);
INSERT INTO public.games VALUES (17, 1, 13);
INSERT INTO public.games VALUES (18, 8, 684);
INSERT INTO public.games VALUES (19, 9, 455);
INSERT INTO public.games VALUES (20, 8, 248);
INSERT INTO public.games VALUES (21, 8, 584);
INSERT INTO public.games VALUES (22, 8, 413);
INSERT INTO public.games VALUES (23, 10, 8);
INSERT INTO public.games VALUES (24, 11, 948);
INSERT INTO public.games VALUES (25, 11, 645);
INSERT INTO public.games VALUES (26, 12, 617);
INSERT INTO public.games VALUES (27, 12, 361);
INSERT INTO public.games VALUES (28, 11, 458);
INSERT INTO public.games VALUES (29, 11, 318);
INSERT INTO public.games VALUES (30, 11, 879);
INSERT INTO public.games VALUES (31, 13, 742);
INSERT INTO public.games VALUES (32, 13, 518);
INSERT INTO public.games VALUES (33, 14, 744);
INSERT INTO public.games VALUES (34, 14, 985);
INSERT INTO public.games VALUES (35, 13, 386);
INSERT INTO public.games VALUES (36, 13, 928);
INSERT INTO public.games VALUES (37, 13, 360);
INSERT INTO public.games VALUES (38, 15, 710);
INSERT INTO public.games VALUES (39, 15, 223);
INSERT INTO public.games VALUES (40, 16, 432);
INSERT INTO public.games VALUES (41, 16, 744);
INSERT INTO public.games VALUES (42, 15, 387);
INSERT INTO public.games VALUES (43, 15, 164);
INSERT INTO public.games VALUES (44, 15, 700);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Del');
INSERT INTO public.users VALUES (2, 'user_1792152778472');
INSERT INTO public.users VALUES (3, 'user_1792152778471');
INSERT INTO public.users VALUES (4, 'user_1792152797607');
INSERT INTO public.users VALUES (5, 'user_1792152797606');
INSERT INTO public.users VALUES (6, 'user_1792152931536');
INSERT INTO public.users VALUES (7, 'user_1792152931535');
INSERT INTO public.users VALUES (8, 'user_1792153023043');
INSERT INTO public.users VALUES (9, 'user_1792153023042');
INSERT INTO public.users VALUES (10, 'NewPlayer');
INSERT INTO public.users VALUES (11, 'user_1792153621766');
INSERT INTO public.users VALUES (12, 'user_1792153621765');
INSERT INTO public.users VALUES (13, 'user_1792153920785');
INSERT INTO public.users VALUES (14, 'user_1792153920784');
INSERT INTO public.users VALUES (15, 'user_1792154058130');
INSERT INTO public.users VALUES (16, 'user_1792154058129');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 44, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 16, true);


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

