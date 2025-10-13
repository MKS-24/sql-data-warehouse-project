USE DataWarehouse;
select * from silver.crm_cust_info;
-- First Table
IF OBJECT_ID('bronze.crm_cust_info','U') IS NOT NULL
    DROP TABLE bronze.crm_cust_info;
CREATE TABLE bronze.crm_cust_info   -- bronze layer me table name hota hai->  source_entity
(
    cst_id INT,  
    cst_key NVARCHAR(50),  
    cst_firstname NVARCHAR(50),  
    cst_lastname NVARCHAR(50),  
    cst_marital_status NVARCHAR(50),  
    cst_gndr NVARCHAR(50),  
    cst_create_date DATE
);
-- info ->  cst_id,cst_key,cst_firstname,cst_lastname,cst_marital_status,cst_gndr,cst_create_date   
-- yehi colname teh CRM file me

IF OBJECT_ID('bronze.crm_prd_info','U') IS NOT NULL
    DROP TABLE bronze.crm_prd_info;
-- Second Table
CREATE TABLE bronze.crm_prd_info   -- bronze layer me table name hota hai->  source_entity
(
    prd_id INT,  
    prd_key NVARCHAR(50),  
    prd_nm NVARCHAR(50),  
    prd_cost INT,  
    prd_line NVARCHAR(50),  
    prd_start_dt DATETIME,  
    prd_end_dt DATETIME
);
USE DataWarehouse;
-- info ->  prd_id,prd_key,prd_nm,prd_cost,prd_line,prd_start_dt,prd_end_dt
-- yehi colname teh CRM file me


IF OBJECT_ID('bronze.crm_sales_details','U') IS NOT NULL
    DROP TABLE bronze.crm_sales_details;
-- Third Table
CREATE TABLE bronze.crm_sales_details   -- bronze layer me table name hota hai->  source_entity
(
    sls_ord_num NVARCHAR(50),  
    sls_prd_key NVARCHAR(50),  
    sls_cust_id INT,  
    sls_order_dt INT,  
    sls_ship_dt INT,  
    sls_due_dt INT,  
    sls_sales INT,
    sls_quantity INT,
    sls_price INT
);

-- info ->  sls_ord_num, sls_prd_key, sls_cust_id, sls_order_dt, sls_ship_dt, sls_due_dt,sls_sales,sls_quantity,sls_price
-- yehi colname teh CRM file me

IF OBJECT_ID('bronze.erp_cust_az12','U') IS NOT NULL
    DROP TABLE bronze.erp_cust_az12;
-- Forth Table
CREATE TABLE bronze.erp_cust_az12   -- bronze layer me table name hota hai->  source_entity
(
    cid NVARCHAR(50),  
    bdate date,  
    gen NVARCHAR(50)
);
-- info ->  CID,BDATE,GEN
-- yehi colname teh erp file me


IF OBJECT_ID('bronze.erp_loc_a101','U') IS NOT NULL
    DROP TABLE bronze.erp_loc_a101;
-- Fifth Table
CREATE TABLE bronze.erp_loc_a101   -- bronze layer me table name hota hai->  source_entity
(
    cid NVARCHAR(50),  
    cntry NVARCHAR(50)
);
-- info ->  CID,CNTRY
-- yehi colname teh erp file me


IF OBJECT_ID('bronze.erp_px_cat_g1v2','U') IS NOT NULL
    DROP TABLE bronze.erp_px_cat_g1v2;
-- Sixth Table
CREATE TABLE bronze.erp_px_cat_g1v2   -- bronze layer me table name hota hai->  source_entity
(
    id NVARCHAR(50),  
    cat NVARCHAR(50),  
    subcat NVARCHAR(50),  
    maintenance NVARCHAR(50)  
);
-- info ->  ID,CAT,SUBCAT,MAINTENANCE
-- yehi colname teh erp file me



