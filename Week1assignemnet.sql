SELECT "Date/Time", Temp_C, "Dew Point Temp_C", "Rel Hum_%", "Wind Speed_km/h", Visibility_km, Press_kPa, Weather
FROM Weather_Data;

SELECT * 
FROM Weather_Data
WHERE Weather = 'Clear';

SELECT COUNT(*)
FROM Weather_Data
WHERE "Wind Speed_km/h" = 4;

SELECT COUNT(*)
FROM Weather_Data
WHERE "Column_Name" IS NULL;

ALTER TABLE Weather_Data
RENAME COLUMN "Weather" TO "Weather_Condition";