# 第6章 Webアプリケーションサーバの構築

## サンプルの使用方法

本書では複数のアプリケーションを起動・管理するために[Foreman](http://ddollar.github.io/foreman/)を使用しています。
Foremanは`gem`コマンドでインストールすることができます。

```
$ gem install foreman
```

### Ruby on Railsアプリケーションサーバ

`rails`ディレクトリで`foreman start`を実行するとnginxとunicornが起動します。

```
$ cd rails
$ foreman start
```

サンプルの構成は以下の様になっています。

```
- rails/
  - app/
    - config/
      - unicorn.rb ... Unicornの設定ファイル(リスト6.4)
    - public/
      - application.css
    - Gemfile ... Gemfile (リスト6.3)
    - Procfile ... Foremanの設定ファイル(実際は使用していません) (リスト6.5)
    - config.ru ... Rackアプリケーションのサンプル
  - nginx/
    - nginx.conf ... nginxの設定ファイル (リスト6.6)
    - mime.type
    - sites-enabled/
      - rails.example.com.conf ... uniconにプロキシする設定 (リスト6.7)
  - Procfile ... Foremanの設定ファイル
```

appディレクトリ以下はそのままHerokuにデプロイすることもできます。


### PHPアプリケーションサーバ

`php`ディレクトリで`foreman start`を実行するとnginxとPHP-FPMが起動します。

```
$ cd php
$ foreman start
```
