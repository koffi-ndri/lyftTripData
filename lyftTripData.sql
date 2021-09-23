-- Task 1:
SELECT * FROM trips;
 
SELECT * FROM riders;
 
SELECT * FROM cars;

-- trips table

--     id
--     date
--     pickup
--     dropoff
--     rider_id
--     car_id
--     type
--     cost

-- riders table

--     id
--     first
--     last
--     username
--     rating
--     total_trips
--     referred

-- cars table

--     id
--     model
--     OS
--     status
--     trips_completed



-- Task 2:
-- The primary key of trips is id.

-- The primary key of riders is id.

-- The primary key of cars is id.

-- Task 3:
SELECT riders.first,
   riders.last,
   cars.model
FROM riders, cars;
-- The result is not useful

-- Task 4:
SELECT *
FROM trips
LEFT JOIN riders
  ON trips.rider_id = riders.id;

-- Task 5:
SELECT *
FROM trips
INNER JOIN cars
  ON trips.car_id = cars.id;

-- Task 6:
SELECT *
FROM riders
UNION
SELECT *
FROM riders2;

-- Task 7:
SELECT AVG(cost)
FROM trips;

-- Task 8:
SELECT *
FROM riders
WHERE total_trips < 500;

-- Task 9:
SELECT COUNT(*)
FROM cars
WHERE status = 'active';

-- Task 10:
SELECT *
FROM cars
ORDER BY trips_completed DESC
LIMIT 2;