SELECT COUNT(*) 
FROM data_analyst_jobs;
---1793


SELECT *
FROM data_analyst_jobs
LIMIT 10;
---ExxonMobil

SELECT COUNT(*)
FROM data_analyst_jobs
WHERE location = 'TN' or location = 'KY';
---21 TN ---6 KY

SELECT COUNT(*)
FROM data_analyst_jobs
WHERE location = 'TN' AND star_rating > 4.0;
---3

SELECT COUNT(*)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 and 1000;
---151

SELECT DISTINCT location as state,AVG(star_rating) as avg_rating
FROM data_analyst_jobs
WHERE location IS NOT NULL
GROUP BY location
ORDER BY avg_rating DESC;
---NE

SELECT COUNT(distinct title)
FROM data_analyst_jobs;
---881

SELECT count(distinct title)
FROM data_analyst_jobs
WHERE location = 'CA';
---230

SELECT company,AVG(star_rating)
FROM data_analyst_jobs
WHERE review_count > 5000
AND company IS NOT NULL
GROUP BY company;
---40

SELECT review_count,company,AVG(star_rating) as avg_star_rating
FROM data_analyst_jobs
WHERE review_count > 5000
AND company IS NOT NULL
GROUP BY review_count, company
ORDER BY avg_star_rating DESC , review_count DESC;
---Kaiser Permanente 4.19 , 8164 Reviews

SELECT DISTINCT title
FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%';
---774

SELECT DISTINCT title
FROM data_analyst_jobs
WHERE title NOT ILIKE '%Analyst%'
AND title NOT ILIKE '%Analytics%';
---Tableau

SELECT sum(days_since_posting) as hard_to_fill,domain 
FROM data_analyst_jobs
WHERE domain IS NOT NULL
AND days_since_posting > 21
GROUP BY domain
ORDER BY hard_to_fill DESC;

SELECT COUNT(*)
FROM data_analyst_jobs
WHERE domain = 'Consulting and Business Services'
and days_since_posting > 21; 
---110

SELECT COUNT(*)
FROM data_analyst_jobs
WHERE domain = 'Health Care'
and days_since_posting > 21; 
---96

SELECT COUNT(*)
FROM data_analyst_jobs
WHERE domain = 'Internet and Software'
and days_since_posting > 21; 
---84

SELECT COUNT(*)
FROM data_analyst_jobs
WHERE domain = 'Banks and Financial Services'
and days_since_posting > 21; 
---77






