from sweden_life_table_1x10
select
  decade_start_year,
  life_total_avg: round(sum(age * life_cnt) / sum(life_cnt), 1),
  life_over_5: round(sum(age * life_cnt) filter (where age > 5) / sum(life_cnt) filter (where age > 5), 1),
  life_over_15: round(sum(age * life_cnt) filter (where age > 15) / sum(life_cnt) filter (where age > 15), 1)
group by all
order by 1
;