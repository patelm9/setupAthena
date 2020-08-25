DROP TABLE IF EXISTS SOURCES.MRCONSO;
CREATE TABLE SOURCES.MRCONSO
(
  CUI       CHAR(8),
  LAT       CHAR(3),
  TS        CHAR(1),
  LUI       VARCHAR(10),
  STT       VARCHAR(3),
  SUI       VARCHAR(10),
  ISPREF    CHAR(1),
  AUI       VARCHAR(9) NOT NULL,
  SAUI      VARCHAR(50),
  SCUI      VARCHAR(100),
  SDUI      VARCHAR(100),
  SAB       VARCHAR(40),
  TTY       VARCHAR(40),
  CODE      VARCHAR(100),
  STR       VARCHAR(3000),
  SRL       INT ,
  SUPPRESS  CHAR(1),
  CVF       INT,
  FILLER_COLUMN INT
);

DROP TABLE IF EXISTS SOURCES.MRHIER;
CREATE TABLE SOURCES.MRHIER
(
  CUI   CHAR(8),
  AUI   VARCHAR(9),
  CXN   INT,
  PAUI  VARCHAR(9),
  SAB   VARCHAR(40),
  RELA  VARCHAR(100),
  PTR   VARCHAR(1000),
  HCD   VARCHAR(150),
  CVF   INT,
  FILLER_COLUMN INT
);

DROP TABLE IF EXISTS SOURCES.MRMAP;
CREATE TABLE SOURCES.MRMAP
(
  MAPSETCUI    CHAR(8),
  MAPSETSAB    VARCHAR(40),
  MAPSUBSETID  VARCHAR(10),
  MAPRANK      INT,
  MAPID        VARCHAR(50),
  MAPSID       VARCHAR(50),
  FROMID       VARCHAR(50),
  FROMSID      VARCHAR(50),
  FROMEXPR     VARCHAR(4000),
  FROMTYPE     VARCHAR(50),
  FROMRULE     VARCHAR(4000),
  FROMRES      VARCHAR(4000),
  REL          VARCHAR(4),
  RELA         VARCHAR(100),
  TOID         VARCHAR(50),
  TOSID        VARCHAR(50),
  TOEXPR       VARCHAR(4000),
  TOTYPE       VARCHAR(50),
  TORULE       VARCHAR(4000),
  TORES        VARCHAR(4000),
  MAPRULE      VARCHAR(4000),
  MAPRES       VARCHAR(4000),
  MAPTYPE      VARCHAR(50),
  MAPATN       VARCHAR(20),
  MAPATV       VARCHAR(4000),
  CVF          INT,
  FILLER_COLUMN INT
);

DROP TABLE IF EXISTS SOURCES.MRSMAP;
CREATE TABLE SOURCES.MRSMAP
(
  MAPSETCUI            CHAR (8),
  MAPSETSAB            VARCHAR (40),
  MAPID                VARCHAR (50),
  MAPSID               VARCHAR (50),
  FROMEXPR             VARCHAR (4000),
  FROMTYPE             VARCHAR (50),
  REL                  VARCHAR (4),
  RELA                 VARCHAR (100),
  TOEXPR               VARCHAR (4000),
  TOTYPE               VARCHAR (50),
  CVF                  INT,
  VOCABULARY_DATE      DATE,
  VOCABULARY_VERSION   VARCHAR (200)
);

DROP TABLE IF EXISTS SOURCES.MRSAT;
CREATE TABLE SOURCES.MRSAT
(
  CUI       CHAR(8),
  LUI       VARCHAR(10),
  SUI       VARCHAR(10),
  METAUI    VARCHAR(50),
  STYPE     VARCHAR(50),
  CODE      VARCHAR(50),
  ATUI      VARCHAR(11),
  SATUI     VARCHAR(50),
  ATN       VARCHAR(100),
  SAB       VARCHAR(40),
  ATV       TEXT,
  SUPPRESS  CHAR(1),
  CVF       VARCHAR(50),
  FILLER_COLUMN INT
);

DROP TABLE IF EXISTS SOURCES.MRREL;
CREATE TABLE SOURCES.MRREL
(
  CUI1      CHAR(8),
  AUI1      VARCHAR(9),
  STYPE1    VARCHAR(50),
  REL       VARCHAR(4),
  CUI2      CHAR(8),
  AUI2      VARCHAR(9),
  STYPE2    VARCHAR(50),
  RELA      VARCHAR(100),
  RUI       VARCHAR(10),
  SRUI      VARCHAR(50),
  SAB       VARCHAR(40),
  SL        VARCHAR(40),
  RG        VARCHAR(10),
  DIR       VARCHAR(1),
  SUPPRESS  CHAR(1),
  CVF       INT,
  FILLER_COLUMN INT
);

DROP TABLE IF EXISTS SOURCES.MRSTY;
CREATE TABLE SOURCES.MRSTY
(
  CUI       CHAR(8),
  TUI       VARCHAR(10),
  STN       VARCHAR(100),
  STY       VARCHAR(1000),
  ATUI      VARCHAR(11),
  CVF       VARCHAR(50)
);

CREATE INDEX X_MRSAT_CUI ON SOURCES.MRSAT (CUI);
CREATE INDEX X_MRCONSO_CODE ON SOURCES.MRCONSO (CODE);
CREATE INDEX X_MRCONSO_CUI ON SOURCES.MRCONSO (CUI);
CREATE INDEX X_MRCONSO_LUI ON SOURCES.MRCONSO (LUI);
CREATE UNIQUE INDEX X_MRCONSO_PK ON SOURCES.MRCONSO (AUI);
CREATE INDEX X_MRCONSO_SAB_TTY ON SOURCES.MRCONSO (SAB, TTY);
CREATE INDEX X_MRCONSO_SCUI ON SOURCES.MRCONSO (SCUI);
CREATE INDEX X_MRCONSO_SDUI ON SOURCES.MRCONSO (SDUI);
CREATE INDEX X_MRCONSO_STR ON SOURCES.MRCONSO (STR);
CREATE INDEX X_MRCONSO_SUI ON SOURCES.MRCONSO (SUI);
CREATE INDEX X_MRREL_AUI ON SOURCES.MRREL (AUI1, AUI2);
CREATE INDEX X_MRSTY_CUI ON SOURCES.MRSTY (CUI);
ALTER TABLE SOURCES.MRCONSO ADD CONSTRAINT X_MRCONSO_PK PRIMARY KEY USING INDEX X_MRCONSO_PK;
