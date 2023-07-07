CREATE DATABASE job_analysis_project;

USE job_analysis_project;

SELECT * FROM jobs;
SELECT * FROM companies;
SELECT * FROM locations;
SELECT * FROM skills;

-- Analysis-1: Identifing top 50 Companies, which are hiring most aggressively, thereby also categorising them as startup & corporations.
SELECT J.company_name, estab_year, COUNT(job_id) AS vacancies,
CASE WHEN estab_year < 2013 THEN 'Corporation' ELSE 'Startup' END as company_category
FROM jobs AS J LEFT JOIN companies AS C ON J.company_name = C.company_name
WHERE estab_year > 1960
GROUP BY 1, 2
ORDER BY vacancies DESC
LIMIT 20;
-- Insights: Corporations or the companies established more than 10 years ago from today are hiring more aggressively than startups

-- Analysis-2: Identifying top 10 skills desired for Data Science and Analytics industry
SELECT skills, COUNT(S.job_id) AS number_of_jobs_seeking_the_skill
FROM skills AS S JOIN jobs AS J on S.job_id = J.job_id
WHERE industry = 'Data Science and Analysis'
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;
-- Insights: Python and SQL still remain the most in-demand skills for Data Science and Analysis, followed by Machine Learning.
-- Insights: Gone are those days when just having good knowledge of excel was enough to aspire for the said field.

-- Analysis-3: Knowing the average rating of companies established in every year
SELECT company_category, ROUND(AVG(emp_overall_rating), 2) FROM
(SELECT estab_year, emp_overall_rating,
CASE WHEN estab_year < 2013 THEN 'Corporation' ELSE 'Startup' END company_category
FROM companies) AS A
GROUP BY 1
ORDER BY 2 DESC;
-- Insights: It is visible that employees working with Startups have better overall experience than those working in Corporations

-- Analysis-4: Knowing the top 5 companies having best overall ratings by employees working in companies having different company sizes
SELECT employees_count AS company_size, company_name, emp_overall_rating
FROM (SELECT *, ROW_NUMBER() OVER(PARTITION BY employees_count ORDER BY emp_overall_rating DESC) AS rank_ FROM companies) AS C
WHERE rank_ <= 5;
-- Insights: We can see that some of the well known companies, such as Delta, Uber, PhonePe, Jungless Games, Mahindra Insurance, etc,
-- belonging to different company-size categories, are topping the list of overall rating by their employees

-- Analysis-5: Knowing the top locations inviting most vacancies across different industries
SELECT location, industry, COUNT(L.job_id) AS number_of_vacancies
FROM jobs AS J JOIN locations as L ON J.job_id = L.job_id
WHERE location != 'Work From Home'
GROUP BY location, industry
HAVING number_of_vacancies >= 10
ORDER BY 1, 3 DESC, 2;
-- Insights: Bangalore is the topping the list with having most number of job opportunities
-- Insights: Software Engineering is highest recruiting industry, almost across all locations