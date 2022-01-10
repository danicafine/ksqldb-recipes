SET 'auto.offset.reset' = 'earliest';

CREATE SOURCE TABLE users (
  id INT PRIMARY KEY,
  first_name VARCHAR,
  last_name VARCHAR,
  phone BIGINT,
  level VARCHAR
) WITH (
    KAFKA_TOPIC='users', FORMAT='JSON', PARTITIONS=6
);

CREATE SOURCE TABLE merchant_locations(
  id INT PRIMARY KEY,
  description VARCHAR,
  latitude DECIMAL(10, 7),
  longitude DECIMAL(10, 7)
)
WITH (
  KAFKA_TOPIC='merchant_locations', FORMAT='JSON', PARTITIONS=6
);

CREATE STREAM user_locations (
  userid INT,
  latitude DECIMAL(10,7),
  longitude DECIMAL(10,7)
)
WITH (
  KAFKA_TOPIC='user_locations', FORMAT='JSON', PARTITIONS=6
);

