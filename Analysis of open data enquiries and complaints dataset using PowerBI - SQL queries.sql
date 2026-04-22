SELECT *
FROM DiscriminationComplaints.dbo.opendataeocenquiriesandcomplain$;


--Checking for NULLs
SELECT *
FROM DiscriminationComplaints.dbo.opendataeocenquiriesandcomplain$
WHERE 
      [Received date] IS NULL OR
      [How matter received] IS NULL OR
      [Matter Type] IS NULL OR
      [Complaint status] IS NULL OR
      [Grounds] IS NULL OR
      [Areas] IS NULL OR
      [Events] IS NULL OR
      [Complainant / Enquirer Gender] IS NULL OR
      [Complainant / Enquirer Birth Country] IS NULL OR
      [Complainant / Enquirer ATSI] IS NULL OR
      [Complainant / Enquirer Age Group] IS NULL OR
      [Interpreter required] IS NULL OR
      [Incident Industry Type] IS NULL OR
      [How found out about EOC] IS NULL OR
      [Matter Outcome] IS NULL OR
      [Outcome Reasons (complaints only)] IS NULL;


--Replacing missing values
SELECT TOP (1000)
    ISNULL([Received date], '1900-01-01') AS [Received date],
    ISNULL([How matter received], 'Unknown') AS [How matter received],
    ISNULL([Matter Type], 'Unknown') AS [Matter Type],
    ISNULL([Complaint status], 'Unknown') AS [Complaint status],
    ISNULL([Grounds], 'Unknown') AS [Grounds],
    ISNULL([Areas], 'Unknown') AS [Areas],
    ISNULL([Events], 'Unknown') AS [Events],
    ISNULL([Complainant / Enquirer Gender], 'Unknown') AS [Complainant / Enquirer Gender],
    ISNULL([Complainant / Enquirer Birth Country], 'Unknown') AS [Complainant / Enquirer Birth Country],
    ISNULL([Complainant / Enquirer ATSI], 'Not Specified') AS [Complainant / Enquirer ATSI],
    ISNULL([Complainant / Enquirer Age Group], 'Not Specified') AS [Complainant / Enquirer Age Group],
    ISNULL([Interpreter required], 'No') AS [Interpreter required],
    ISNULL([Incident Industry Type], 'Unknown') AS [Incident Industry Type],
    ISNULL([How found out about EOC], 'Unknown') AS [How found out about EOC],
    ISNULL([Matter Outcome], 'Pending') AS [Matter Outcome],
    ISNULL([Outcome Reasons (complaints only)], 'Not Specified') AS [Outcome Reasons (complaints only)]
FROM DiscriminationComplaints.dbo.opendataeocenquiriesandcomplain$;

