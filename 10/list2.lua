local json = require 'cjson'

local book = {
   title = "nginx実践入門",
   publisher = "技術評論社",
   authors = {"久保達彦", "道井俊介"}
}

book_json = json.encode(book)

ngx.say(book_json) -- {"publisher":"技術評論社","title":"nginx実践入門","authors":["久保達彦","道井俊介"]}
