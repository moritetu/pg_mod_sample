-- /* contrib/pd_mod_sample/pg_mod_sample--1.0.sql */

\echo Use "CREATE EXTENSION pg_mod_sample" to load this file. \quit

--
-- pg_mod_sample(integer)
--
DROP FUNCTION IF EXISTS pg_mod_sample(integer);
CREATE FUNCTION pg_mod_sample(integer)
RETURNS integer
AS 'MODULE_PATHNAME', 'pg_mod_sample'
LANGUAGE C STRICT;
