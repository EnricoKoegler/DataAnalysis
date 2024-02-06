
SELECT location,  max(total_deaths) as total_deaths
FROM Death 
where continent is not null
GROUP by location
ORDER By total_deaths desc

/*
SELECT location,  max(total_deaths) as total_deaths
FROM Death 
where continent is null
GROUP by location
ORDER By total_deaths desc
*/