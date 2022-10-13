-- SQLite
-- CREATE TABLE donations(
--   id INTEGER PRIMARY KEY, 
--   amount INTEGER,
--   date INTEGER
-- FOREIGN KEY will create a foreign key constraint 
-- );

-- CREATE TABLE organizations(
--   id INTEGER PRIMARY KEY, 
--   address STRING,
--   name STRING 
-- );

-- ALTER TABLE donations ADD FOREIGN KEY (organization_id) REFERENCES organizations(id)

INSERT INTO organizations(name, address) 
VALUES("ASPCA", "1111 great org dr");
INSERT INTO organizations(name, address) 
VALUES("Red Cross", "222 white ln");
INSERT INTO organizations(name, address) 
VALUES("ACLU", "333 Black Oak dr");


INSERT INTO donations(amount, date, organization_id) 
VALUES(900, 103022, "Red Cross");
INSERT INTO donations(amount, date, organization_id) 
VALUES(500, 102522, "ACLU");
INSERT INTO donations(amount, date, organization_id) 
VALUES(1000, 102022, "ASPCA");


UPDATE donations SET organization_id = 1
WHERE organization_id = "ASPCA";

SELECT donations.amt, organizations.name AS org
FROM donations 
JOIN organizations ON donations.organization_id = org.id;