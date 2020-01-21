# SELECT now();
-- The statement below sets the collation of the database to utf8
ALTER DATABASE dgonzales371 CHARACTER SET utf8 COLLATE utf8_unicode_ci;

-- this is a comment in SQL (yes, the space is needed!)
-- these statements will drop the tables and re-add them
-- this is akin to reformatting and reinstalling Windows (OS X never needs a reinstall...) ;)
-- never ever ever ever ever ever ever ever ever ever ever ever ever ever ever ever ever ever ever ever
-- do this on live data!!!!
DROP TABLE IF EXISTS `like`;
DROP TABLE IF EXISTS `character`;
DROP TABLE IF EXISTS level;
DROP TABLE IF EXISTS profile;

-- the CREATE TABLE function is a function that takes tons of arguments to layout the table's schema
CREATE TABLE profile (
	-- this creates the attribute for the primary key
	-- not null means the attribute is required!
	profileId BINARY(16) NOT NULL,
	profileActivationToken CHAR(32),
	profileAtHandle VARCHAR(32) NOT NULL,
	profileEmail VARCHAR(128) NOT NULL,
	-- to make something optional, exclude the not null
	profileHash CHAR(97) NOT NULL,
	profilePhone VARCHAR(32),
	-- to make sure duplicate data cannot exist, create a unique index
	UNIQUE(profileAtHandle),
	UNIQUE(profileEmail),
	-- this officiates the primary key for the entity
	PRIMARY KEY(profileId)
);

-- create the tweet entity
CREATE TABLE `character`(
	-- this is for yet another primary key...
	characterId BINARY(16) NOT NULL,
	-- this is for a foreign key
	characterProfileId BINARY(16) NOT NULL,
	characterAppearance VARCHAR(140) NOT NULL,
	-- this creates an index before making a foreign key
	INDEX(characterProfileId),
	-- this creates the actual foreign key relation
	FOREIGN KEY(characterProfileId) REFERENCES profile(profileId),
	-- and finally create the primary key
	PRIMARY KEY(characterId)
);

-- create the like entity (a weak entity from an m-to-n for profile --> tweet)
CREATE TABLE `level` (
	-- these are still foreign keys
	levelProfileId BINARY(16) NOT NULL,
	levelId BINARY(16) NOT NULL,
	levelDifficulty DATETIME(6) NOT NULL,
	-- index the foreign keys
	INDEX(levelProfileId),
	INDEX(levelId),
	-- create the foreign key relations
	FOREIGN KEY(levelProfileId) REFERENCES profile(profileId),
	FOREIGN KEY(levelProfileId) REFERENCES profile(profileId),
	-- finally, create a composite foreign key with the two foreign keys
	PRIMARY KEY(levelProfileId, levelId)
);