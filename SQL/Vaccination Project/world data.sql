select date, sum(new_cases) as cases, sum(new_deaths) as deaths, Round((100 * sum(new_deaths)/sum(new_cases)), 2) as rate
from Death
where continent is not NULL
GROUP by date
order by 1, 2