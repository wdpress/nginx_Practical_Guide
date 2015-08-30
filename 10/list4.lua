-- モジュールをロード
local resty_sha1 = require "resty.sha1"
local resty_str  = require "resty.string"

-- OpenRestyのSHA1ハッシュ値を計算（簡略化のためエラー処理は省略）
local sha1 = resty_sha1:new()
sha1:update("OpenResty")
local digest = sha1:final()

-- OpenRestyのSHA1ハッシュ値を16進数文字列でレスポンスする
local respose_body = resty_str.to_hex(digest)
ngx.say(respose_body) -- 2424740b7cbf0253042e3372f7da2d1fb87aa78a
