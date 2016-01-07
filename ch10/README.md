# 第10章 OpenResty～nginxベースのWebアプリケーションフレームワーク～

## サンプルコード

### 10.2

- [Hello, World!（hello.lua）(リスト10.1)](lua/10.2-list10.1-hello_world.lua)
- [lua-cjsonでLuaのテーブルをJSONに変換(リスト10.2)](lua/10.2-list10.2-cjson.lua)
- [lua-resty-coreのロード(リスト10.3)](nginx/10.2-list10.3-load_lua_resty_core-nginx.conf)
- [lua-resty-memcachedでmemcachedへアクセス(リスト10.5)](lua/10.2-list10.5-lua_resty_memcached.lua)
- [lua-resty-redisでRedisへアクセス(リスト10.6)](lua/10.2-list10.5-lua_resty_redis.lua)
- [データベースとテーブルを作成(リスト10.7)](sql/10.2-list10.7-nginx_book_table.sql)
- [lua-resty-mysqlでMySQLへアクセス(リスト10.8)](lua/10.2-list10.5-lua_resty_mysql.lua)

### 10.3

- [memcached、Redis、MySQLとの接続を閉じる(リスト10.9)](lua/10.3-list10.9-conn-close.lua)
- [memcached、Redis、MySQLとの接続をキープアライブ(リスト10.10)](lua/10.3-list10.10-conn-keepalive.lua)

### column

- [Test::Nginxを使ったテスト(リストa)](perl/column-lista.t)

## 実行方法

設定ファイル（拡張子がconfのファイル)は以下のコマンドで実行することができます。

```
# このディレクトリに移動してください
$ cd nginx-sample/ch10

# フォアグラウンドで起動する場合:
$ nginx -p $(pwd) -c $(pwd)/nginx/10.2-list10.3-load_lua_resty_core-nginx.conf -g "daemon off; "

# バックグラウンドで起動する場合:
$ nginx -p $(pwd) -c $(pwd)/nginx/10.2-list10.3-load_lua_resty_core-nginx.conf
```

また、サンプルコードによっては擬似的なコードを含んでいる場合があるため、そのまま実行するとエラーになるのものがあります。
