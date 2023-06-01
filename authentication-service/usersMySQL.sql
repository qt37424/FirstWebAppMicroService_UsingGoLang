# Converted with pg2mysql-1.9
# Converted on Wed, 31 May 2023 13:36:29 -0400
# Lightbox Technologies Inc. http://www.lightbox.ca
# Password: Admin123

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone="+00:00";

CREATE TABLE authentication_service_golang.User_Account (
    id int(11) auto_increment NOT NULL,
    email varchar(255),
    first_name varchar(255),
    last_name varchar(255),
    password varchar(60),
    user_active int(11) DEFAULT 0,
    created_at timestamp,
    updated_at timestamp
, PRIMARY KEY(`id`)
);

-- ALTER TABLE authentication_service_golang.User_Account ADD CONSTRAINT users_pkey PRIMARY KEY (id);

INSERT INTO authentication_service_golang.User_Account (`email`,`first_name`,`last_name`,`password`,`user_active`,`created_at`,`updated_at`) VALUES ('admin@example.com','Admin','User','$2a$12$MIZZ.tjwU3ljzpdJDMoRYuZyeoRCKohqqFM.ZY83uZaTK5IMoJEri',1,'2022-03-14 00:00:00','2022-03-14 00:00:00');
