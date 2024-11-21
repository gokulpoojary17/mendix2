CREATE TABLE "myfirstmodule$person_club" (
	"myfirstmodule$personid" BIGINT NOT NULL,
	"myfirstmodule$clubid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$personid","myfirstmodule$clubid"),
	CONSTRAINT "uniq_myfirstmodule$person_club_myfirstmodule$personid" UNIQUE ("myfirstmodule$personid"));
CREATE INDEX "idx_myfirstmodule$person_club_myfirstmodule$club_myfirstmodule$person" ON "myfirstmodule$person_club" ("myfirstmodule$clubid" ASC,"myfirstmodule$personid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('017fefaf-97dc-4ad5-91fe-090d9203cebd', 'MyFirstModule.person_club', 'myfirstmodule$person_club', 'b1f9aee1-6f61-4ffd-ac91-ca5c76af250d', 'a8db686c-1aea-45c1-bb7f-fa1260a22a42', 'myfirstmodule$personid', 'myfirstmodule$clubid', 'idx_myfirstmodule$person_club_myfirstmodule$club_myfirstmodule$person');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_myfirstmodule$person_club_myfirstmodule$personid', '017fefaf-97dc-4ad5-91fe-090d9203cebd', '05c206e2-648c-31d2-a67a-e1a6a8f8cc20');
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20241010 12:53:50';
