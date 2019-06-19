SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `dubbo_invoke`;
CREATE TABLE `dubbo_invoke`
(
    `nid`            int(11) unsigned NOT NULL AUTO_INCREMENT,
    `id`             varchar(255)     NOT NULL DEFAULT '',
    `invoke_date`    date             NOT NULL,
    `service`        varchar(255)              DEFAULT NULL,
    `method`         varchar(255)              DEFAULT NULL,
    `consumer`       varchar(255)              DEFAULT NULL,
    `provider`       varchar(255)              DEFAULT NULL,
    `type`           varchar(255)              DEFAULT '',
    `invoke_time`    bigint(20) unsigned       DEFAULT NULL,
    `success`        int(11) unsigned          DEFAULT NULL,
    `failure`        int(11) unsigned          DEFAULT NULL,
    `elapsed`        int(11) unsigned          DEFAULT NULL,
    `concurrent`     int(11) unsigned          DEFAULT NULL,
    `max_elapsed`    int(11) unsigned          DEFAULT NULL,
    `max_concurrent` int(11) unsigned          DEFAULT NULL,
    PRIMARY KEY (`nid`),
    KEY `index_service` (`service`) USING BTREE,
    KEY `index_method` (`method`) USING BTREE,
    KEY `idx_date_type` (`invoke_date`, `type`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  ROW_FORMAT = COMPACT;

SET FOREIGN_KEY_CHECKS = 1;
