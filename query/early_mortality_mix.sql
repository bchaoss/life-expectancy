from sweden_life_table_1x10
select
  decade_start_year,
  early_death_mix: round( sum(case when age < 5 then life_cnt else 0 end) / sum(life_cnt) * 100 , 1)
group by all
order by 1
;