-- Simple select to filter data with condition
SELECT artfile
FROM artwork
WHERE artdescription in ('flowers' , 'flower');

-- Diving into join statements combine data with an inner join
SELECT fname , lname , artist.title
FROM artist 
INNER JOIN artwork ON artist.title = artwrok.title;

-- A left join with a final filter to organize by magazine name in decending order
SELECT magazine.magazineName , magazine.subscriberLastName , magazine.subscriberFirstName
FROM magazine 
LEFT JOIN subscriber ON magzine.subscriberLastName = subscriber.subscriberLastName , magazine.subscriberFirstName = subscriber.subscriberFirstName;
ORDER BY magazineName decs;

-- Joining tables with an AND statment
SELECT employees.last_name , employeesfirst_name
FROM employees
LEFT JOIN dept_emp.emp_no = employees.last_name AND employees.first_name;

-- A quik filter that finds very specific data
SELECT first_name 
FROM employees 
WHERE first_name = 'Berni'
ORDER BY salary asc;



















