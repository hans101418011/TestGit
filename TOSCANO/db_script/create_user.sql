GRANT USAGE ON *.* TO `toscano`@`%` IDENTIFIED BY PASSWORD '*92852CF4C43C9679AEB1BDF5F3864144E8E06FA4';

GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, REFERENCES, INDEX, ALTER, CREATE TEMPORARY TABLES, LOCK TABLES, EXECUTE, CREATE VIEW, SHOW VIEW, CREATE ROUTINE, ALTER ROUTINE, EVENT, TRIGGER ON `restaurant\_toscano`.* TO `toscano`@`%` WITH GRANT OPTION;