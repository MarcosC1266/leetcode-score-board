/*
	A DB, FOR WHATTT????. I Don't now how to use the database right now. But I think it will be helpfull.
*/

-- Role tables, to control how can modify data and do some call, by default it will be ADMIN and USER
CREATE TABLE IF NOT EXISTS "role"(
	"roleID" SERIAL PRIMARY KEY,
	role VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS "user"(
	"userID" uuid DEFAULT gen_random_uuid() PRIMARY KEY,
	"roleID" INTEGER NOT NULL,
	name VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL UNIQUE,
	password VARCHAR(255) NOT NULL,
	"registrationDate" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	"lastSesion" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY ("roleID") REFERENCES "role"("roleID") ON DELETE RESTRICT
);

INSERT INTO "role" (role) VALUES
	('ADMIN'),
	('USER');
