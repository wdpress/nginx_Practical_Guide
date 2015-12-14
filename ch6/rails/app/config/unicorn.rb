
# 本来は/var以下にファイルを出力するがテストしやすいようにカレントディレクトリを
# ルートディレクトリとしている
ROOT = File.expand_path("../../..", __FILE__)

# ワーカプロセス数
# - メモリ使用量が搭載量を超えないように注意
# - CPUの処理のみであればコア数と同じに設定するが、実際は
#   DBのI/O待ちも発生するためCPUコアの2倍程度を指定するとよい
worker_processes 8

# # PIDファイル
pid "#{ROOT}/run/rails-app-unicorn.pid"

# リッスンするソケットの指定
# ここではUNIXドメインソケットを指定している
# UNIXドメインソケットファイルは絶対パスで指定する必要がある
listen "#{ROOT}/run/rails-app-unicorn.sock"

# 標準出力、標準エラーのロギング
stdout_path "#{ROOT}/logs/unicorn.stdout.log"
stderr_path "#{ROOT}/logs/unicorn.stderr.log"
