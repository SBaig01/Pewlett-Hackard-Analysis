-- Table 1
-- SELECT , e.first_name, e.last_name, t.title, t.from_date, t.to_date
-- INTO retirement_titles
-- FROM employees as e
--     LEFT JOIN titles as t 
--     ON (e.emp_no = t.emp_no)
-- WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- ORDER by e.emp_no;

-- Table 2
-- Use Dictinct with Orderby to remove duplicate rows
-- SELECT DISTINCT ON (r.emp_no) r.emp_no,
-- r.first_name, 
-- r.last_name, 
-- r.title
-- INTO Unique_Titles
-- FROM retirement_titles AS r
-- WHERE r.to_date = ('9999-01-01')
-- ORDER BY emp_no, to_date DESC;

-- Table 3
-- SELECT * FROM unique_titles
-- SELECT COUNT(ut.title), ut.title
-- INTO retiring_titles
-- FROM unique_titles as ut
-- GROUP BY ut.title
-- ORDER BY count(ut.title) DESC;

-- Mentorship Eligibility table
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name, 
	e.last_name, 
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibilty
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;






