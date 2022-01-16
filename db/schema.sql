
DROP TABLE IF EXISTS "balancers";
CREATE TABLE "balancers"
(
    "id"   SERIAL PRIMARY KEY,
    "name" VARCHAR(50) NOT NULL UNIQUE,
    "totalMachinesCount" integer,
    "usedMachines" jsonb
);

DROP TABLE IF EXISTS "machines";
CREATE TABLE "machines"
(
    "id"   SERIAL PRIMARY KEY,
    "name" VARCHAR(50) NOT NULL UNIQUE,
    "worked" boolean default false
);


INSERT INTO "balancers" ("name", "totalMachinesCount", "usedMachines") VALUES ('B1', 4, '[1, 3, 4]');
INSERT INTO "balancers" ("name", "totalMachinesCount", "usedMachines") VALUES ('B2', 2, '[1, 2]');
INSERT INTO "balancers" ("name", "totalMachinesCount", "usedMachines") VALUES ('B3', 2, '[1]');
INSERT INTO "balancers" ("name", "totalMachinesCount", "usedMachines") VALUES ('B4', 3, '[1, 3]');
INSERT INTO "balancers" ("name", "totalMachinesCount", "usedMachines") VALUES ('B5', 5, '[2]');


INSERT INTO "machines" ("name", "worked") VALUES ('M1', true);
INSERT INTO "machines" ("name", "worked") VALUES ('M2', true);
INSERT INTO "machines" ("name", "worked") VALUES ('M3', false);
INSERT INTO "machines" ("name", "worked") VALUES ('M4', false);
INSERT INTO "machines" ("name", "worked") VALUES ('M5', true);
