DO
$$
BEGIN
   IF NOT EXISTS (SELECT FROM pg_catalog.pg_roles WHERE rolname = 'postgres') THEN
      CREATE ROLE postgres WITH LOGIN SUPERUSER;
   END IF;
  --  change this in your production!!!
   ALTER USER postgres WITH PASSWORD 'postgres_password';
END
$$;