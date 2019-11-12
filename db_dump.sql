BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO django_migrations VALUES(1,'contenttypes','0001_initial','2019-10-22 15:33:02.264443');
INSERT INTO django_migrations VALUES(2,'auth','0001_initial','2019-10-22 15:33:02.419482');
INSERT INTO django_migrations VALUES(3,'admin','0001_initial','2019-10-22 15:33:02.571011');
INSERT INTO django_migrations VALUES(4,'admin','0002_logentry_remove_auto_add','2019-10-22 15:33:02.694884');
INSERT INTO django_migrations VALUES(5,'admin','0003_logentry_add_action_flag_choices','2019-10-22 15:33:02.817449');
INSERT INTO django_migrations VALUES(6,'contenttypes','0002_remove_content_type_name','2019-10-22 15:33:02.954255');
INSERT INTO django_migrations VALUES(7,'auth','0002_alter_permission_name_max_length','2019-10-22 15:33:03.064496');
INSERT INTO django_migrations VALUES(8,'auth','0003_alter_user_email_max_length','2019-10-22 15:33:03.185298');
INSERT INTO django_migrations VALUES(9,'auth','0004_alter_user_username_opts','2019-10-22 15:33:03.308074');
INSERT INTO django_migrations VALUES(10,'auth','0005_alter_user_last_login_null','2019-10-22 15:33:03.416386');
INSERT INTO django_migrations VALUES(11,'auth','0006_require_contenttypes_0002','2019-10-22 15:33:03.503523');
INSERT INTO django_migrations VALUES(12,'auth','0007_alter_validators_add_error_messages','2019-10-22 15:33:03.592154');
INSERT INTO django_migrations VALUES(13,'auth','0008_alter_user_username_max_length','2019-10-22 15:33:03.693296');
INSERT INTO django_migrations VALUES(14,'auth','0009_alter_user_last_name_max_length','2019-10-22 15:33:03.789415');
INSERT INTO django_migrations VALUES(15,'auth','0010_alter_group_name_max_length','2019-10-22 15:33:03.888152');
INSERT INTO django_migrations VALUES(16,'auth','0011_update_proxy_permissions','2019-10-22 15:33:03.990634');
INSERT INTO django_migrations VALUES(17,'sessions','0001_initial','2019-10-22 15:33:04.072176');
CREATE TABLE IF NOT EXISTS "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "action_time" datetime NOT NULL, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "action_flag" smallint unsigned NOT NULL CHECK ("action_flag" >= 0));
CREATE TABLE IF NOT EXISTS "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO django_content_type VALUES(1,'admin','logentry');
INSERT INTO django_content_type VALUES(2,'auth','group');
INSERT INTO django_content_type VALUES(3,'auth','user');
INSERT INTO django_content_type VALUES(4,'auth','permission');
INSERT INTO django_content_type VALUES(5,'contenttypes','contenttype');
INSERT INTO django_content_type VALUES(6,'sessions','session');
CREATE TABLE IF NOT EXISTS "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO auth_permission VALUES(1,1,'add_logentry','Can add log entry');
INSERT INTO auth_permission VALUES(2,1,'change_logentry','Can change log entry');
INSERT INTO auth_permission VALUES(3,1,'delete_logentry','Can delete log entry');
INSERT INTO auth_permission VALUES(4,1,'view_logentry','Can view log entry');
INSERT INTO auth_permission VALUES(5,3,'add_user','Can add user');
INSERT INTO auth_permission VALUES(6,3,'change_user','Can change user');
INSERT INTO auth_permission VALUES(7,3,'delete_user','Can delete user');
INSERT INTO auth_permission VALUES(8,3,'view_user','Can view user');
INSERT INTO auth_permission VALUES(9,4,'add_permission','Can add permission');
INSERT INTO auth_permission VALUES(10,4,'change_permission','Can change permission');
INSERT INTO auth_permission VALUES(11,4,'delete_permission','Can delete permission');
INSERT INTO auth_permission VALUES(12,4,'view_permission','Can view permission');
INSERT INTO auth_permission VALUES(13,2,'add_group','Can add group');
INSERT INTO auth_permission VALUES(14,2,'change_group','Can change group');
INSERT INTO auth_permission VALUES(15,2,'delete_group','Can delete group');
INSERT INTO auth_permission VALUES(16,2,'view_group','Can view group');
INSERT INTO auth_permission VALUES(17,5,'add_contenttype','Can add content type');
INSERT INTO auth_permission VALUES(18,5,'change_contenttype','Can change content type');
INSERT INTO auth_permission VALUES(19,5,'delete_contenttype','Can delete content type');
INSERT INTO auth_permission VALUES(20,5,'view_contenttype','Can view content type');
INSERT INTO auth_permission VALUES(21,6,'add_session','Can add session');
INSERT INTO auth_permission VALUES(22,6,'change_session','Can change session');
INSERT INTO auth_permission VALUES(23,6,'delete_session','Can delete session');
INSERT INTO auth_permission VALUES(24,6,'view_session','Can view session');
CREATE TABLE IF NOT EXISTS "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "username" varchar(150) NOT NULL UNIQUE, "first_name" varchar(30) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "last_name" varchar(150) NOT NULL);
INSERT INTO auth_user VALUES(1,'pbkdf2_sha256$150000$DLGBaxaP2Gt5$r3p+L555mITOG5Xzeu+ocdRByzx63MirY20m62JiSkc=','2019-10-22 15:35:27.342998',1,'naresh','','nkumarjaggi@gmail.com',1,1,'2019-10-22 15:33:52.350987','');
CREATE TABLE IF NOT EXISTS "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(150) NOT NULL UNIQUE);
CREATE TABLE IF NOT EXISTS "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO django_session VALUES('fmad55uljwy9940lb3fh60eovo75efns','YmZjZTZiZjg2OWVhM2YwNjY2NmU5MmNhNTJmNzJjMTZkYmU4NTNkNDp7Il9hdXRoX3VzZXJfaGFzaCI6ImYzOWI5MWY4OWYyZDg1NmE3ODU1ZjFjYjhjZGM1NWM0YTFjMjdhNDciLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2019-11-05 15:35:27.409809');
CREATE TABLE BH_CONFIGURATION_DETAIL
(
    BH_CONFIGURATION_DETAIL_ID   int not null,
    BH_CONFIGURATION_HEADER_ID   int,
    CONFIGURATION_NAME           nvarchar(50),
    BUSINESS_TOPIC               nvarchar(1000),
    BUSINESS_ATTRIBUTE           nvarchar(4000),
    BUSINESS_ATTRIBUTE_VALUE     nvarchar(4000),
    BUSINESS_ATTRIBUTE_RANGE_MIN float,
    BUSINESS_ATTRIBUTE_RANGE_MAX float,
    DATA_TYPE                    nvarchar(50),
    OUTPUT_VALUE                 nvarchar(4000),
    EFFECTIVE_DATE               date,
    EXPIRATION_DATE              date,
    HINT                         nvarchar(300),
    ORG_ID                       int
);
INSERT INTO BH_CONFIGURATION_DETAIL VALUES(1,1,'Equipment',NULL,'Mode',NULL,1.0,10.0,'range','AIR',NULL,NULL,NULL,NULL);
INSERT INTO BH_CONFIGURATION_DETAIL VALUES(7,2,'Part and Package load',NULL,'','',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL);
INSERT INTO BH_CONFIGURATION_DETAIL VALUES(8,5,'Forecast loading',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO BH_CONFIGURATION_DETAIL VALUES(9,4,'Operating Plan Generation',NULL,NULL,NULL,NULL,NULL,'TEXT',NULL,NULL,NULL,NULL,NULL);
INSERT INTO BH_CONFIGURATION_DETAIL VALUES(10,6,'Execution data load',NULL,NULL,NULL,NULL,NULL,'ACTION',NULL,NULL,NULL,NULL,NULL);
INSERT INTO BH_CONFIGURATION_DETAIL VALUES(11,1,'Equipment',NULL,'Mode',NULL,10.0,30.0,'RANGE','PURELCL',NULL,NULL,NULL,NULL);
INSERT INTO BH_CONFIGURATION_DETAIL VALUES(12,1,'Equipment',NULL,'Mode',NULL,30.0,50.0,'range','LCL-LCL',NULL,NULL,NULL,NULL);
INSERT INTO BH_CONFIGURATION_DETAIL VALUES(13,1,'Equipment',NULL,'Mode',NULL,50.0,60.0,'range','LCL-FCL',NULL,NULL,NULL,NULL);
INSERT INTO BH_CONFIGURATION_DETAIL VALUES(14,1,'Equipment',NULL,'Mode',NULL,60.0,80.0,'range','FCL-LCL',NULL,NULL,NULL,NULL);
INSERT INTO BH_CONFIGURATION_DETAIL VALUES(15,1,'Equipment',NULL,'Mode',NULL,80.0,100.0,'range','FCL-FCL',NULL,NULL,NULL,NULL);
INSERT INTO BH_CONFIGURATION_DETAIL VALUES(16,3,'Rates',NULL,'Fuel Rate','19.0',NULL,NULL,'float',NULL,NULL,NULL,NULL,NULL);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('django_migrations',17);
INSERT INTO sqlite_sequence VALUES('django_admin_log',0);
INSERT INTO sqlite_sequence VALUES('django_content_type',6);
INSERT INTO sqlite_sequence VALUES('auth_permission',24);
INSERT INTO sqlite_sequence VALUES('auth_user',1);
INSERT INTO sqlite_sequence VALUES('auth_group',0);
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
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");
COMMIT;
