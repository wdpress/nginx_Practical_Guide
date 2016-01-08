# 第4章 静的なWebサイトの構築

## サンプルコード

### 4.1 静的コンテンツの公開

- [静的コンテンツを配信するサーバの設定(リスト4.1)](nginx/4.1-list4.1-static_server.conf)
- [locationディレクティブの優先順位(リスト4.2)](nginx/4.1-list4.2-location_directive.conf)
- [locationディレクティブのネスト(リスト4.3)](nginx/4.1-list4.3-nested_location.conf)
- [特殊ページの設定](nginx/4.1-index_and_error_page.conf)

### 4.2 アクセス制限の設定

- [ブラックリスト方式による制限(リスト4.4)](nginx/4.2-list4.4-black_list.conf)
- [ホワイトリスト方式による制限(リスト4.5)](nginx/4.2-list4.5-white_list.conf)
- [複雑なアクセス制限(リスト4.6)](nginx/4.2-list4.6-restrictions.conf)
- [Basic認証による制限](nginx/4.2-basic_authentication.conf)
- [リモートアドレスごとの制限(リスト4.8)](nginx/4.2-list4.8-limit_by_remote_addr.conf)
- [リクエスト数の制限(リスト4.9)](nginx/4.2-list4.9-request_limit.conf)

### 4.3 リクエストの書き換え

- [returnディレクティブの例](nginx/4.3-return.conf)
- [rewriteディレクティブの例(リスト4.10)](nginx/4.3-list4.10-rewrite.conf)
- [リファラによる条件分岐](nginx/4.3-valid_referers.conf)

### 4.4 gzip圧縮転送

- [gzipディレクティブによる圧縮(リスト4.11)](nginx/4.4-list4.11-gzip.conf)
- [あらかじめ圧縮したファイルを配信](nginx/4.4-gzip_static.conf)

## 実行方法

すべての設定ファイルは以下のコマンドで実行する事ができます。
listenディレクティブが記述されていない場合、rootユーザで実行した場合は80番ポート、それ以外のユーザーで実行した場合8000番ポートでリッスンします。

```
# このディレクトリに移動してください
$ cd nginx-sample/ch4

# フォアグラウンドで起動する場合:
$ nginx -p $(pwd) -c $(pwd)/nginx/4.1-list4.1-static_server.conf -g "daemon off; "

# バックグラウンドで起動する場合:
$ nginx -p $(pwd) -c $(pwd)/nginx/4.1-list4.1-static_server.conf
```
