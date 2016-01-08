# 第3章 基本設定

## サンプルコード

### 3.1 設定ファイルの構成

- [シンプルなWebサーバ (リスト3.1)](nginx/3.1-list3.1-nginx.conf)
- [コンテキストとディレクティブの有効範囲 (図3.2)](nginx/3.1-context.conf)
- [設定ファイルのインクルード](nginx/3.1-include.conf)

### 3.2 HTTPサーバに関する設定

- [複数のバーチャルサーバを設定 (リスト3.2)](nginx/3.2-list3.2-virtual_servers.conf)
- [複数のアドレスをリッスンする (リスト3.4)](nginx/3.2-list3.4-listen.conf)
- [デフォルトサーバの設定 (リスト3.5)](nginx/3.2-list3.5-default_server.conf)
- [MIMEタイプの設定](nginx/3.2-mime_types.conf)
- [アクセスログの設定 (リスト3.6)](nginx/3.2-list3.6-access_log.conf)

### 3.3 nginx本体の設定

- [nginx本体の基本的な設定 (リスト3.7)](nginx/3.3-list3.7-nginx.conf)
- [バーチャルサーバごとにエラーログを設定](nginx/3.3-error_log.conf)

### 3.4 パフォーマンスに影響する設定

- [すべての設定を含む設定ファイル](nginx/3.4-performance_tuning.conf)

## 実行方法

すべての設定ファイルは以下のコマンドで実行する事ができます。

```
# このディレクトリに移動してください
$ cd nginx-sample/ch3

# フォアグラウンドで起動する場合:
$ nginx -p $(pwd) -c $(pwd)/nginx/3.1-list3.1-nginx.conf -g "daemon off; "

# バックグラウンドで起動する場合:
$ nginx -p $(pwd) -c $(pwd)/nginx/3.1-list3.1-nginx.conf
```
