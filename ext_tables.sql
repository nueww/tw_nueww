#
# Table structure for table 'tx_twnueww_domain_model_article'
#
CREATE TABLE tx_twnueww_domain_model_blog_article (

  uid         INT(11)                         NOT NULL AUTO_INCREMENT,
  pid         INT(11) DEFAULT '0'             NOT NULL,

  title       VARCHAR(255) DEFAULT ''         NOT NULL,
  teaser_text TEXT DEFAULT ''                 NOT NULL,
  body_text   TEXT DEFAULT ''                 NOT NULL,
  images      INT(11) UNSIGNED DEFAULT '0'    NOT NULL,

  tstamp      INT(11) UNSIGNED DEFAULT '0'    NOT NULL,
  crdate      INT(11) UNSIGNED DEFAULT '0'    NOT NULL,
  cruser_id   INT(11) UNSIGNED DEFAULT '0'    NOT NULL,
  deleted     TINYINT(4) UNSIGNED DEFAULT '0' NOT NULL,
  hidden      TINYINT(4) UNSIGNED DEFAULT '0' NOT NULL,
  starttime   INT(11) UNSIGNED DEFAULT '0'    NOT NULL,
  endtime     INT(11) UNSIGNED DEFAULT '0'    NOT NULL,

  PRIMARY KEY (uid),
  KEY parent (pid)
);

CREATE TABLE tx_twnueww_domain_model_person (
  uid         INT(11)                            NOT NULL AUTO_INCREMENT,
  pid         INT(11) DEFAULT '0'                NOT NULL,

  first_name  VARCHAR(255) DEFAULT ''            NOT NULL,
  last_name   VARCHAR(255) DEFAULT ''         NOT NULL,
  job         VARCHAR(255) DEFAULT ''            NOT NULL,
  email       VARCHAR(255) DEFAULT ''            NOT NULL,
  www         VARCHAR(255) DEFAULT ''            NOT NULL,
  twitter     VARCHAR(255) DEFAULT ''            NOT NULL,
  facebook    VARCHAR(255) DEFAULT ''            NOT NULL,
  xing        VARCHAR(255) DEFAULT ''            NOT NULL,
  description TEXT DEFAULT ''                    NOT NULL,
  images      INT(11) UNSIGNED DEFAULT '0'       NOT NULL,

  tstamp      INT(11) UNSIGNED DEFAULT '0'       NOT NULL,
  crdate      INT(11) UNSIGNED DEFAULT '0'       NOT NULL,
  cruser_id   INT(11) UNSIGNED DEFAULT '0'       NOT NULL,
  deleted     TINYINT(4) UNSIGNED DEFAULT '0'    NOT NULL,
  hidden      TINYINT(4) UNSIGNED DEFAULT '0'    NOT NULL,

  PRIMARY KEY (uid),
  KEY parent (pid)
);