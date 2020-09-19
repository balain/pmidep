BEGIN TRANSACTION;

UPDATE latest_data SET PMPDate = REPLACE(PMPDate, '-Jan-', '-01-');
UPDATE latest_data SET PMPDate = REPLACE(PMPDate, '-Feb-', '-02-');
UPDATE latest_data SET PMPDate = REPLACE(PMPDate, '-Mar-', '-03-');
UPDATE latest_data SET PMPDate = REPLACE(PMPDate, '-Apr-', '-04-');
UPDATE latest_data SET PMPDate = REPLACE(PMPDate, '-May-', '-05-');
UPDATE latest_data SET PMPDate = REPLACE(PMPDate, '-Jun-', '-06-');
UPDATE latest_data SET PMPDate = REPLACE(PMPDate, '-Jul-', '-07-');
UPDATE latest_data SET PMPDate = REPLACE(PMPDate, '-Aug-', '-08-');
UPDATE latest_data SET PMPDate = REPLACE(PMPDate, '-Sep-', '-09-');
UPDATE latest_data SET PMPDate = REPLACE(PMPDate, '-Oct-', '-10-');
UPDATE latest_data SET PMPDate = REPLACE(PMPDate, '-Nov-', '-11-');
UPDATE latest_data SET PMPDate = REPLACE(PMPDate, '-Dec-', '-12-');

UPDATE latest_data SET PMIJoinDate = REPLACE(PMIJoinDate, '-Jan-', '-01-');
UPDATE latest_data SET PMIJoinDate = REPLACE(PMIJoinDate, '-Feb-', '-02-');
UPDATE latest_data SET PMIJoinDate = REPLACE(PMIJoinDate, '-Mar-', '-03-');
UPDATE latest_data SET PMIJoinDate = REPLACE(PMIJoinDate, '-Apr-', '-04-');
UPDATE latest_data SET PMIJoinDate = REPLACE(PMIJoinDate, '-May-', '-05-');
UPDATE latest_data SET PMIJoinDate = REPLACE(PMIJoinDate, '-Jun-', '-06-');
UPDATE latest_data SET PMIJoinDate = REPLACE(PMIJoinDate, '-Jul-', '-07-');
UPDATE latest_data SET PMIJoinDate = REPLACE(PMIJoinDate, '-Aug-', '-08-');
UPDATE latest_data SET PMIJoinDate = REPLACE(PMIJoinDate, '-Sep-', '-09-');
UPDATE latest_data SET PMIJoinDate = REPLACE(PMIJoinDate, '-Oct-', '-10-');
UPDATE latest_data SET PMIJoinDate = REPLACE(PMIJoinDate, '-Nov-', '-11-');
UPDATE latest_data SET PMIJoinDate = REPLACE(PMIJoinDate, '-Dec-', '-12-');

UPDATE latest_data SET PMIExpirationDate = REPLACE(PMIExpirationDate, '-Jan-', '-01-');
UPDATE latest_data SET PMIExpirationDate = REPLACE(PMIExpirationDate, '-Feb-', '-02-');
UPDATE latest_data SET PMIExpirationDate = REPLACE(PMIExpirationDate, '-Mar-', '-03-');
UPDATE latest_data SET PMIExpirationDate = REPLACE(PMIExpirationDate, '-Apr-', '-04-');
UPDATE latest_data SET PMIExpirationDate = REPLACE(PMIExpirationDate, '-May-', '-05-');
UPDATE latest_data SET PMIExpirationDate = REPLACE(PMIExpirationDate, '-Jun-', '-06-');
UPDATE latest_data SET PMIExpirationDate = REPLACE(PMIExpirationDate, '-Jul-', '-07-');
UPDATE latest_data SET PMIExpirationDate = REPLACE(PMIExpirationDate, '-Aug-', '-08-');
UPDATE latest_data SET PMIExpirationDate = REPLACE(PMIExpirationDate, '-Sep-', '-09-');
UPDATE latest_data SET PMIExpirationDate = REPLACE(PMIExpirationDate, '-Oct-', '-10-');
UPDATE latest_data SET PMIExpirationDate = REPLACE(PMIExpirationDate, '-Nov-', '-11-');
UPDATE latest_data SET PMIExpirationDate = REPLACE(PMIExpirationDate, '-Dec-', '-12-');

