# 第8章 Webサーバの運用とメトリクスモニタリング

## 8.1 nginxのステータスモニタリング

- [stub_statusの設定 (リスト8.1)](nginx/stub_status_setting-nginx.conf)
- [Muninの設定](munin/munin-node.conf)

## 8.2 アクセスログの記録

- [TSV形式のログ出力](nginx/tsv-log-nginx.conf)
- [LTSV形式のログ出力](nginx/ltsv-log-nginx.conf)
- [Combined形式のログ出力](nginx/combined-log-nginx.conf)

## 8.4 Fluentd、Norikra、GrowthForecastによるメトリクスモニタリング

- [nginxのLTSV形式のアクセスログを入力し、他サーバに転送する設定(リスト8.3、リスト8.4)](fluent/forward-fluent.conf)
- [受け取ったレコードをNorikraに入力し、結果をGrowthForecastに出力する設定(リスト8.5)](fluent/norikra-output-fluent.conf)
- [Norikraクエリ(リスト8.6)](norikra/list8.6.sql)
- [Norikraクエリ(リスト8.7)](norikra/list8.7.sql)

実行方法:
```
$ cd fluent

$ bundle install # Fluentdがインストールされます
$ bundle exec fluentd -c $(pwd)/forward-fluent.conf
```

Norikra、GrowhtForecastは事前に起動しておく必要があります。

## 8.5 ログファイルのローテーション

- [logrotatedの設定ファイル](logrotated/nginx.con)
