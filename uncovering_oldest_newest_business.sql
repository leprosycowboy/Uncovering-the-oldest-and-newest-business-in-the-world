-- Uncovering the Oldest and Newest Businesses in the World

-- Identify the oldest and newest founded organizations and their countries of origin.
SELECT
    b.business AS organization_name,
    b.year_founded,
    c.country
FROM businesses AS b
JOIN countries AS c
    ON b.country_code = c.country_code
WHERE
    b.year_founded = (SELECT MIN(year_founded) FROM businesses)
    OR
    b.year_founded = (SELECT MAX(year_founded) FROM businesses)
ORDER BY b.year_founded;

-- Count the number of businesses founded before the year 1000 and identify their countries.
SELECT
    b.business,
    b.year_founded,
    c.country
FROM businesses AS b
JOIN countries AS c
    ON b.country_code = c.country_code
WHERE b.year_founded < 1000
ORDER BY b.year_founded;

-- Analyze the distribution of businesses across different continents and categories.
SELECT
    c.continent,
    cat.category,
    COUNT(b.business) AS total_businesses
FROM businesses AS b
JOIN countries AS c
    ON b.country_code = c.country_code
JOIN categories AS cat
    ON b.category_code = cat.category_code
GROUP BY c.continent, cat.category
ORDER BY total_businesses DESC;

-- Count the number of businesses in each continent and category.
SELECT 
    c.continent,
    cat.category,
    COUNT(b.business) AS business_count
FROM businesses AS b
JOIN countries AS c
    ON b.country_code = c.country_code
JOIN categories AS cat
    ON b.category_code = cat.category_code
GROUP BY c.continent, cat.category
ORDER BY business_count DESC;

-- Examine trends over time to see how business creation has evolved in different regions.
SELECT 
    c.continent,
    b.year_founded,
    COUNT(b.business) AS businesses_founded
FROM businesses AS b
JOIN countries AS c
    ON b.country_code = c.country_code
GROUP BY c.continent, b.year_founded
ORDER BY b.year_founded;

-- Identify the most popular business categories in each country.
SELECT 
    c.country,
    cat.category,
    COUNT(b.business) AS total_businesses
FROM businesses AS b
JOIN countries AS c
    ON b.country_code = c.country_code
JOIN categories AS cat
    ON b.category_code = cat.category_code
GROUP BY c.country, cat.category
ORDER BY total_businesses DESC;

-- Analyze the average age of businesses in different categories to understand industry maturity.
SELECT 
    cat.category,
    AVG(YEAR(GETDATE()) - b.year_founded) AS avg_business_age
FROM businesses AS b
JOIN categories AS cat
    ON b.category_code = cat.category_code
GROUP BY cat.category
ORDER BY avg_business_age DESC;

-- Investigate if older businesses are more likely to be found in specific countries or regions.
SELECT 
    c.country,
    AVG(YEAR(GETDATE()) - b.year_founded) AS avg_business_age
FROM businesses AS b
JOIN countries AS c
    ON b.country_code = c.country_code
GROUP BY c.country
ORDER BY avg_business_age DESC;
