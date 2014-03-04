--
-- PostgreSQL database dump
--

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

--
-- Name: inspire_hy_blob; Type: SCHEMA; Schema: -; Owner: pdok_owner
--

CREATE SCHEMA inspire_hy_blob;


ALTER SCHEMA inspire_hy_blob OWNER TO pdok_owner;

SET search_path = inspire_hy_blob, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: feature_types; Type: TABLE; Schema: inspire_hy_blob; Owner: pdok_owner; Tablespace: 
--

CREATE TABLE feature_types (
    id smallint NOT NULL,
    qname text NOT NULL,
    bbox public.geometry,
    CONSTRAINT enforce_dims_bbox CHECK ((public.st_ndims(bbox) = 2)),
    CONSTRAINT enforce_srid_bbox CHECK ((public.st_srid(bbox) = (-1)))
);


ALTER TABLE inspire_hy_blob.feature_types OWNER TO pdok_owner;

--
-- Name: TABLE feature_types; Type: COMMENT; Schema: inspire_hy_blob; Owner: pdok_owner
--

COMMENT ON TABLE feature_types IS 'Ids and bboxes of concrete feature types';


--
-- Name: gml_objects; Type: TABLE; Schema: inspire_hy_blob; Owner: pdok_owner; Tablespace: 
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


ALTER TABLE inspire_hy_blob.gml_objects OWNER TO pdok_owner;

--
-- Name: TABLE gml_objects; Type: COMMENT; Schema: inspire_hy_blob; Owner: pdok_owner
--

COMMENT ON TABLE gml_objects IS 'All objects (features and geometries)';


--
-- Name: gml_objects_id_seq; Type: SEQUENCE; Schema: inspire_hy_blob; Owner: pdok_owner
--

CREATE SEQUENCE gml_objects_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE inspire_hy_blob.gml_objects_id_seq OWNER TO pdok_owner;

--
-- Name: gml_objects_id_seq; Type: SEQUENCE OWNED BY; Schema: inspire_hy_blob; Owner: pdok_owner
--

ALTER SEQUENCE gml_objects_id_seq OWNED BY gml_objects.id;


--
-- Name: gml_objects_id_seq; Type: SEQUENCE SET; Schema: inspire_hy_blob; Owner: pdok_owner
--

SELECT pg_catalog.setval('gml_objects_id_seq', 476968, true);


--
-- Name: id; Type: DEFAULT; Schema: inspire_hy_blob; Owner: pdok_owner
--

ALTER TABLE gml_objects ALTER COLUMN id SET DEFAULT nextval('gml_objects_id_seq'::regclass);


--
-- Data for Name: feature_types; Type: TABLE DATA; Schema: inspire_hy_blob; Owner: pdok_owner
--

