CREATE TABLE IF NOT EXISTS IDN_ACTION (
	UUID CHAR(36) NOT NULL,
	TYPE VARCHAR(50) NOT NULL,
	NAME VARCHAR(255) NOT NULL,
	DESCRIPTION VARCHAR(255),
	STATUS VARCHAR(10) NOT NULL,
	TENANT_ID INTEGER NOT NULL,
	VERSION VARCHAR(15) NOT NULL,
	PRIMARY KEY (UUID)
);

CREATE TABLE IF NOT EXISTS IDN_ACTION_PROPERTIES (
	ACTION_UUID CHAR(36) NOT NULL,
	PROPERTY_NAME VARCHAR(100) NOT NULL,
	PROPERTY_VALUE VARCHAR(255) NOT NULL,
	TENANT_ID INTEGER NOT NULL,
	PRIMARY KEY (ACTION_UUID, PROPERTY_NAME),
	FOREIGN KEY (ACTION_UUID) REFERENCES IDN_ACTION(UUID) ON DELETE CASCADE
);
