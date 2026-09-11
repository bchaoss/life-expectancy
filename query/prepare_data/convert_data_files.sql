-- Convert orginal downloads txt files to readable format.
COPY (
  FROM read_csv(
    './data/Sweden/' || getenv('FILE_NAME') || '.txt',
    skip = 2,
    header = false,
    columns = {'column0': 'VARCHAR'}
    )
  SELECT regexp_replace(trim(column0), '\s+', ',', 'g')
) TO ('./data/Sweden/' || getenv('FILE_NAME') || '.csv') (FORMAT CSV, HEADER false, QUOTE '')
;