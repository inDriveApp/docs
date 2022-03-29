-- DROP SCHEMA public;

CREATE SCHEMA public AUTHORIZATION "inDrive";
-- public."user" definition

-- Drop table

-- DROP TABLE public."user";

CREATE TABLE public."user" (
	id uuid NOT NULL,
	updated timestamp NULL,
	created timestamp NULL DEFAULT now(),
	login varchar(32) NOT NULL,
	"name" varchar(100) NOT NULL,
	"password" varchar(100) NOT NULL,
	status int4 NULL DEFAULT 0,
	CONSTRAINT user_pkey PRIMARY KEY (id)
);
CREATE INDEX ix_user_id ON public."user" USING btree (id);

