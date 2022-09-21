/*Counting the number of rides summarized and sorted by year*/

SELECT
    EXTRACT(YEAR FROM STARTTIME) AS year,/*extracting just the year from STARTTIME*/
    COUNT(*) AS number_of_rides
FROM
    bigquery-public-data.new_york.citibike_trips
GROUP BY
    year
ORDER BY
    year DESC