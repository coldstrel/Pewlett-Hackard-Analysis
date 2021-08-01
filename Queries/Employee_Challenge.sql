1. 
SELECT emp_no, first_name, last_name
FROM employees;
2.
SELECT title, from_date, to_date
FROM titles;
3, 4, 5. 
SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS t
ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no

8, 9, 10, 11, 12.
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no ,first_name, title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

15, 16, 17, 18.
SELECT COUNT(title),title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

