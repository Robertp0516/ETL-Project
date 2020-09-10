-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "police_killings" (
    "Victims_name" VARCHAR   NOT NULL,
    "Victims_age" INT   NOT NULL,
    "Victims_gender" VARCHAR   NOT NULL,
    "Victims_race" VARCHAR   NOT NULL,
    "city" VARCHAR   NOT NULL,
    "state" VARCHAR   NOT NULL,
    "Year" VARCHAR   NOT NULL
);

CREATE TABLE "poverty_census" (
    "city_id" INT   NOT NULL,
    "Total_Estimated_Population" INT   NOT NULL,
    "Total_Est_Population_Below_Poverty_Level" INT   NOT NULL,
    "Total_Percent_Population_Under_Poverty_Level" INT   NOT NULL,
    "city" VARCHAR   NOT NULL,
    CONSTRAINT "pk_poverty_census" PRIMARY KEY (
        "city"
     )
);

ALTER TABLE "police_killings" ADD CONSTRAINT "fk_police_killings_city" FOREIGN KEY("city")
REFERENCES "poverty_census" ("city");

