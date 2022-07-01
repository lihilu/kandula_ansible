-- creating schema: kandula
DROP SCHEMA IF EXISTS kanduladb CASCADE;

CREATE SCHEMA IF NOT EXISTS kanduladb AUTHORIZATION adminkandula;
 -- creating table instance scheduler with job id, instance id, and shutdown time
DROP TABLE IF EXISTS kanduladb.instances_scheduler CASCADE;

CREATE TABLE IF NOT EXISTS kanduladb.instances_scheduler (
    job_id SERIAL NOT NULL PRIMARY KEY,
    instance_id character varying(20) COLLATE pg_catalog."default" NOT NULL,
    shutdown_time integer NOT NULL
);


 ALTER TABLE IF EXISTS kanduladb.instances_scheduler
 OWNER to adminkandula;

-- create table job log with log id, job id, timestamp and action
DROP TABLE IF EXISTS kanduladb.job_log;

CREATE TABLE IF NOT EXISTS kanduladb.job_log
	(log_id SERIAL NOT NULL PRIMARY KEY,
     job_id integer NOT NULL,
     "time" timestamp NOT NULL,
     action character varying(20) COLLATE pg_catalog."default" NOT NULL);

CREATE USER kandulaweb WITH PASSWORD 'kandulaweb';
