CREATE DATABASE fineract_tenants;
CREATE DATABASE fineract_default;

GRANT ALL PRIVILEGES ON DATABASE fineract_tenants TO brandluence_postgres_user;
GRANT ALL PRIVILEGES ON DATABASE fineract_default TO brandluence_postgres_user;

-- LOG IN TO 'fineract_tenants' database and run this
GRANT ALL ON SCHEMA public TO brandluence_postgres_user;

-- LOG IN TO 'fineract_default' database and run this
GRANT ALL ON SCHEMA public TO brandluence_postgres_user;