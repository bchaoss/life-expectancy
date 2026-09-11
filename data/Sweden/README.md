# Data source

[Human Mortality Database (HMD) — Sweden](https://www.mortality.org/Country/Country?cntr=SWE)

* Required: **Life tables — Total (both sexes) — 1x10**

  A life table summarizes age-specific mortality rates and is used to estimate life expectancy and other measures of survival.

  Download the data file `bltper_1x10.txt`.

  "1x10" refers to the data granularity: age intervals of 1 year × year intervals of 10 years.

* Optional: **Deaths — 1x10**

  `Deaths_1x10.txt` provides annual death counts by age group, which can be used as an additional reference.

Available dates: 1751 - 2024

See [HMD Explanatory Notes](https://www.mortality.org/Data/ExplanatoryNotes) for data definitions and documentation.

## Notes

The SQL queries in this repository use DuckDB-specific syntax and may require modifications to run on other SQL engines.
