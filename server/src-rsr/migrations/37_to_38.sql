ALTER TABLE hdb_catalog.event_log ALTER COLUMN locked DROP DEFAULT;
ALTER TABLE hdb_catalog.event_log ALTER COLUMN locked DROP NOT NULL;
ALTER TABLE hdb_catalog.event_log ALTER COLUMN locked TYPE TIMESTAMPTZ USING CASE WHEN locked THEN NOW() ELSE NULL END;