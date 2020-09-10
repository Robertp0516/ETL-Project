SELECT police_killings.city,poverty_census.city,police_killings."Victims_age", 
	   police_killings."Victims_race", police_killings."Victims_gender",
	   poverty_census."Total_Est_Population_Below_Poverty_Level", police_killings."Year"
	   
FROM police_killings
JOIN poverty_census
ON police_killings.city = poverty_census.city;