-- Future questions include age of borrowers and years born, as well as occupation. So we will index the clientDOB
CREATE INDEX index_client_dob ON Client(clientDOB);
 CREATE INDEX index_client_occ ON Client(Occupation);