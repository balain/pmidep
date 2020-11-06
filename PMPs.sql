SELECT ID, Email, PMPDate, PMIExpirationDate
FROM latest_data
WHERE PMPDate is not '-- '
ORDER BY PMPDate DESC