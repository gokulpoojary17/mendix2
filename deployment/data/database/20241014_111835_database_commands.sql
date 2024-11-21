ALTER TABLE "myfirstmodule$person" ADD "birthdate" INT NULL;
UPDATE "myfirstmodule$person" SET "birthdate" = 0;
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f662c33f-19d3-4feb-8c18-7fa87b4a5c91', 'b1f9aee1-6f61-4ffd-ac91-ca5c76af250d', 'birthdate', 'birthdate', 3, 0, '0', false);
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20241014 11:18:35';
