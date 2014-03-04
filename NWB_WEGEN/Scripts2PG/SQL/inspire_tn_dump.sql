--
-- PostgreSQL database dump
--

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

--
-- Name: inspire_tn_blob; Type: SCHEMA; Schema: -; Owner: pdok_owner
--

CREATE SCHEMA inspire_tn_blob;


ALTER SCHEMA inspire_tn_blob OWNER TO pdok_owner;

SET search_path = inspire_tn_blob, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: feature_types; Type: TABLE; Schema: inspire_tn_blob; Owner: pdok_owner; Tablespace: 
--

CREATE TABLE feature_types (
    id smallint NOT NULL,
    qname text NOT NULL,
    bbox public.geometry,
    CONSTRAINT enforce_dims_bbox CHECK ((public.st_ndims(bbox) = 2)),
    CONSTRAINT enforce_srid_bbox CHECK ((public.st_srid(bbox) = (-1)))
);


ALTER TABLE inspire_tn_blob.feature_types OWNER TO pdok_owner;

--
-- Name: TABLE feature_types; Type: COMMENT; Schema: inspire_tn_blob; Owner: pdok_owner
--

COMMENT ON TABLE feature_types IS 'Ids and bboxes of concrete feature types';


--
-- Name: gml_objects; Type: TABLE; Schema: inspire_tn_blob; Owner: pdok_owner; Tablespace: 
--

CREATE TABLE gml_objects (
    id integer NOT NULL,
    gml_id text NOT NULL,
    ft_type smallint,
    binary_object bytea,
    gml_bounded_by public.geometry,
    CONSTRAINT enforce_dims_gml_bounded_by CHECK ((public.st_ndims(gml_bounded_by) = 2)),
    CONSTRAINT enforce_srid_gml_bounded_by CHECK ((public.st_srid(gml_bounded_by) = (-1))),
    CONSTRAINT gml_objects_geochk CHECK (public.isvalid(gml_bounded_by))
);


ALTER TABLE inspire_tn_blob.gml_objects OWNER TO pdok_owner;

--
-- Name: TABLE gml_objects; Type: COMMENT; Schema: inspire_tn_blob; Owner: pdok_owner
--

COMMENT ON TABLE gml_objects IS 'All objects (features and geometries)';


--
-- Name: gml_objects_id_seq; Type: SEQUENCE; Schema: inspire_tn_blob; Owner: pdok_owner
--

CREATE SEQUENCE gml_objects_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE inspire_tn_blob.gml_objects_id_seq OWNER TO pdok_owner;

--
-- Name: gml_objects_id_seq; Type: SEQUENCE OWNED BY; Schema: inspire_tn_blob; Owner: pdok_owner
--

ALTER SEQUENCE gml_objects_id_seq OWNED BY gml_objects.id;


--
-- Name: gml_objects_id_seq; Type: SEQUENCE SET; Schema: inspire_tn_blob; Owner: pdok_owner
--

SELECT pg_catalog.setval('gml_objects_id_seq', 548525, true);


--
-- Name: id; Type: DEFAULT; Schema: inspire_tn_blob; Owner: pdok_owner
--

ALTER TABLE gml_objects ALTER COLUMN id SET DEFAULT nextval('gml_objects_id_seq'::regclass);


--
-- Data for Name: feature_types; Type: TABLE DATA; Schema: inspire_tn_blob; Owner: pdok_owner
--



--
-- Name: feature_types_pkey; Type: CONSTRAINT; Schema: inspire_tn_blob; Owner: pdok_owner; Tablespace: 
--

ALTER TABLE ONLY feature_types
    ADD CONSTRAINT feature_types_pkey PRIMARY KEY (id);


--
-- Name: gml_objects_gml_id_key; Type: CONSTRAINT; Schema: inspire_tn_blob; Owner: pdok_owner; Tablespace: 
--

ALTER TABLE ONLY gml_objects
    ADD CONSTRAINT gml_objects_gml_id_key UNIQUE (gml_id);


--
-- Name: gml_objects_pkey; Type: CONSTRAINT; Schema: inspire_tn_blob; Owner: pdok_owner; Tablespace: 
--

ALTER TABLE ONLY gml_objects
    ADD CONSTRAINT gml_objects_pkey PRIMARY KEY (id);


--
-- Name: gml_objects_sidx; Type: INDEX; Schema: inspire_tn_blob; Owner: pdok_owner; Tablespace: 
--

CREATE INDEX gml_objects_sidx ON gml_objects USING gist (gml_bounded_by);


--
-- Name: gml_objects_ft_type_fkey; Type: FK CONSTRAINT; Schema: inspire_tn_blob; Owner: pdok_owner
--

ALTER TABLE ONLY gml_objects
    ADD CONSTRAINT gml_objects_ft_type_fkey FOREIGN KEY (ft_type) REFERENCES feature_types(id);


--
-- PostgreSQL database dump complete
--

