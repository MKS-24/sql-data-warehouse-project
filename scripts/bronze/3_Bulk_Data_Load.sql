USE DataWarehouse;
-- (TABLOCK) ka matlab hai "is table par ek hi bar full lock lagao, taake koi aur session is waqt is table ko modify na kar sake."

--                              FIRST TABLE
-- TRUNCATE
TRUNCATE TABLE bronze.crm_cust_info;
-- BULK LOAD
BULK INSERT bronze.crm_cust_info
FROM 'D:\sql-ultimate-course\sql-data-warehouse-project\datasets\source_crm\cust_info.csv' 
WITH(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);
-- TRUNCATE -> FULL LOAD
-- CROSS CHECK DATA IN THE TABLE AFTER BULK INSERT
SELECT * FROM bronze.crm_cust_info;
SELECT COUNT(*) FROM bronze.crm_cust_info;




--                              SECOND TABLE
-- TRUNCATE
TRUNCATE TABLE bronze.crm_prd_info;
-- BULK LOAD
BULK INSERT bronze.crm_prd_info
FROM 'D:\sql-ultimate-course\sql-data-warehouse-project\datasets\source_crm\prd_info.csv' 
WITH(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);
-- TRUNCATE -> FULL LOAD
-- CROSS CHECK DATA IN THE TABLE AFTER BULK INSERT
SELECT * FROM bronze.crm_prd_info;
SELECT COUNT(*) FROM bronze.crm_prd_info;




--                              THIRD TABLE
-- TRUNCATE
TRUNCATE TABLE bronze.crm_sales_details;
-- BULK LOAD
BULK INSERT bronze.crm_sales_details
FROM 'D:\sql-ultimate-course\sql-data-warehouse-project\datasets\source_crm\sales_details.csv' 
WITH(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);
-- TRUNCATE -> FULL LOAD
-- CROSS CHECK DATA IN THE TABLE AFTER BULK INSERT
SELECT * FROM bronze.crm_sales_details;
SELECT COUNT(*) FROM bronze.crm_sales_details;











--                              FORTH TABLE
-- TRUNCATE
TRUNCATE TABLE bronze.erp_cust_az12;
-- BULK LOAD
BULK INSERT bronze.erp_cust_az12
FROM 'D:\sql-ultimate-course\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv' 
WITH(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);
-- TRUNCATE -> FULL LOAD
-- CROSS CHECK DATA IN THE TABLE AFTER BULK INSERT
SELECT * FROM bronze.erp_cust_az12;
SELECT COUNT(*) FROM bronze.erp_cust_az12;




--                              FIFTH TABLE
-- TRUNCATE
TRUNCATE TABLE bronze.erp_loc_a101;
-- BULK LOAD
BULK INSERT bronze.erp_loc_a101
FROM 'D:\sql-ultimate-course\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv' 
WITH(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);
-- TRUNCATE -> FULL LOAD
-- CROSS CHECK DATA IN THE TABLE AFTER BULK INSERT
SELECT * FROM bronze.erp_loc_a101;
SELECT COUNT(*) FROM bronze.erp_loc_a101;




--                              THIRD TABLE
-- TRUNCATE
TRUNCATE TABLE bronze.erp_px_cat_g1v2;
-- BULK LOAD
BULK INSERT bronze.erp_px_cat_g1v2
FROM 'D:\sql-ultimate-course\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv' 
WITH(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);
-- TRUNCATE -> FULL LOAD
-- CROSS CHECK DATA IN THE TABLE AFTER BULK INSERT
SELECT * FROM bronze.erp_px_cat_g1v2;
SELECT COUNT(*) FROM bronze.erp_px_cat_g1v2;
