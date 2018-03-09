ALTER TABLE consultations ADD COLUMN therapeute varchar(20), ADD COLUMN prix_cts integer, ADD COLUMN majoration_cts integer, ADD COLUMN paye_par varchar(20), ADD COLUMN paye_le date, ADD COLUMN MC_accident boolean;
UPDATE consultations SET majoration_cts = 0, prix_cts = 0, MC_accident = false;
CREATE TABLE tarifs (description text, prix_cts integer);
INSERT INTO tarifs VALUES ('entre 21 et 30 minutes', 10000), ('entre 31 et 40 minutes', 11000), ('entre 41 et 50 minutes', 12000);
CREATE TABLE therapeutes (therapeute varchar(20), entete text);

