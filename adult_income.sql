--Q1.What is the main workforce represented in the survey?
SELECT age, count(*) FROM cleaned_data
GROUP BY age
ORDER BY count(*) DESC
LIMIT 10;
-- Adults from 27-37

--Q2.Is there a difference in this value for females?
SELECT age,gender, count(*) FROM cleaned_data
WHERE gender == "Female"
GROUP BY age
ORDER BY count(*) DESC
LIMIT 10; 
-- Female: 22-40

--Q3.Is there a difference in this value for males? 
SELECT age,gender, count(*) FROM cleaned_data
WHERE gender == "Male"
GROUP BY age
ORDER BY count(*) DESC
LIMIT 10;
--Male: 27-37

--Q4.There are a limited amount of people above 89 years old in the survey. What did they reported as occupation? 
SELECT age, occupation,COUNT(*)*100/sum(count(*)) over() AS "Percentage"
FROM cleaned_data
WHERE age > 89
GROUP BY occupation
ORDER BY count(*) DESC
LIMIT 5;
--Exec-managerial(20%),Prof-specialty(17%),Adm-clerical(13%),Craft-repair (11%), other (13%)


--Q5.What is the race distribution along the sample survey? 
SELECT race , COUNT(*)*100/sum(count(*)) over() AS "Percentage"
FROM cleaned_data
GROUP BY race
ORDER BY COUNT(*) DESC;
-- White(82%), Black(11%), Asian,Pac,Islander (1%), Other (1%).

--Q6.What is the race distribution on high income earners? 
SELECT race, COUNT(*)*100/sum(count(*)) over() AS "Percentage"
FROM cleaned_data
WHERE income = 1
GROUP BY race
ORDER BY count(*) DESC;
---- White(87%)(inc by 5%), Black(6%)(dec by 5%), Asian,Pac,Islander (4%) (inc by 3%), Other (0%)[No Amer-Indian-Eskimo or Other in highlev).

--Q7.What is the race distribution on low income earners? 
SELECT race, COUNT(*)*100/sum(count(*)) over() AS "Percentage"
FROM cleaned_data
WHERE income = 0
GROUP BY race
ORDER BY count(*) DESC;
-- White(80%) (dec by 7%), Black(13%)(inc by 2%), Asian,Pac,Islander (3%)(inc by 2%), Other (1%)(equal).

--Q8.Own-child and marital status on high income earners
SELECT relationship,marital_status,gender,COUNT(*)*100/sum(count(*)) over() AS "Percentage" 
FROM cleaned_data
WHERE relationship = "Own-child" AND income = 1
GROUP BY marital_status; 
-- 60% are Male with child but never-married, followed by 21% of Male married and 14% of Female divorced.

--Q10.Own-child and marital status on low income earners 
SELECT relationship,marital_status,gender,COUNT(*)*100/sum(count(*)) over() AS "Percentage"
FROM cleaned_data
WHERE relationship = "Own-child" AND income = 0
GROUP BY marital_status;
-- 84% are also male with child that never married, followed by an 8% of divorced male. Very few single moms in general. 
--Q11 Unique categories of marital status and relationship
SELECT relationship,marital_status,COUNT(*)*100/sum(count(*)) over() AS "Percentage" 
FROM cleaned_data
WHERE income = 1
GROUP BY relationship, marital_status
ORDER BY "Percentage" DESC;
--High Income relations in female
SELECT CONCAT(relationship, marital_status), gender, COUNT(*)*100/sum(count(*)) over() AS "Percentage" 
FROM cleaned_data
WHERE income = 1 AND gender = "Female"
GROUP By relationship,marital_status
ORDER BY "Percentage" DESC;
--HI relations in male
SELECT CONCAT(relationship, marital_status), gender, COUNT(*)*100/sum(count(*)) over() AS "Percentage" 
FROM cleaned_data
WHERE income = 1 AND gender = "Male"
GROUP By relationship,marital_status
ORDER BY "Percentage" DESC;
--All populations
SELECT CONCAT(relationship, marital_status), COUNT(*)*100/sum(count(*)) over() AS "Percentage" 
FROM cleaned_data
GROUP By relationship,marital_status
ORDER BY "Percentage" DESC;
--Low income male
SELECT CONCAT(relationship, marital_status), gender, COUNT(*)*100/sum(count(*)) over() AS "Percentage" 
FROM cleaned_data
WHERE income = 0 AND gender = "Male"
GROUP By relationship,marital_status
ORDER BY "Percentage" DESC;
--Low income female
SELECT CONCAT(relationship, marital_status), gender, COUNT(*)*100/sum(count(*)) over() AS "Percentage" 
FROM cleaned_data
WHERE income = 0 AND gender = "Female"
GROUP By relationship,marital_status
ORDER BY "Percentage" DESC;