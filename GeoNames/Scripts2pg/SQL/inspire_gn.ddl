DROP SCHEMA IF EXISTS inspire_gn CASCADE;
CREATE SCHEMA inspire_gn AUTHORIZATION postgres;

CREATE TABLE inspire_gn.feature_types (id smallint PRIMARY KEY, qname text NOT NULL);
COMMENT ON TABLE inspire_gn.feature_types IS 'Ids and bboxes of concrete feature types';
SELECT ADDGEOMETRYCOLUMN('inspire_gn', 'feature_types','bbox','-1','GEOMETRY',2);
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (0,'{http://www.opengis.net/gml/3.2}DirectedObservation');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (1,'{http://www.opengis.net/gml/3.2}DirectedObservationAtDistance');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (2,'{http://www.opengis.net/gml/3.2}DynamicFeature');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (3,'{http://www.opengis.net/gml/3.2}DynamicFeatureCollection');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (4,'{http://www.opengis.net/gml/3.2}FeatureCollection');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (5,'{http://www.opengis.net/gml/3.2}GridCoverage');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (6,'{http://www.opengis.net/gml/3.2}MultiCurveCoverage');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (7,'{http://www.opengis.net/gml/3.2}MultiPointCoverage');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (8,'{http://www.opengis.net/gml/3.2}MultiSolidCoverage');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (9,'{http://www.opengis.net/gml/3.2}MultiSurfaceCoverage');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (10,'{http://www.opengis.net/gml/3.2}Observation');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (11,'{http://www.opengis.net/gml/3.2}RectifiedGridCoverage');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (12,'{urn:x-inspire:specification:gmlas:Addresses:3.0}Address');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (13,'{urn:x-inspire:specification:gmlas:Addresses:3.0}AddressAreaName');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (14,'{urn:x-inspire:specification:gmlas:Addresses:3.0}AdminUnitName');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (15,'{urn:x-inspire:specification:gmlas:Addresses:3.0}PostalDescriptor');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (16,'{urn:x-inspire:specification:gmlas:Addresses:3.0}ThoroughfareName');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (17,'{urn:x-inspire:specification:gmlas:AdministrativeUnits:3.0}AdministrativeBoundary');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (18,'{urn:x-inspire:specification:gmlas:AdministrativeUnits:3.0}AdministrativeUnit');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (19,'{urn:x-inspire:specification:gmlas:AdministrativeUnits:3.0}Condominium');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (20,'{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}AerodromeArea');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (21,'{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}AerodromeCategory');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (22,'{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}AerodromeNode');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (23,'{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}AerodromeType');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (24,'{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}AirLinkSequence');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (25,'{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}AirRoute');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (26,'{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}AirRouteLink');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (27,'{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}AirspaceArea');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (28,'{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}ApronArea');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (29,'{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}ConditionOfAirFacility');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (30,'{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}DesignatedPoint');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (31,'{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}ElementLength');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (32,'{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}ElementWidth');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (33,'{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}FieldElevation');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (34,'{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}InstrumentApproachProcedure');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (35,'{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}LowerAltitudeLimit');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (36,'{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}Navaid');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (37,'{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}ProcedureLink');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (38,'{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}RunwayArea');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (39,'{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}RunwayCentrelinePoint');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (40,'{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}StandardInstrumentArrival');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (41,'{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}StandardInstrumentDeparture');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (42,'{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}SurfaceComposition');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (43,'{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}TaxiwayArea');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (44,'{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}TouchDownLiftOff');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (45,'{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}UpperAltitudeLimit');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (46,'{urn:x-inspire:specification:gmlas:AirTransportNetwork:3.0}UseRestriction');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (47,'{urn:x-inspire:specification:gmlas:BaseTypes:3.2}SpatialDataSet');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (48,'{urn:x-inspire:specification:gmlas:Buildings:0.0}Building');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (49,'{urn:x-inspire:specification:gmlas:Buildings:0.0}ControlTower');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (50,'{urn:x-inspire:specification:gmlas:CadastralParcels:3.0}BasicPropertyUnit');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (51,'{urn:x-inspire:specification:gmlas:CadastralParcels:3.0}CadastralBoundary');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (52,'{urn:x-inspire:specification:gmlas:CadastralParcels:3.0}CadastralParcel');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (53,'{urn:x-inspire:specification:gmlas:CadastralParcels:3.0}CadastralZoning');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (54,'{urn:x-inspire:specification:gmlas:CommonTransportElements:3.0}AccessRestriction');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (55,'{urn:x-inspire:specification:gmlas:CommonTransportElements:3.0}ConditionOfFacility');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (56,'{urn:x-inspire:specification:gmlas:CommonTransportElements:3.0}MaintenanceAuthority');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (57,'{urn:x-inspire:specification:gmlas:CommonTransportElements:3.0}MarkerPost');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (58,'{urn:x-inspire:specification:gmlas:CommonTransportElements:3.0}OwnerAuthority');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (59,'{urn:x-inspire:specification:gmlas:CommonTransportElements:3.0}RestrictionForVehicles');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (60,'{urn:x-inspire:specification:gmlas:CommonTransportElements:3.0}TrafficFlowDirection');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (61,'{urn:x-inspire:specification:gmlas:CommonTransportElements:3.0}TransportNetwork');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (62,'{urn:x-inspire:specification:gmlas:CommonTransportElements:3.0}VerticalPosition');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (63,'{urn:x-inspire:specification:gmlas:GeographicalNames:3.0}NamedPlace');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (64,'{urn:x-inspire:specification:gmlas:Network:3.2}CrossReference');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (65,'{urn:x-inspire:specification:gmlas:Network:3.2}GradeSeparatedCrossing');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (66,'{urn:x-inspire:specification:gmlas:Network:3.2}Network');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (67,'{urn:x-inspire:specification:gmlas:Network:3.2}NetworkConnection');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (68,'{urn:x-inspire:specification:gmlas:StatisticalUnits:0.0}NUTSRegion');
INSERT INTO inspire_gn.feature_types  (id,qname) VALUES (99,'{urn:x-inspire:specification:gmlas:ProtectedSites:3.0}ProtectedSite');
CREATE TABLE inspire_gn.gml_objects (id serial PRIMARY KEY, gml_id text UNIQUE NOT NULL, ft_type smallint REFERENCES inspire_gn.feature_types , binary_object bytea);
COMMENT ON TABLE inspire_gn.gml_objects IS 'All objects (features and geometries)';
SELECT ADDGEOMETRYCOLUMN('inspire_gn', 'gml_objects','gml_bounded_by','-1','GEOMETRY',2);
ALTER TABLE inspire_gn.gml_objects ADD CONSTRAINT gml_objects_geochk CHECK (isvalid(gml_bounded_by));
CREATE INDEX gml_objects_sidx ON inspire_gn.gml_objects  USING GIST (gml_bounded_by GIST_GEOMETRY_OPS);
