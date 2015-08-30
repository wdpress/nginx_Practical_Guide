-- キープアライブ用のパラメータ
local max_idle_timeout = 10000 -- 利用されていないキープアライブ接続のタイムアウト（ミリ秒）
local pool_size = 50 -- コネクションプールのサイズ

-- データストア（memcached、Redis、MySQL）との接続をキープアライブ
local ok, err = datastore:set_keepalive(max_idle_timeout, pool_size)
if not ok then
   ngx.say("キープアライブ失敗: ", err)
end
