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

-- A function that will update the subscriber info to show mare info about dates
UPDATE subscriber
SET 
	subscribtionStartDate = subscriberKey,
    subscriptionLength = (DATENOW() - subscriptionStartDate),
    subscriptionEnd = (subscriptionKey + subscriptionLength);
    
-- Preforming math on data in SQL 
update product
set price = listprice / 3
where list_price = (Round(price , 2));

-- The following commands are used to delete data // use very carefully 
ALTER TABLE product
DROP COLUMN list_price;

-- Creating a table 
CREATE TABLE IF NOT EXISTS `mydb`.`Student` (
  `student_id` INT NOT NULL,
  `fname` VARCHAR(45) NOT NULL,
  `lname` VARCHAR(45) NULL,
  `gender` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `state` VARCHAR(45) NOT NULL,
  `dob` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`student_id`))
ENGINE = InnoDB;

















