-- モジュールをロード
local memcached = require "resty.memcached"

-- memcachedオブジェクトを生成
local memcObj = memcached:new()

-- タイムアウト値を設定（単位はミリ秒）
memcObj:set_timeout(3000)

-- memcachedサーバに接続
local ok, err = memcObj:connect("127.0.0.1", 11211)
if not ok then
   ngx.say("接続失敗: ", err)
   return
end

-- 値を格納
local expires = 300
local ok, err = memcObj:set("book", "nginx実践入門", expires)
if not ok then
   ngx.say("格納失敗: ", err)
   return
end

-- 値を取得
local res, flags, err = memcObj:get("book")
if err then
    ngx.say("取得失敗: ", err)
    return
end

-- 値を出力
ngx.say(res) -- nginx実践入門
