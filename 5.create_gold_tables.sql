-- Databricks notebook source
-- MAGIC %md
-- MAGIC #### Create managed table in the gold table.
-- MAGIC Identify the number of wins per drivers

-- COMMAND ----------

CREATE TABLE IF NOT EXISTS formula1.gold.driver_wins

-- COMMAND ----------

DROP TABLE IF  EXISTS formula1.gold.driver_wins ;
CREATE TABLE formula1.gold.driver_wins
As
SELECT 
      d.name AS driver_name ,
      count(1) as number_of_wins
FROM formula1.silver.drivers AS d  
 JOIN formula1.silver.results  AS r
  ON(d.driver_id=r.driver_id)
WHERE r.position = 1   
GROUP BY  driver_name 
;

-- COMMAND ----------

select * from formula1.gold.driver_wins

-- COMMAND ----------