UPDATE latest_data SET JoinDate = REPLACE(JoinDate, '-Jan-', '-01-');
UPDATE latest_data SET JoinDate = REPLACE(JoinDate, '-Feb-', '-02-');
UPDATE latest_data SET JoinDate = REPLACE(JoinDate, '-Mar-', '-03-');
UPDATE latest_data SET JoinDate = REPLACE(JoinDate, '-Apr-', '-04-');
UPDATE latest_data SET JoinDate = REPLACE(JoinDate, '-May-', '-05-');
UPDATE latest_data SET JoinDate = REPLACE(JoinDate, '-Jun-', '-06-');
UPDATE latest_data SET JoinDate = REPLACE(JoinDate, '-Jul-', '-07-');
UPDATE latest_data SET JoinDate = REPLACE(JoinDate, '-Aug-', '-08-');
UPDATE latest_data SET JoinDate = REPLACE(JoinDate, '-Sep-', '-09-');
UPDATE latest_data SET JoinDate = REPLACE(JoinDate, '-Oct-', '-10-');
UPDATE latest_data SET JoinDate = REPLACE(JoinDate, '-Nov-', '-11-');
UPDATE latest_data SET JoinDate = REPLACE(JoinDate, '-Dec-', '-12-');

UPDATE latest_data SET ExpirationDate = REPLACE(ExpirationDate, '-Jan-', '-01-');
UPDATE latest_data SET ExpirationDate = REPLACE(ExpirationDate, '-Feb-', '-02-');
UPDATE latest_data SET ExpirationDate = REPLACE(ExpirationDate, '-Mar-', '-03-');
UPDATE latest_data SET ExpirationDate = REPLACE(ExpirationDate, '-Apr-', '-04-');
UPDATE latest_data SET ExpirationDate = REPLACE(ExpirationDate, '-May-', '-05-');
UPDATE latest_data SET ExpirationDate = REPLACE(ExpirationDate, '-Jun-', '-06-');
UPDATE latest_data SET ExpirationDate = REPLACE(ExpirationDate, '-Jul-', '-07-');
UPDATE latest_data SET ExpirationDate = REPLACE(ExpirationDate, '-Aug-', '-08-');
UPDATE latest_data SET ExpirationDate = REPLACE(ExpirationDate, '-Sep-', '-09-');
UPDATE latest_data SET ExpirationDate = REPLACE(ExpirationDate, '-Oct-', '-10-');
UPDATE latest_data SET ExpirationDate = REPLACE(ExpirationDate, '-Nov-', '-11-');
UPDATE latest_data SET ExpirationDate = REPLACE(ExpirationDate, '-Dec-', '-12-');

UPDATE latest_data SET RecordEdited = REPLACE(RecordEdited, '-Jan-', '-01-');
UPDATE latest_data SET RecordEdited = REPLACE(RecordEdited, '-Feb-', '-02-');
UPDATE latest_data SET RecordEdited = REPLACE(RecordEdited, '-Mar-', '-03-');
UPDATE latest_data SET RecordEdited = REPLACE(RecordEdited, '-Apr-', '-04-');
UPDATE latest_data SET RecordEdited = REPLACE(RecordEdited, '-May-', '-05-');
UPDATE latest_data SET RecordEdited = REPLACE(RecordEdited, '-Jun-', '-06-');
UPDATE latest_data SET RecordEdited = REPLACE(RecordEdited, '-Jul-', '-07-');
UPDATE latest_data SET RecordEdited = REPLACE(RecordEdited, '-Aug-', '-08-');
UPDATE latest_data SET RecordEdited = REPLACE(RecordEdited, '-Sep-', '-09-');
UPDATE latest_data SET RecordEdited = REPLACE(RecordEdited, '-Oct-', '-10-');
UPDATE latest_data SET RecordEdited = REPLACE(RecordEdited, '-Nov-', '-11-');
UPDATE latest_data SET RecordEdited = REPLACE(RecordEdited, '-Dec-', '-12-');

UPDATE latest_data SET PMPDate = substr(PMPDate, 7, 4)||'-'||substr(PMPDate, 4,2)||'-'||substr(PMPDate, 1,2);
UPDATE latest_data SET PMIJoinDate = substr(PMIJoinDate, 7, 4)||'-'||substr(PMIJoinDate, 4,2)||'-'||substr(PMIJoinDate, 1,2);
UPDATE latest_data SET PMIExpirationDate = substr(PMIExpirationDate, 7, 4)||'-'||substr(PMIExpirationDate, 4,2)||'-'||substr(PMIExpirationDate, 1,2);
UPDATE latest_data SET JoinDate = substr(JoinDate, 7, 4)||'-'||substr(JoinDate, 4,2)||'-'||substr(JoinDate, 1,2);
UPDATE latest_data SET ExpirationDate = substr(ExpirationDate, 7, 4)||'-'||substr(ExpirationDate, 4,2)||'-'||substr(ExpirationDate, 1,2);
UPDATE latest_data SET RecordEdited = substr(RecordEdited, 7, 4)||'-'||substr(RecordEdited, 4,2)||'-'||substr(RecordEdited, 1,2);

END TRANSACTION;
