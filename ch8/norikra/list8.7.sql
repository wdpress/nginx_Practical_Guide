SELECT
　COUNT(1, status REGEXP '^2..$') AS count_2xx,
　COUNT(1, status REGEXP '^3..$') AS count_3xx,
　COUNT(1, status REGEXP '^4..$') AS count_4xx,
　COUNT(1, status REGEXP '^5..$') AS count_5xx
FROM nginx_access.win:time_batch(1 min)
