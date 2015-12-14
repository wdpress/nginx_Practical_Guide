require 'rack'

#
# = DummyのRackアプリケーション
#
# 本来であれば、railsコマンドが生成するconfig.ruが使われますが、ここでは簡略化の
# ため、シンプルなRackアプリケーションを起動するようにしています。
#
class HelloWorld
  BODY =<<-EOT
<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="/application.css" />
  </head>
  <body>
    <h1>Hello, world!</h1>
  </body>
</html>
EOT

  def call(env)
    ['200', {'Content-Type' => 'text/html'}, [BODY]]
  end
end

run HelloWorld.new
