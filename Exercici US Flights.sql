SELECT 
    COUNT(*)
FROM
    usairlineflights2.flights;


SELECT 
    Origin, AVG(Arrdelay), AVG(Depdelay)
FROM
    usairlineflights2.flights
GROUP BY Origin;


SELECT 
    Origin, colYear, colMonth, AVG(ArrTime)
FROM
    usairlineflights2.flights
GROUP BY Origin , colYear , colMonth
ORDER BY Origin ASC , colYear ASC , colMonth ASC;


SELECT 
    usairports.city, colYear, colMonth, AVG(ArrTime)
FROM
    usairlineflights2.flights
        INNER JOIN
    usairlineflights2.usairports ON flights.origin = usairports.iata
GROUP BY usairports.iata , flights.colYear , flights.colMonth
ORDER BY Origin ASC , colYear ASC , colMonth ASC;


SELECT 
    UniqueCarrier, colYear, colMonth, SUM(Cancelled)
FROM
    usairlineflights2.flights
GROUP BY UniqueCarrier , colYear , colMonth
ORDER BY SUM(Cancelled) DESC , colYear ASC , colMonth ASC;


SELECT 
    TailNum, SUM(distance)
FROM
    usairlineflights2.flights
WHERE
    NOT TailNum = ' '
GROUP BY TailNum
ORDER BY SUM(distance) DESC
LIMIT 10;


SELECT 
    UniqueCarrier, AVG(ArrDelay)
FROM
    usairlineflights2.flights
GROUP BY UniqueCarrier
HAVING AVG(ArrDelay) > 10
ORDER BY AVG(ArrDelay) DESC;