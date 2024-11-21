ALTER TABLE "system$image" ADD "submetaobjectname" VARCHAR_IGNORECASE(255) NULL;
UPDATE "system$image" SET "submetaobjectname" = 'System.Image';
CREATE INDEX "idx_system$image_submetaobjectname_asc" ON "system$image" ("submetaobjectname" ASC,"id" ASC);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('272f49fe-6a64-3ede-a32d-344a34e57b9f', '37827192-315d-4ab6-85b8-f626f866ea76', 'submetaobjectname', 'submetaobjectname', 30, 255, 'System.Image', false);
INSERT INTO "mendixsystem$index" ("id", "table_id", "index_name") VALUES ('00a9ec1c-4fab-368f-83d4-ffa8ff501c8c', '37827192-315d-4ab6-85b8-f626f866ea76', 'idx_system$image_submetaobjectname_asc');
INSERT INTO "mendixsystem$index_column" ("index_id", "column_id", "sort_order", "ordinal") VALUES ('00a9ec1c-4fab-368f-83d4-ffa8ff501c8c', '272f49fe-6a64-3ede-a32d-344a34e57b9f', false, 0);
CREATE TABLE "myfirstmodule$profileimage" (
	"id" BIGINT NOT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "superentity_id", "remote", "remote_primary_key") VALUES ('aba65a75-7ac6-41cc-9e8e-f5ede7f7ff0c', 'MyFirstModule.profileimage', 'myfirstmodule$profileimage', '37827192-315d-4ab6-85b8-f626f866ea76', false, false);
CREATE TABLE "myfirstmodule$person_profileimage" (
	"myfirstmodule$personid" BIGINT NOT NULL,
	"myfirstmodule$profileimageid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$personid","myfirstmodule$profileimageid"),
	CONSTRAINT "uniq_myfirstmodule$person_profileimage_myfirstmodule$profileimageid" UNIQUE ("myfirstmodule$profileimageid"),
	CONSTRAINT "uniq_myfirstmodule$person_profileimage_myfirstmodule$personid" UNIQUE ("myfirstmodule$personid"));
CREATE INDEX "idx_myfirstmodule$person_profileimage_myfirstmodule$profileimage_myfirstmodule$person" ON "myfirstmodule$person_profileimage" ("myfirstmodule$profileimageid" ASC,"myfirstmodule$personid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('f313ef2e-b997-4bfa-8ace-5de04682de3c', 'MyFirstModule.person_profileimage', 'myfirstmodule$person_profileimage', 'b1f9aee1-6f61-4ffd-ac91-ca5c76af250d', 'aba65a75-7ac6-41cc-9e8e-f5ede7f7ff0c', 'myfirstmodule$personid', 'myfirstmodule$profileimageid', 'idx_myfirstmodule$person_profileimage_myfirstmodule$profileimage_myfirstmodule$person');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_myfirstmodule$person_profileimage_myfirstmodule$profileimageid', 'f313ef2e-b997-4bfa-8ace-5de04682de3c', '4c4a44fa-7332-376a-8e40-db0747082853');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_myfirstmodule$person_profileimage_myfirstmodule$personid', 'f313ef2e-b997-4bfa-8ace-5de04682de3c', '7b0981dc-05ff-34e3-a160-3ff80fa9e7f9');
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20241010 13:00:56';
