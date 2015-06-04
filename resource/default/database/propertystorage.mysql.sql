CREATE TABLE propertystorage (

    id    INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    path  VARBINARY(1024) NOT NULL,
    name  VARBINARY(100) NOT NULL,
    value MEDIUMBLOB

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE UNIQUE INDEX path_property
    ON propertystorage (path(600), name(100));
