
SELECT COUNT(me.emp_no),me.title
FROM mentorship_eligibilty as me
GROUP BY me.title
ORDER BY count DESC;


DROP TABLE emp_dept_title;
DROP TABLE counting_title_dept;
SELECT ce.emp_no,
	d.dept_name,
	ti.title
INTO emp_dept_title
FROM current_emp as ce
INNER JOIN dept_emp AS de
ON (ce.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no)
INNER JOIN titles as ti
ON (ce.emp_no = ti.emp_no)
ORDER BY d.dept_name,ti.title;

SELECT edt.dept_name,
	edt.title,
	COUNT(edt.emp_no)
-- INTO counting_title_dept
FROM emp_dept_title as edt
GROUP BY edt.dept_name,edt.title
ORDER BY edt.dept_name,edt.title;