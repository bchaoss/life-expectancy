create or replace view sweden_deaths_1x10 AS (
  from read_csv_auto('./data/Sweden/Deaths_1x10.csv')
  select
    Decade: Year,
    Decade_Start_Year: SUBSTRING(Year FROM 1 FOR 4) ::INT,
    Age: case when Age = '110+' then '110' else Age END ::INT,
    Death_Cnt: Total
);
