SELECT day, count(id) 
FROM assignments
GROUP BY day
ORDER BY DAY ASC;