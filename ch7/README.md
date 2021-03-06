# 第7章 大規模コンテンツ配信サーバの構築

## サンプルコード

### 7.3 nginxによるコンテンツキャッシュ

- [キャッシュの設定(リスト7.1)](7.3-list7.1-nginx.conf)
- [キャッシュプロキシサーバの設定](7.3-proxy_cache.conf)

### 7.4 オリジンサーバの構築

- [オリジンサーバの設定例](7.4-origin_server.conf)
- [サムネイルの作成](7.4-image_filter.conf)
- [DAVによるアップロード](7.4-list7.2-dav.conf)

### 7.5 ロードバランサの構築

- [ロードバランサの設定例(リスト7.3)](7.5-list7.3-nginx.conf)

### 7.6 キャッシュとロードバランスを利用したコンテンツ配信

- [コンテンツクラスタの設定例(list7.4)](7.6-list7.4-nginx.conf)

## 実行方法

すべての設定ファイルは以下のコマンドで実行する事ができます。
listenディレクティブが記述されていない場合、rootユーザで実行した場合は80番ポート、それ以外のユーザーで実行した場合8000番ポートでリッスンします。

```
# このディレクトリに移動してください
$ cd nginx-sample/ch7

# フォアグラウンドで起動する場合:
$ nginx -p $(pwd) -c $(pwd)/nginx/7.3-list7.1-nginx.conf -g "daemon off; "

# バックグラウンドで起動する場合:
$ nginx -p $(pwd) -c $(pwd)/nginx/7.3-list7.1-nginx.conf
```
