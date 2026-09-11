from sweden_life_table_1x10
select
  decade_start_year,
  mean_total: round(sum(age * life_cnt) / sum(life_cnt), 1),
  mean_over_15: round( sum(age * life_cnt) filter (where age >= 15) / sum(life_cnt) filter (where age >= 15) , 1),
  mode_over_15: first(age order by life_cnt desc, age) filter (where age >= 15 and life_cnt > 0)
group by all
order by 1
;