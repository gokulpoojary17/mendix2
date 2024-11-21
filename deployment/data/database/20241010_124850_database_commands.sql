CREATE TABLE "myfirstmodule$person" (
	"id" BIGINT NOT NULL,
	"name" VARCHAR_IGNORECASE(200) NULL,
	"age" INT NULL,
	"gender" VARCHAR_IGNORECASE(6) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('b1f9aee1-6f61-4ffd-ac91-ca5c76af250d', 'MyFirstModule.person', 'myfirstmodule$person', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('4b6ed29c-79fc-4fc8-bb9d-a7f67c5ed0fa', 'b1f9aee1-6f61-4ffd-ac91-ca5c76af250d', 'name', 'name', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('7d5e0163-8775-4a43-b9c8-d3447c33647e', 'b1f9aee1-6f61-4ffd-ac91-ca5c76af250d', 'age', 'age', 3, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('3e70e8c0-a33f-486f-a037-cc7cd92d6c46', 'b1f9aee1-6f61-4ffd-ac91-ca5c76af250d', 'gender', 'gender', 40, 6, '', false);
CREATE TABLE "myfirstmodule$club" (
	"id" BIGINT NOT NULL,
	"name" VARCHAR_IGNORECASE(200) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('a8db686c-1aea-45c1-bb7f-fa1260a22a42', 'MyFirstModule.club', 'myfirstmodule$club', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('04248dfa-5a7d-46c8-b91b-e1d98d19e036', 'a8db686c-1aea-45c1-bb7f-fa1260a22a42', 'name', 'name', 30, 200, '', false);
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20241010 12:48:50';
