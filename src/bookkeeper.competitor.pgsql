DROP TABLE IF EXISTS bookkeeper.competitor CASCADE;

CREATE TABLE bookkeeper.competitor (
    competitor_id serial
    , competitor_name varchar(256)
);

CREATE INDEX ON bookkeeper.competitor ( competitor_name ) INCLUDE ( competitor_id );