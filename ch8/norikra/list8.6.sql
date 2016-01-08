SELECT
　COUNT(*) AS count
FROM nginx_access.win:time_batch(1 min)
WHERE uri = '/' OR uri = '/index.html'
