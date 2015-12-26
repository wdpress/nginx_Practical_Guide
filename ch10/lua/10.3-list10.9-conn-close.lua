-- データストア（memcached、Redis、MySQL）との接続を閉じる
local ok, err = datastore:close()
if not ok then
   ngx.say("接続を閉じるのに失敗: ", err)
end
