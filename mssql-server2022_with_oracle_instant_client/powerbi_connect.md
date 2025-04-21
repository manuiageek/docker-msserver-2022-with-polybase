https://learn.microsoft.com/en-us/sql/relational-databases/security/row-level-security?view=sql-server-ver16&utm_source=chatgpt.com

https://medium.com/%40qays.daoud/kerberos-for-busy-admins-a-practical-guide-to-power-bi-sso-387b8acfb68a

https://learn.microsoft.com/en-us/power-bi/connect-data/service-gateway-sso-overview#supported-data-sources-for-sso

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
