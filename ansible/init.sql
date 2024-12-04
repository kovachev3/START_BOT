CREATE TABLE IF NOT EXISTS phonenums (
  id SERIAL PRIMARY KEY,
  phonenum VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS emails (
  id SERIAL PRIMARY KEY,
  email VARCHAR(100) NOT NULL
);

INSERT INTO phonenums(phonenum) VALUES ('+70000000000');
INSERT INTO emails(email) VALUES ('test@test.test');

DO
$$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_catalog.pg_roles WHERE rolname ='postgres1') THEN
    CREATE USER postgres1 WITH REPLICATION ENCRYPTED PASSWORD 'Qq12345';
  END IF;
END
$$;

