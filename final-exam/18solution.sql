Q18.
A consultant has sent you some sales projections in the following format:

MonthOfYear 	Asia 	Europe 	N.America
1 		20125 	36999 	27675
2 		22165 	38779 	29079
3 		25149 	40016 	31472

You load this data into a temporary table named #forecast.

The sales manager has asked for the forecast data in the following format:

MonthOfYear 	Region 		Forecast
1 		Asia 		20125
1 		Europe 		36999
1 		N.America 	27675
2 		Asia 		22165
2 		Europe 		38779
2 		N.America 	29079
3 		Asia 		25149
3 		Europe 		40016
3 		N.America 	31472

Which of the following queries returns the correct results?

-- Option 1
SELECT * FROM
(SELECT Region, Forecast
 FROM #forecast) as src
PIVOT (SUM(Forecast) FOR Region IN(Asia, Europe, N.America)) AS Pvt

-- Option 2
SELECT MonthOfYear, Region, Forecast
FROM
(SELECT MonthOfYear, Asia, Europe, N.America
 FROM #forecast) AS pvt
UNPIVOT(Forecast FOR Region IN (Asia, Europe, N.America)) AS unpvt
ORDER BY MonthOfYear, Region

-- Option 3
SELECT MonthOfYear, SUM(Asia) AS Asia, SUM(Europe) AS Europe, SUM(N.America) AS N.America
FROM #forecast
GROUP BY ROLLUP;

-- Option 4
SELECT MonthOfYear, SUM(Asia) AS Asia, SUM(Europe) AS Europe, SUM(N.America) AS N.America
FROM #forecast
GROUP BY CUBE;

# Answer: Option 2
