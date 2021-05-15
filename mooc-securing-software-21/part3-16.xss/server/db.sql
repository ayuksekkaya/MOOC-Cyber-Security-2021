PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO django_migrations VALUES(1,'contenttypes','0001_initial','2020-07-18 23:03:11.421484');
INSERT INTO django_migrations VALUES(2,'auth','0001_initial','2020-07-18 23:03:11.439925');
INSERT INTO django_migrations VALUES(3,'admin','0001_initial','2020-07-18 23:03:11.450802');
INSERT INTO django_migrations VALUES(4,'admin','0002_logentry_remove_auto_add','2020-07-18 23:03:11.464067');
INSERT INTO django_migrations VALUES(5,'admin','0003_logentry_add_action_flag_choices','2020-07-18 23:03:11.474503');
INSERT INTO django_migrations VALUES(6,'contenttypes','0002_remove_content_type_name','2020-07-18 23:03:11.493607');
INSERT INTO django_migrations VALUES(7,'auth','0002_alter_permission_name_max_length','2020-07-18 23:03:11.500595');
INSERT INTO django_migrations VALUES(8,'auth','0003_alter_user_email_max_length','2020-07-18 23:03:11.512598');
INSERT INTO django_migrations VALUES(9,'auth','0004_alter_user_username_opts','2020-07-18 23:03:11.523449');
INSERT INTO django_migrations VALUES(10,'auth','0005_alter_user_last_login_null','2020-07-18 23:03:11.533585');
INSERT INTO django_migrations VALUES(11,'auth','0006_require_contenttypes_0002','2020-07-18 23:03:11.535789');
INSERT INTO django_migrations VALUES(12,'auth','0007_alter_validators_add_error_messages','2020-07-18 23:03:11.546841');
INSERT INTO django_migrations VALUES(13,'auth','0008_alter_user_username_max_length','2020-07-18 23:03:11.560339');
INSERT INTO django_migrations VALUES(14,'auth','0009_alter_user_last_name_max_length','2020-07-18 23:03:11.570347');
INSERT INTO django_migrations VALUES(15,'auth','0010_alter_group_name_max_length','2020-07-18 23:03:11.581484');
INSERT INTO django_migrations VALUES(16,'auth','0011_update_proxy_permissions','2020-07-18 23:03:11.589480');
INSERT INTO django_migrations VALUES(17,'pages','0001_initial','2020-07-18 23:03:11.599800');
INSERT INTO django_migrations VALUES(18,'sessions','0001_initial','2020-07-18 23:03:11.604888');
INSERT INTO django_migrations VALUES(19,'auth','0012_alter_user_first_name_max_length','2020-11-22 10:10:19.339935');
CREATE TABLE IF NOT EXISTS "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "action_time" datetime NOT NULL, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "action_flag" smallint unsigned NOT NULL CHECK ("action_flag" >= 0));
INSERT INTO django_admin_log VALUES(1,'2020-07-18 23:04:45.166732','2','bob','[{"added": {}}]',4,1,1);
INSERT INTO django_admin_log VALUES(2,'2020-07-18 23:04:56.129900','3','alice','[{"added": {}}]',4,1,1);
CREATE TABLE IF NOT EXISTS "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO django_content_type VALUES(1,'admin','logentry');
INSERT INTO django_content_type VALUES(2,'auth','permission');
INSERT INTO django_content_type VALUES(3,'auth','group');
INSERT INTO django_content_type VALUES(4,'auth','user');
INSERT INTO django_content_type VALUES(5,'contenttypes','contenttype');
INSERT INTO django_content_type VALUES(6,'sessions','session');
INSERT INTO django_content_type VALUES(7,'pages','mail');
INSERT INTO django_content_type VALUES(8,'pages','message');
CREATE TABLE IF NOT EXISTS "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO auth_permission VALUES(1,1,'add_logentry','Can add log entry');
INSERT INTO auth_permission VALUES(2,1,'change_logentry','Can change log entry');
INSERT INTO auth_permission VALUES(3,1,'delete_logentry','Can delete log entry');
INSERT INTO auth_permission VALUES(4,1,'view_logentry','Can view log entry');
INSERT INTO auth_permission VALUES(5,2,'add_permission','Can add permission');
INSERT INTO auth_permission VALUES(6,2,'change_permission','Can change permission');
INSERT INTO auth_permission VALUES(7,2,'delete_permission','Can delete permission');
INSERT INTO auth_permission VALUES(8,2,'view_permission','Can view permission');
INSERT INTO auth_permission VALUES(9,3,'add_group','Can add group');
INSERT INTO auth_permission VALUES(10,3,'change_group','Can change group');
INSERT INTO auth_permission VALUES(11,3,'delete_group','Can delete group');
INSERT INTO auth_permission VALUES(12,3,'view_group','Can view group');
INSERT INTO auth_permission VALUES(13,4,'add_user','Can add user');
INSERT INTO auth_permission VALUES(14,4,'change_user','Can change user');
INSERT INTO auth_permission VALUES(15,4,'delete_user','Can delete user');
INSERT INTO auth_permission VALUES(16,4,'view_user','Can view user');
INSERT INTO auth_permission VALUES(17,5,'add_contenttype','Can add content type');
INSERT INTO auth_permission VALUES(18,5,'change_contenttype','Can change content type');
INSERT INTO auth_permission VALUES(19,5,'delete_contenttype','Can delete content type');
INSERT INTO auth_permission VALUES(20,5,'view_contenttype','Can view content type');
INSERT INTO auth_permission VALUES(21,6,'add_session','Can add session');
INSERT INTO auth_permission VALUES(22,6,'change_session','Can change session');
INSERT INTO auth_permission VALUES(23,6,'delete_session','Can delete session');
INSERT INTO auth_permission VALUES(24,6,'view_session','Can view session');
INSERT INTO auth_permission VALUES(25,7,'add_mail','Can add mail');
INSERT INTO auth_permission VALUES(26,7,'change_mail','Can change mail');
INSERT INTO auth_permission VALUES(27,7,'delete_mail','Can delete mail');
INSERT INTO auth_permission VALUES(28,7,'view_mail','Can view mail');
INSERT INTO auth_permission VALUES(29,8,'add_message','Can add message');
INSERT INTO auth_permission VALUES(30,8,'change_message','Can change message');
INSERT INTO auth_permission VALUES(31,8,'delete_message','Can delete message');
INSERT INTO auth_permission VALUES(32,8,'view_message','Can view message');
CREATE TABLE IF NOT EXISTS "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(150) NOT NULL UNIQUE);
CREATE TABLE IF NOT EXISTS "pages_mail" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content" text NOT NULL);
CREATE TABLE IF NOT EXISTS "pages_message" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content" text NOT NULL, "time" datetime NOT NULL, "source_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "target_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
CREATE TABLE IF NOT EXISTS "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "username" varchar(150) NOT NULL UNIQUE, "last_name" varchar(150) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "first_name" varchar(150) NOT NULL);
INSERT INTO auth_user VALUES(1,'pbkdf2_sha256$180000$TBOH2yAWx4qE$F586qFabIZ/etSV5K53EK0aLKv3dFRNhEVCUO+QmDQA=','2020-07-18 23:04:23.403371',1,'admin','','admin@admin.gov',1,1,'2020-07-18 23:03:36.127494','');
INSERT INTO auth_user VALUES(2,'pbkdf2_sha256$180000$aaWhCT3CauGc$tlkGWtghox6+oHaDY4MXTaZYJJXWFhsoGyJAqRhc/uc=','2020-07-18 23:05:32.676729',0,'bob','','',0,1,'2020-07-18 23:04:45.060969','');
INSERT INTO auth_user VALUES(3,'pbkdf2_sha256$180000$0SeOG8geIg2K$GoBx2OHi5IE8yAmWBPxu77SaINCL9VnBuf+Z6vsztcE=','2020-07-18 23:05:23.742153',0,'alice','','',0,1,'2020-07-18 23:04:56.025654','');
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('django_migrations',19);
INSERT INTO sqlite_sequence VALUES('django_admin_log',2);
INSERT INTO sqlite_sequence VALUES('django_content_type',8);
INSERT INTO sqlite_sequence VALUES('auth_permission',32);
INSERT INTO sqlite_sequence VALUES('auth_group',0);
INSERT INTO sqlite_sequence VALUES('auth_user',3);
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");
CREATE UNIQUE INDEX "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");
CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");
CREATE INDEX "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");
CREATE UNIQUE INDEX "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");
CREATE INDEX "pages_message_source_id_9b787f19" ON "pages_message" ("source_id");
CREATE INDEX "pages_message_target_id_2469c89c" ON "pages_message" ("target_id");
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");
COMMIT;