INSERT INTO feature_types VALUES (0, '{http://www.opengis.net/gml/3.2}DirectedObservation', NULL);
INSERT INTO feature_types VALUES (1, '{http://www.opengis.net/gml/3.2}DirectedObservationAtDistance', NULL);
INSERT INTO feature_types VALUES (2, '{http://www.opengis.net/gml/3.2}DynamicFeature', NULL);
INSERT INTO feature_types VALUES (3, '{http://www.opengis.net/gml/3.2}DynamicFeatureCollection', NULL);
INSERT INTO feature_types VALUES (4, '{http://www.opengis.net/gml/3.2}FeatureCollection', NULL);
INSERT INTO feature_types VALUES (5, '{http://www.opengis.net/gml/3.2}GridCoverage', NULL);
INSERT INTO feature_types VALUES (6, '{http://www.opengis.net/gml/3.2}MultiCurveCoverage', NULL);
INSERT INTO feature_types VALUES (7, '{http://www.opengis.net/gml/3.2}MultiPointCoverage', NULL);
INSERT INTO feature_types VALUES (8, '{http://www.opengis.net/gml/3.2}MultiSolidCoverage', NULL);
INSERT INTO feature_types VALUES (9, '{http://www.opengis.net/gml/3.2}MultiSurfaceCoverage', NULL);
INSERT INTO feature_types VALUES (10, '{http://www.opengis.net/gml/3.2}Observation', NULL);
INSERT INTO feature_types VALUES (11, '{http://www.opengis.net/gml/3.2}RectifiedGridCoverage', NULL);
INSERT INTO feature_types VALUES (12, '{urn:x-inspire:specification:gmlas:Addresses:3.0}Address', NULL);
INSERT INTO feature_types VALUES (13, '{urn:x-inspire:specification:gmlas:Addresses:3.0}AddressAreaName', NULL);
INSERT INTO feature_types VALUES (14, '{urn:x-inspire:specification:gmlas:Addresses:3.0}AdminUnitName', NULL);
INSERT INTO feature_types VALUES (15, '{urn:x-inspire:specification:gmlas:Addresses:3.0}PostalDescriptor', NULL);
INSERT INTO feature_types VALUES (16, '{urn:x-inspire:specification:gmlas:Addresses:3.0}ThoroughfareName', NULL);
INSERT INTO feature_types VALUES (17, '{urn:x-inspire:specification:gmlas:AdministrativeUnits:3.0}AdministrativeBoundary', NULL);
INSERT INTO feature_types VALUES (18, '{urn:x-inspire:specification:gmlas:AdministrativeUnits:3.0}AdministrativeUnit', NULL);
INSERT INTO feature_types VALUES (19, '{urn:x-inspire:specification:gmlas:AdministrativeUnits:3.0}Condominium', NULL);
INSERT INTO feature_types VALUES (20, '{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}AerodromeArea', NULL);
INSERT INTO feature_types VALUES (21, '{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}AerodromeCategory', NULL);
INSERT INTO feature_types VALUES (22, '{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}AerodromeNode', NULL);
INSERT INTO feature_types VALUES (23, '{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}AerodromeType', NULL);
INSERT INTO feature_types VALUES (24, '{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}AirLinkSequence', NULL);
INSERT INTO feature_types VALUES (25, '{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}AirRoute', NULL);
INSERT INTO feature_types VALUES (26, '{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}AirRouteLink', NULL);
INSERT INTO feature_types VALUES (27, '{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}AirspaceArea', NULL);
INSERT INTO feature_types VALUES (28, '{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}ApronArea', NULL);
INSERT INTO feature_types VALUES (29, '{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}ConditionOfAirFacility', NULL);
INSERT INTO feature_types VALUES (30, '{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}DesignatedPoint', NULL);
INSERT INTO feature_types VALUES (31, '{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}ElementLength', NULL);
INSERT INTO feature_types VALUES (32, '{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}ElementWidth', NULL);
INSERT INTO feature_types VALUES (33, '{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}FieldElevation', NULL);
INSERT INTO feature_types VALUES (34, '{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}InstrumentApproachProcedure', NULL);
INSERT INTO feature_types VALUES (35, '{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}LowerAltitudeLimit', NULL);
INSERT INTO feature_types VALUES (36, '{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}Navaid', NULL);
INSERT INTO feature_types VALUES (37, '{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}ProcedureLink', NULL);
INSERT INTO feature_types VALUES (38, '{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}RunwayArea', NULL);
INSERT INTO feature_types VALUES (39, '{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}RunwayCentrelinePoint', NULL);
INSERT INTO feature_types VALUES (40, '{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}StandardInstrumentArrival', NULL);
INSERT INTO feature_types VALUES (41, '{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}StandardInstrumentDeparture', NULL);
INSERT INTO feature_types VALUES (42, '{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}SurfaceComposition', NULL);
INSERT INTO feature_types VALUES (43, '{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}TaxiwayArea', NULL);
INSERT INTO feature_types VALUES (44, '{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}TouchDownLiftOff', NULL);
INSERT INTO feature_types VALUES (45, '{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}UpperAltitudeLimit', NULL);
INSERT INTO feature_types VALUES (46, '{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}UseRestriction', NULL);
INSERT INTO feature_types VALUES (47, '{urn:x-inspire:specification:gmlas:BaseTypes:3.2}SpatialDataSet', NULL);
INSERT INTO feature_types VALUES (48, '{urn:x-inspire:specification:gmlas:Buildings:0.0}Building', NULL);
INSERT INTO feature_types VALUES (49, '{urn:x-inspire:specification:gmlas:Buildings:0.0}ControlTower', NULL);
INSERT INTO feature_types VALUES (50, '{urn:x-inspire:specification:gmlas:CadastralParcels:3.0}BasicPropertyUnit', NULL);
INSERT INTO feature_types VALUES (51, '{urn:x-inspire:specification:gmlas:CadastralParcels:3.0}CadastralBoundary', NULL);
INSERT INTO feature_types VALUES (52, '{urn:x-inspire:specification:gmlas:CadastralParcels:3.0}CadastralParcel', NULL);
INSERT INTO feature_types VALUES (53, '{urn:x-inspire:specification:gmlas:CadastralParcels:3.0}CadastralZoning', NULL);
INSERT INTO feature_types VALUES (54, '{urn:x-inspire:specification:gmlas:CommonTransportElements:3.0}AccessRestriction', NULL);
INSERT INTO feature_types VALUES (55, '{urn:x-inspire:specification:gmlas:CommonTransportElements:3.0}ConditionOfFacility', NULL);
INSERT INTO feature_types VALUES (56, '{urn:x-inspire:specification:gmlas:CommonTransportElements:3.0}MaintenanceAuthority', NULL);
INSERT INTO feature_types VALUES (57, '{urn:x-inspire:specification:gmlas:CommonTransportElements:3.0}MarkerPost', NULL);
INSERT INTO feature_types VALUES (58, '{urn:x-inspire:specification:gmlas:CommonTransportElements:3.0}OwnerAuthority', NULL);
INSERT INTO feature_types VALUES (59, '{urn:x-inspire:specification:gmlas:CommonTransportElements:3.0}RestrictionForVehicles', NULL);
INSERT INTO feature_types VALUES (60, '{urn:x-inspire:specification:gmlas:CommonTransportElements:3.0}TrafficFlowDirection', NULL);
INSERT INTO feature_types VALUES (61, '{urn:x-inspire:specification:gmlas:CommonTransportElements:3.0}TransportNetwork', NULL);
INSERT INTO feature_types VALUES (62, '{urn:x-inspire:specification:gmlas:CommonTransportElements:3.0}VerticalPosition', NULL);
INSERT INTO feature_types VALUES (63, '{urn:x-inspire:specification:gmlas:GeographicalNames:3.0}NamedPlace', NULL);
INSERT INTO feature_types VALUES (64, '{urn:x-inspire:specification:gmlas:Network:3.2}CrossReference', NULL);
INSERT INTO feature_types VALUES (65, '{urn:x-inspire:specification:gmlas:Network:3.2}GradeSeparatedCrossing', NULL);
INSERT INTO feature_types VALUES (66, '{urn:x-inspire:specification:gmlas:Network:3.2}Network', NULL);
INSERT INTO feature_types VALUES (67, '{urn:x-inspire:specification:gmlas:Network:3.2}NetworkConnection', NULL);
INSERT INTO feature_types VALUES (68, '{urn:x-inspire:specification:gmlas:StatisticalUnits:0.0}NUTSRegion', NULL);


