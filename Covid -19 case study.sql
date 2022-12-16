/*difficulties that faced:
In the Covid_19 case study `row data` was in `date format` but was not SQL date Format type "YYYY-MM-DD" previously, 
so I tried to UPLOAD Dates attribute by writing ----` Dates` Date syntax and running the query but  0000-00-00 values resulted.
After conversion `excel date format dd-mm-yy to `date Format type "YYYY-MM-DD"` then correct dates showed up in MYSQL */ 


create database covid_19 ;
use covid_19;

create table vacc_detail (
iso_code  varchar(10),
continent varchar(1000),
location varchar(1000),
`Dates` Date,
total_cases	bigint,
people_vaccinated bigint,
people_fully_vaccinated bigint,
total_boosters	bigint,
population bigint,
population_density	float,
median_age      float(2)
);


create table case_detail (
iso_code  varchar(10),
continent varchar(1000),
location varchar(1000),
Dates  Date,
total_cases	bigint,
new_cases bigint,
total_deaths bigint,
new_deaths bigint,
population bigint);




select * from case_detail ;
select * from vacc_detail;




/*1.  Write a quary year wise covid-19 vaccination and death rate  */

select year(Dates),100* max(people_fully_vaccinated)/max(population) as "% of fullyvaccination year-wise"
from  vacc_detail
group by year(Dates);




/*2. percentage people of fully vaccinated*/

select iso_code ,location, population, 100* max(people_fully_vaccinated)/max(population)  as fullyvaccPercentage
from vacc_detail
where iso_code not like "OWID%" 
group by location
order by population desc , fullyvaccPercentage desc
limit 20;

/*3. likelihood of being infected by covid-19 */

select location, population, 100* max(total_cases)/max(population)  as InfectedPercentage
from case_detail
where iso_code not like "OWID%" 
group by Iso_code
order by InfectedPercentage desc
limit 10;


/*4. Continent wise Covid-19 Report*/
select c.continent, max(c.total_cases) as TotalCases , max(c.total_deaths) as TotalDeaths, max(v.people_fully_vaccinated) as fullyVaccinated
from case_detail c , vacc_detail v
where c.iso_code= v.iso_code and c.continent=v.continent and c.total_cases=v.total_cases and 
c.iso_code not like "OWID%" 
group by c.continent;


/*5. location wise Death rate*/
select location , 100* max(total_deaths)/max(population) as PercentageDeath
from case_detail
where iso_code not like "OWID%" 
group by location
order by PercentageDeath desc;


/*6. Country-Wise higher death rate than the Global death rate  */

SET @GLobalPerDeath=(Select  100* avg(total_deaths)/ avg(population) as globalDeathPercentage from case_detail where location="World");

select location , iso_code, 100* avg(total_deaths)/avg(population) as AvgpercentageDeath
from case_detail
where iso_code not like "OWID%" 
group by location , iso_code
having AvgpercentageDeath > round(@GLobalPerDeath,4);


