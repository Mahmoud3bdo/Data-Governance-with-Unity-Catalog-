-- Databricks notebook source
-- MAGIC %md
-- MAGIC #### Create Bronze Tables
-- MAGIC 1. drivers.json
-- MAGIC 2. results.json
-- MAGIC Bronze folder path - abfss://bronze@databricksexdl.dfs.core.windows.net/

-- COMMAND ----------

DROP TABLE IF EXISTS formula1.bronze.drivers;

CREATE TABLE IF NOT EXISTS formula1.bronze.drivers
(
    driverId INT NOT NULL,
    driverRef STRING,
    number INT,
    code STRING,
    name STRUCT<forename: STRING, surname: STRING>,
    dob DATE,
    nationality STRING,
    url STRING
)
USING json
OPTIONS (path "abfss://bronze@databricksexdl.dfs.core.windows.net/drivers.json");

-- COMMAND ----------

DROP TABLE IF EXISTS formula1.bronze.results;

CREATE TABLE IF NOT EXISTS formula1.bronze.results
(
    resultId INT NOT NULL,
    raceId INT NOT NULL,
    driverId INT NOT NULL,
    constructorId INT NOT NULL,
    number INT,grid INT,
    position INT,
    positionText STRING,
    positionOrder INT,
    points INT,
    laps INT,
    time STRING,
    milliseconds INT,
    fastestLap INT,
    rank INT,
    fastestLapTime STRING,
    fastestLapSpeed FLOAT,
    statusId STRING
)
USING json
OPTIONS (path "abfss://bronze@databricksexdl.dfs.core.windows.net/results.json");

-- COMMAND ----------

