https://vyaskn.tripod.com/row_level_security_in_sql_server_databases.htm?utm_source=chatgpt.com

https://novacontext.com/sql-server-2016-dynamic-data-masking-and-row-level-security-deployment-guide/index.html?utm_source=chatgpt.com

https://learn.microsoft.com/en-us/sql/relational-databases/security/row-level-security?view=sql-server-ver16&utm_source=chatgpt.com

# Création de la fonction de prédicat

CREATE FUNCTION Security.fn_RLS_Predicate(@DeptID INT)
RETURNS TABLE
WITH SCHEMABINDING
AS
RETURN
SELECT 1 AS fn_Result
WHERE EXISTS (
SELECT 1
FROM dbo.UserFilter uf
WHERE uf.UserName = SUSER_SNAME()
AND uf.DepartmentID = @DeptID
);
GO

# Application de la Security Policy

CREATE SECURITY POLICY Security.Policy_FilterByDept
ADD FILTER PREDICATE Security.fn_RLS_Predicate(DepartmentID)
ON dbo.Sales
WITH (STATE = ON);
GO

# Connexion depuis Power BI Desktop

runas /netonly /user:MONDOMAINE\MonUtilisateur "C:\Program Files\Microsoft Power BI Desktop\bin\PBIDesktop.exe"
