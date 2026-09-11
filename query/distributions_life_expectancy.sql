with base AS (
  from sweden_life_table_1x10
  select
    decade_start_year,
    age_group: CASE WHEN Age < 10 THEN '0-9'
                    WHEN Age >= 90 THEN '90+'
                    ELSE (FLOOR(Age / 10) * 10)::INTEGER::VARCHAR || '-' || (FLOOR(Age / 10) * 10 + 9) ::INTEGER::VARCHAR
                    END,
    life_cnt
),

pivoted AS (
  PIVOT base
  on age_group                        
  using ROUND(SUM(life_cnt), 1)      
  order by 1
)

from pivoted
select *
;
