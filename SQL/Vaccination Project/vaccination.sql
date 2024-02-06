select Death.location, Death.population, Sum(Vac.new_vaccinations) as sum_vac
FROM Death
join Vac 
	on Death.location = Vac.location
    and Death.date = Vac.date
GROUP by Death.location
order by Sum(Vac.new_vaccinations) desc