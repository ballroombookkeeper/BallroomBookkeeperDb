DROP TABLE IF EXISTS bookkeeper.competition CASCADE;

CREATE TABLE bookkeeper.competition (
    competition_id serial
    , competition_name varchar(256)
    , competition_code varchar(16)
);

CREATE INDEX ON bookkeeper.competition ( competition_name ) INCLUDE ( competition_id, competition_code );
CREATE INDEX ON bookkeeper.competition ( competition_code ) INCLUDE ( competition_id, competition_name );