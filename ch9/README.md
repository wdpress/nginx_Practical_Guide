# 第9章 Luaによるnginxの拡張～Embed Lua into nginx～

## サンプルコード

### 9.2

- [1からnまでの総和をレスポンスとして返す(リスト9.1)](nginx/9.2-list9.1-set_by_lua_sample-nginx.conf)
- [set_by_luaディレクティブとrewrite_by_luaディレクティブを実行する(リスト9.2)](nginx/9.2-list9.2-set_by_lua_and_rewrite_by_lua-nginx.conf)
- [access_by_luaディレクティブによる認証処理(リスト9.3)](nginx/9.2-list9.3-access_by_lua_sample-nginx.conf)
- [log_by_luaディレクティブによるロギング(リスト9.4)](nginx/9.2-list9.4-logging_with_log_by_lua-nginx.conf)
- [header_filter_by_luaディレクティブとbody_filter_by_luaディレクティブでレスポンスのヘッダとボディを書き換え(リスト9.5)](nginx/9.2-list9.5-header_and_body_filter_by_lua_sample-nginx.conf)

### 9.3

- [ステータス403（Forbidden）を返す(リスト9.6)](nginx/9.3-list9.6-return403-nginx.conf)
- [ngx_luaで内部リダイレクト(リスト9.7)](nginx/9.3-list9.7-internal_redirect_with_ngx_lua-nginx.conf)
- [ngx_luaでリダイレクト(リスト9.8)](nginx/9.3-list9.8-redirect_with_ngx_lua-nginx.conf)
- [ngx.redirect()で明示的にHTTPステータスを指定する(リスト9.9)](lua/9.3-list9.9-ngx.redirect.lua)
- [rewriteディレクティブによるURIのリライト(リスト9.10)](nginx/9.3-list9.10-rewrite-nginx.conf)
- [ngx_luaによるURIのリライト(リスト9.11)](nginx/9.3-list9.11-rewrite_with_ngx_lua-nginx.conf)

### 9.4

- [ngx_luaで代入可能な変数(リスト9.12)](nginx/9.4-list9.12-ngx.var-nginx.conf)

### 9.5

- [User-AgentにAndroidが含まれる場合は独自ヘッダ（X-OS-Type）を設定してからプロキシする(リスト9.13)](nginx/9.5-list9.13-request_header_manipulation-nginx.conf)
- [HTTPクエリパラメータを参照する(リスト9.14)](nginx/9.5-list9.14-ngx.req.get_uri_args-nginx.conf)
- [HTTPクエリパラメータを上書きする(リスト9.15)](nginx/9.5-list9.15-ngx.req.set_uri_args-nginx.conf
- [POSTパラメータを参照する(リスト9.16)](nginx/9.5-list9.16-ngx.req.get_post_args-nginx.conf)

### 9.6

- [ngx_luaによる正規表現処理(リスト9.17)](lua/9.6-list9.17-ngx.re.match.lua)

### 9.7

- [ngx.ctxによる各リクエスト処理フェーズ間でのデータ共有(リスト9.18)](nginx/9.7-list9.18-ngx.ctx-nginx.conf)
- [ngx.shared.ゾーン名によるワーカプロセス間でのデータ共有(リスト9.19)](nginx/9.7-list9.19-ngx.shared.zone-nginx.conf)

### 9.8

- [サブリクエストをノンブロッキングで処理する(リスト9.20)](nginx/9.8-list9.20-ngx.location.capture-nginx.conf)

### 9.9

- [ngx_luaによる認証処理の実装(リスト9.21)](nginx/9.9-list9.21-sample-nginx.conf)

## 実行方法

設定ファイル（拡張子がconfのファイル)は以下のコマンドで実行することができます。

```
# このディレクトリに移動してください
$ cd nginx-sample/ch9

# フォアグラウンドで起動する場合:
$ nginx -p $(pwd) -c $(pwd)/nginx/9.2-list9.1-set_by_lua_sample-nginx.conf -g "daemon off; "

# バックグラウンドで起動する場合:
$ nginx -p $(pwd) -c $(pwd)/nginx/9.2-list9.1-set_by_lua_sample-nginx.conf
```

ただし、サンプルコードによっては「...」のように擬似的なコードを埋め込んでいる場合やエラーになるケースとして
紹介しているもの、他のHTTPサーバにプロキシする場合の利用例として紹介しているため、そのまま実行すると
500 Internal Server Error等のエラーを返すものがあります。
