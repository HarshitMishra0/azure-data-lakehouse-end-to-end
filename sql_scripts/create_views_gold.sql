-- Creating calendar view
CREATE VIEW gold.calendar AS
SELECT *
FROM OPENROWSET(
    BULK 'https://hmstoragedatalake.blob.core.windows.net/silver/AdventureWorks_Calendar/',
    FORMAT = 'PARQUET'
) AS query1;
GO

-- Creating customers view
CREATE VIEW gold.customers AS
SELECT *
FROM OPENROWSET(
    BULK 'https://hmstoragedatalake.blob.core.windows.net/silver/AdventureWorks_Customers/',
    FORMAT = 'PARQUET'
) AS query1;
GO

-- Creating products view
CREATE VIEW gold.products AS
SELECT *
FROM OPENROWSET(
    BULK 'https://hmstoragedatalake.blob.core.windows.net/silver/AdventureWorks_Products/',
    FORMAT = 'PARQUET'
) AS query1;
GO

-- Creating returns view
CREATE VIEW gold.returns AS
SELECT *
FROM OPENROWSET(
    BULK 'https://hmstoragedatalake.blob.core.windows.net/silver/AdventureWorks_Returns/',
    FORMAT = 'PARQUET'
) AS query1;
GO

-- Creating sales view
CREATE VIEW gold.sales AS
SELECT *
FROM OPENROWSET(
    BULK 'https://hmstoragedatalake.blob.core.windows.net/silver/AdventureWorks_Sales/',
    FORMAT = 'PARQUET'
) AS query1;
GO

-- Creating territories view
CREATE VIEW gold.territories AS
SELECT *
FROM OPENROWSET(
    BULK 'https://hmstoragedatalake.blob.core.windows.net/silver/AdventureWorks_Territories/',
    FORMAT = 'PARQUET'
) AS query1;
GO

-- Creating subcategories view
CREATE VIEW gold.subcategories AS
SELECT *
FROM OPENROWSET(
    BULK 'https://hmstoragedatalake.blob.core.windows.net/silver/Product_Subcategories/',
    FORMAT = 'PARQUET'
) AS query1;
GO
