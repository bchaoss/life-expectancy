with base AS (
  from sweden_deaths_1x10
  select
    decade_start_year,
    age_group: CASE WHEN Age < 5 THEN '0-4'
                    WHEN Age >= 70 THEN '70+'
                    ELSE '5-69' END,
    death_cnt
),

pivoted AS (
  PIVOT base
  on age_group                        
  using ROUND(SUM(death_cnt), 2)      
  order by 1
)

from pivoted
select *
;
