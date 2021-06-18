-- DELIVERABLE ONE

-- Create our first table
SELECT
	e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM Employees e
	JOIN Title t USING (emp_no)
WHERE
	e.birth_date BETWEEN '1952-01-01' AND '1955-12-31';

-- Check the retirement_titles against the module checkpoint / photo
SELECT
	*
FROM retirement_titles
ORDER BY emp_no
LIMIT 10;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no ASC, to_date  DESC;

-- Check the unique_titles against the module checkpoint / photo
SELECT *
FROM unique_titles;

-- Retrieve the number of employees by their most recent job title who are about to retire
SELECT
	COUNT(title),
	title
INTO retiring_titles
FROM unique_titles
GROUP BY 2
ORDER BY 1 DESC;

-- Check the retiring_titles against the module checkpoint / photo
SELECT *
FROM retiring_titles;


-- DELIVERABLE TWO

-- Create a Mentorship Eligibility table 
SELECT DISTINCT ON (e.emp_no)
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO Mentorship_Eligibility
FROM Employees e
	JOIN dept_emp de USING (emp_no)
	JOIN title t USING (emp_no)
WHERE
	de.to_date = ('9999-01-01') AND
	(e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;