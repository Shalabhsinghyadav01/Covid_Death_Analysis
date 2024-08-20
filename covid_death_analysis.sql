select *
from Portfolio_project.coviddeaths_utf8_with_null
order by 3,4;

-- select *
-- from Portfolio_project.covidvaccinations_utf8
-- order by 3,4;

-- select the data 

select location, date, total_cases, new_cases,total_deaths,population
from Portfolio_project.coviddeaths_utf8_with_null
order by 1,2;


select location, date, total_cases,total_deaths,(total_deaths/total_cases)*100 as death_percentage
from Portfolio_project.coviddeaths_utf8_with_null
where location like '%states%'
order by 1,date;




-- toatal cases vs population 

select location, date,population, total_cases,(total_cases/population)*100 as percent_population
from Portfolio_project.coviddeaths_utf8_with_null
where location like '%states%'
order by 1,2;

select location,population, max(total_cases)as highest_infection_count,(max(total_cases)/population)*100 as percent_population_infected 
from Portfolio_project.coviddeaths_utf8_with_null
-- where location like '%states%'
group by location, population
order by percent_population_infected desc;










select location, max(cast(total_deaths as signed ))as total_death_count
from Portfolio_project.coviddeaths_utf8_with_null
-- where location like '%states%'
where continent is not null
group by location
order by total_death_count desc;



-- by continent break down 



select continent, max(cast(total_deaths as signed ))as total_death_count
from Portfolio_project.coviddeaths_utf8_with_null
-- where location like '%states%'
where continent is not null
group by continent
order by total_death_count desc;


-- global numbers 



select  sum(new_cases) as total_cases,sum(cast(new_deaths as signed )) as totoa_death,sum(cast(new_deaths as signed ))/ sum(new_cases)*100 as deathPercentage 
from Portfolio_project.coviddeaths_utf8_with_null
-- where location like '%states%'
where continent is not null 
-- group by date 
order by 1,2;


select dea.continent, dea.location,dea.date,dea.population,dea.new_vaccinations, sum(cast(dea.new_vaccinations as signed)) over (partition by dea.location order by dea.location,dea.date ) as rolling_people_vacinated
from Portfolio_project.coviddeaths_utf8_with_null as dea
join Portfolio_project.covidvaccinations_utf8_with_null vac
	on dea.location = vac.location
    and dea.date = vac.date
where dea.continent is not null 
order by 2,3;




with popvsvac (continent , location, date , population,new_vaccinations , rolling_people_vacinated)
as 
(
	select dea.continent, dea.location,dea.date,dea.population,dea.new_vaccinations, sum(cast(dea.new_vaccinations as signed)) over (partition by dea.location order by dea.location,dea.date ) as rolling_people_vacinated
	from Portfolio_project.coviddeaths_utf8_with_null as dea
	join Portfolio_project.covidvaccinations_utf8_with_null vac
		on dea.location = vac.location
		and dea.date = vac.date
	where dea.continent is not null 
	order by 2,3
)
select * , (rolling_people_vacinated/population)*100 
from popvsvac;





/*

Queries used for Tableau Project

*/



Select SUM(new_cases) as total_cases, SUM(cast(new_deaths as signed)) as total_deaths, SUM(cast(new_deaths as signed))/SUM(New_Cases)*100 as DeathPercentage
From Portfolio_project.coviddeaths_utf8_with_null
-- Where location like '%states%'
where continent is not null 
-- Group By date
order by 1,2;




-- European Union is part of Europe

Select location, SUM(cast(new_deaths as signed)) as TotalDeathCount
From Portfolio_project.coviddeaths_utf8_with_null
-- Where location like '%states%'
Where continent is null 
and location not in ('World', 'European Union', 'International')
Group by location
order by TotalDeathCount desc;










Select Location, Population, MAX(total_cases) as HighestInfectionCount,  Max((total_cases/population))*100 as PercentPopulationInfected
From Portfolio_project.coviddeaths_utf8_with_null
-- Where location like '%states%'
Group by Location, Population
order by PercentPopulationInfected desc;







Select Location, Population,date, MAX(total_cases) as HighestInfectionCount,  Max((total_cases/population))*100 as PercentPopulationInfected
From Portfolio_project.coviddeaths_utf8_with_null
-- Where location like '%states%'
Group by Location, Population, date
order by PercentPopulationInfected desc;


