

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


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, post_id, author, body, created_at) VALUES ('8ecd2f3c-49d5-4234-8199-a362e94fc08e', 'a5ae5e6d-5df2-4fe0-8c32-c85876cddb52', 'Victor', 'hello this is my comment numnber 1', '2021-02-21 08:45:47.468046+01');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


