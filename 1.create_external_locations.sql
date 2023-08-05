-- Databricks notebook source
-- MAGIC %md
-- MAGIC #### Create the external locations required for this project
-- MAGIC 1. Bronze
-- MAGIC 2. Silver
-- MAGIC 3. Gold

-- COMMAND ----------

CREATE EXTERNAL LOCATION IF NOT EXISTS exdl_bronze
 URL "abfss://bronze@databricksexdl.dfs.core.windows.net/"
 WITH (STORAGE CREDENTIAL `databricks_ex_credential`);


-- COMMAND ----------

DESC EXTERNAL LOCATION exdl_bronze;

-- COMMAND ----------

-- MAGIC %fs ls abfss://bronze@databricksexdl.dfs.core.windows.net/

-- COMMAND ----------

CREATE EXTERNAL LOCATION IF NOT EXISTS exdl_silver
 URL "abfss://silver@databricksexdl.dfs.core.windows.net/"
 WITH (STORAGE CREDENTIAL `databricks_ex_credential`);


-- COMMAND ----------

CREATE EXTERNAL LOCATION IF NOT EXISTS exdl_gold
 URL "abfss://gold@databricksexdl.dfs.core.windows.net/"
 WITH (STORAGE CREDENTIAL `databricks_ex_credential`);


-- COMMAND ----------

