--liquibase formatted sql

--changeset akif.khan:5 runOnChange:false

ALTER TABLE `ScheduledMessages`
  DROP PRIMARY KEY,
  ADD COLUMN `executionVersion` SMALLINT UNSIGNED DEFAULT 0,
  ADD PRIMARY KEY (`taskId`,`stateMachineId`,`executionVersion`);