# Uncovering the oldest and newest business in the world

This project contains a series of SQL queries designed to analyze global business data. The analysis covers various aspects of business distribution, industry maturity, and geographic trends.

## Table of Contents

1. [Introduction](#introduction)
2. [Database Schema](#database-schema)
3. [Queries](#queries)

## Introduction

The goal of this project is to uncover insights into global business trends by examining data related to business founding years, categories, and geographic locations. The SQL queries included in this project help to answer questions related to the oldest and newest businesses, distribution across continents, popular categories, and the age of businesses in different industries.

## Database Schema

The project assumes the existence of three primary tables:

1. **countries**
   - `country_code`: The unique identifier for each country.
   - `country`: The name of the country.
   - `continent`: The continent to which the country belongs.

2. **businesses**
   - `business`: The name of the organization.
   - `year_founded`: The year the business was founded.
   - `category_code`: The category code associated with the business.
   - `country_code`: The country code where the business is located.

3. **categories**
   - `category_code`: The unique identifier for each category.
   - `category`: The name of the business category (e.g., Technology, Retail, etc.).

## Queries

The SQL file (`uncovering_oldest_newest_business.sql`) contains the following queries:

1. **Oldest and Newest Businesses**
   - Identify the oldest and newest founded organizations and their countries of origin.

2. **Businesses Founded Before 1000**
   - Count the number of businesses founded before the year 1000 and identify their countries.

3. **Distribution Across Continents and Categories**
   - Analyze how businesses are distributed across different continents and within various categories.

4. **Business Counts by Continent and Category**
   - Count the number of businesses in each continent and category.

5. **Trends in Business Creation Over Time**
   - Examine trends over time to see how business creation has evolved in different regions.

6. **Most Popular Business Categories by Country**
   - Identify the most popular business categories in each country.

7. **Industry Maturity Analysis**
   - Analyze the average age of businesses in different categories to understand industry maturity.

8. **Geographic Distribution of Older Businesses**
   - Investigate if older businesses are more likely to be found in specific countries or regions.

