# Write your MySQL query statement below
SELECT x,y,z, 
CASE WHEN x+y>z AND x+z>y AND y+z>x
THEN 'Yes'
ELSE 'No' END
AS triangle
FROM TRIANGLE

#A set of three sides forms a triangle only if the sum of any two sides is strictly greater than the third.