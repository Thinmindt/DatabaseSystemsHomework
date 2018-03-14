SELECT Type, sum(Amount) FROM Expense GROUP BY Type ORDER BY sum(Amount);
SELECT Dept.Name, count(Trip.ID) FROM Employee, Trip, Dept WHERE Employee.ID = Trip.Emp_ID AND Employee.Dept = Dept.Code GROUP BY Dept.Name;
SELECT count(*) FROM Trip WHERE Dep_Date = Return_Date;
select name, dep_date, to_city, Submitted from employee, trip, expense where employee.id = trip.emp_id and trip.id = expense.trip_id;
select trip_id, total, est_cost from trip, (select trip_id, sum(amount) as total from expense group by trip_id) where total > est_cost;