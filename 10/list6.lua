-- モジュールをロード
local redis = require "resty.redis"
-- Redisオブジェクトを生成
local redisObj = redis:new()

-- タイムアウト値を設定（単位はミリ秒）
redisObj:set_timeout(3000)

-- Reidsサーバに接続
local ok, err = redisObj:connect("127.0.0.1", 6379)
if not ok then
   ngx.say("接続失敗: ", err)
   return
end

-- 値を格納
ok, err = redisObj:set("book", "nginx実践入門")
if not ok then
   ngx.say("格納失敗: ", err)
   return
end

-- 値を取得
local res, err = redisObj:get("book")
if not res then
   ngx.say("取得失敗: ", err)
   return
end

ngx.say(res) -- nginx実践入門
