local subject = ngx.header.content_type -- レスポンス内のContent-Typeヘッダ
local regex   = "^image/([^/]+)$"
local m = ngx.re.match(subject, regex)
if m then
   if m[1] == "jpeg" then
      do_something1()
   elseif m[1] == "gif" then
      do_something2()
   elseif m[1] == "png" then
      do_something3()
   end
else
   -- not matched
end