--
-- Data for Name: gml_objects; Type: TABLE DATA; Schema: inspire_hy_blob; Owner: pdok_owner
--



--
-- Name: feature_types_pkey; Type: CONSTRAINT; Schema: inspire_hy_blob; Owner: pdok_owner; Tablespace: 
--

ALTER TABLE ONLY feature_types
    ADD CONSTRAINT feature_types_pkey PRIMARY KEY (id);


--
-- Name: gml_objects_gml_id_key; Type: CONSTRAINT; Schema: inspire_hy_blob; Owner: pdok_owner; Tablespace: 
--

ALTER TABLE ONLY gml_objects
    ADD CONSTRAINT gml_objects_gml_id_key UNIQUE (gml_id);


--
-- Name: gml_objects_pkey; Type: CONSTRAINT; Schema: inspire_hy_blob; Owner: pdok_owner; Tablespace: 
--

ALTER TABLE ONLY gml_objects
    ADD CONSTRAINT gml_objects_pkey PRIMARY KEY (id);


--
-- Name: gml_objects_sidx; Type: INDEX; Schema: inspire_hy_blob; Owner: pdok_owner; Tablespace: 
--

CREATE INDEX gml_objects_sidx ON gml_objects USING gist (gml_bounded_by);


--
-- Name: gml_objects_ft_type_fkey; Type: FK CONSTRAINT; Schema: inspire_hy_blob; Owner: pdok_owner
--

ALTER TABLE ONLY gml_objects
    ADD CONSTRAINT gml_objects_ft_type_fkey FOREIGN KEY (ft_type) REFERENCES feature_types(id);


--
-- PostgreSQL database dump complete
--
