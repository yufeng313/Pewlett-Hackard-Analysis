# Pewlett-Hackard-Analysis
Exploring Databases with SQL
## Overview of the analysis
In this challenge, we have 2 major tasks, 1) determine the number of retiring employees per title, and 2) identify employees who are eligible to participate in a mentorship program. Then, I’ll write a report that summarizes the analysis and helps the manager prepare for the upcoming “silver tsunami”.
## Resources
Data source: departments.csv, dept_manager.csv, dept_emp, salaries.csv, employees.csv, titles.csv<br/>
Software: Postgresql 11.16   Pgadmin4 6.11
## Results
1.Use Quick DBD to show the data type and relationships between all the tables. 
![EmployeeDB](https://user-images.githubusercontent.com/107179765/181336128-9e5e6a25-7721-4592-987b-77f86c36ac42.png)<br/>
2.a) Create a Retirement Titles table that holds the most recent title of each current employee who was born between 1952-01-01 and 1955-12-31. Then create a table that has the number of retirement-age employees by most recent job title. <br/>
![1unique_titles output](https://user-images.githubusercontent.com/107179765/181343721-62d93e8d-8abd-4e7c-a2de-34449e9ba056.png)
![2retiring_titles output](https://user-images.githubusercontent.com/107179765/181343738-9942333a-3de2-40e7-83f9-1a2650a4f5e5.png)<br/>
  b) Create a mentorship-eligibility table that holds the current employees who were born between 1965-01-01 and 1965-12-31. <br/>
![3mentorship_eligibilty output](https://user-images.githubusercontent.com/107179765/181344981-2570b8bd-ca6e-4375-b1f5-1d32c48e626e.png)<br/>
From the two analyses, we can see that:
1.	There are 72,458 rows in unique_titles.csv, which means there are 72,458 employees need to retire. The company will have to create an efficient recruitment strategy to fill this huge job vacancy.
2.	Compare with 72,458 employees in the unique_titles.csv, there are 133,776 employees in retirement_titles.csv with multiple titles, which means each employee changes their title once on average.
3.	From the retiring_titles.csv, we can see that, the title of most employees who are going to retire are senior engineer and senior staff. In detail, 35.77% of the titles eligible for retirement are Senior Engineer and 34.40% of the tiles are Senior Staff, taking up almost 70% percentage of the list. While there are 12.81% belong to Engineer, 10.54% belong to Staff, 4.97% for Technique Leader, 1.5% for Assistant Engineer and a negligible count for Manager's.
4.	There are 1,549 rows in mentorship_eligibilty.csv, which means only 2.13% (1,549/72,458*100%=2.13%) of all the retiring employees qualified to be a mentor. So, the company may need more employees to participate in the mentorship program.
## Summary
### Questions
- Q: How many roles will need to be filled as the "silver tsunami" begins to make an impact?<br/>
  A: There are 72,458 roles will need to be filled as the "silver tsunami" begins.<br/>
- Q: Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?<br/>
  A: There are 72,458 roles will need to be filled while only 1,549 retirees are qualified mentors, I don’t think it’s enough for mentoring the next generation of the company.
### Insights
Based on the results, there are 2 additional queries or tables I'd like to share with Bobby’s manager for the “silver tsunami” as many current employees reach retirement age.<br/>
1.To get the number of positions that will be open in next four years, we can create a query to see how many staff will retire per department. Since every department will be affected in some way, this query will give us more precise numbers on how many roles will need to be filled in each department. Simply by using the emp_no from current_emp.csv and make an inner join with the department name and titles, we can count the employee number of each department per title. Here are the queries and output below:<br/>
![code of insight 1](https://user-images.githubusercontent.com/107179765/181346587-24b62af2-730b-46b1-8f50-b23460441397.png)
![output of insight 1](https://user-images.githubusercontent.com/107179765/181346654-807e52e0-9c77-4395-9c88-a587b69d809f.png)<br/>
2.We can also create a query to retrieve the number of employees by their most recent job title who are qualified in mentorship program.By doing this,we will know how many employees can mentor in each title and then assign tasks for each qualified, retirement-ready employees.
![insight table 2](https://user-images.githubusercontent.com/107179765/181348801-53b2e183-6e6d-4c66-9e00-3f8840339799.png)
