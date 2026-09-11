from sweden_life_table_1x10
select 
  age,
  life_expectancy_pct: sum(life_cnt) / 100000 * 100
where decade_start_year = 1751
group by all
having life_expectancy_pct > 0
order by 1
;