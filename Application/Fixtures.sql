

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


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body, created_at) VALUES ('a5ae5e6d-5df2-4fe0-8c32-c85876cddb52', 'Hallo', 'hallo Saina,
__wie__ get es dir?', '2021-02-20 16:17:55.566269+01');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


