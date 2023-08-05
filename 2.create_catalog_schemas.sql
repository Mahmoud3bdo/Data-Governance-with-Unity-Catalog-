-- Databricks notebook source
-- MAGIC %md
-- MAGIC #### Create Catalogs and Schemas required for the project
-- MAGIC 1. Catalog - formula1 (Without managed location)
-- MAGIC 2. Schemas - bronze, silver and gold (With managed location)

-- COMMAND ----------

 CREATE CATALOG IF NOT EXISTS formula1 ; 

-- COMMAND ----------

use catalog formula1 ;

-- COMMAND ----------

CREATE SCHEMA IF NOT EXISTS bronze
MANAGED LOCATION "abfss://bronze@databricksexdl.dfs.core.windows.net/"

-- COMMAND ----------

CREATE SCHEMA IF NOT EXISTS silver
MANAGED LOCATION "abfss://silver@databricksexdl.dfs.core.windows.net/"

-- COMMAND ----------

CREATE SCHEMA IF NOT EXISTS gold
MANAGED LOCATION "abfss://gold@databricksexdl.dfs.core.windows.net/"

-- COMMAND ----------

show schemas

-- COMMAND ----------

