SELECT location, max(total_deaths) as death, max(total_cases) as cases, Round((100 * max(total_deaths)/max(total_cases)), 2) as rate
FROM Death 
where continent is not null
GROUP by location
ORDER By rate desc