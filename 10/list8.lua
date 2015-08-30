-- モジュールをロード
local mysql = require "resty.mysql"
local cjson = require "cjson"

-- オブジェクトを生成
local db, err = mysql:new()
if not db then
   ngx.say("オブジェクト生成失敗: ", err)
   return
end

-- タイムアウト値を設定（単位はミリ秒）
db:set_timeout(1000)

local ok, err, errno, sqlstate = db:connect{
   host = "127.0.0.1",
   port = 3306,
   database = "nginx",
   user = "root",
   password = ""
}

-- MySQLサーバに接続
if not ok then
   ngx.say("接続失敗: ", err, ": ", errno, " ", sqlstate)
   return
end

-- MySQLにクエリを発行
res, err, errno, sqlstate = db:query("SELECT * FROM book")
if not res then
   ngx.say("クエリ発行失敗: ", err, ": ", errno, ": ", sqlstate, ".")
   return
end

-- クエリの結果をJSONで出力
ngx.say(cjson.encode(res))
-- [
--    {"title":"概要","chapter_id":1,"author":"久保達彦"},
--    {"title":"インストールと起動","chapter_id":2,"author":"久保達彦"},
--    {"title":"基本設定","chapter_id":3,"author":"道井俊介"},
--    {"title":"静的なWebサイトの構築","chapter_id":4,"author":"道井俊介"},
--    {"title":"Webアプリケーションサーバの構築","chapter_id":5,"author":"道井俊介"},
--    {"title":"大規模コンテンツ配信サーバの構築","chapter_id":6,"author":"道井俊介"},
--    {"title":"nginxサーバの運用\/監視","chapter_id":7,"author":"道井俊介"},
--    {"title":"Luaによるnginxの拡張〜Embed Lua into nginx〜","chapter_id":8,"author":"久保達彦"},
--    {"title":"OpenResty〜nginxベースのWebアプリケーションフレームワーク〜","chapter_id":9,"author":"久保達彦"}
-- ]
