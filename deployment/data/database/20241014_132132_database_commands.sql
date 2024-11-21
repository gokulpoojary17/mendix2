ALTER TABLE "myfirstmodule$person" DROP COLUMN "birthdate";
ALTER TABLE "myfirstmodule$person" ADD "birthdate" TIMESTAMP NULL;
UPDATE "mendixsystem$attribute" SET "entity_id" = 'b1f9aee1-6f61-4ffd-ac91-ca5c76af250d', "attribute_name" = 'birthdate', "column_name" = 'birthdate', "type" = 20, "length" = 0, "default_value" = '', "is_auto_number" = false WHERE "id" = 'f662c33f-19d3-4feb-8c18-7fa87b4a5c91';
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20241014 13:21:32';
