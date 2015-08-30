-- データベース作成
CREATE DATABASE IF NOT EXISTS nginx;
-- テーブル作成
DROP TABLE IF EXISTS nginx.book;
CREATE TABLE IF NOT EXISTS nginx.book(
    chapter_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(32) NOT NULL,
PRIMARY KEY(chapter_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- データ挿入
INSERT INTO nginx.book VALUES(1, "概要", "久保達彦");
INSERT INTO nginx.book VALUES(2, "インストールと起動", "久保達彦");
INSERT INTO nginx.book VALUES(3, "基本設定", "道井俊介");
INSERT INTO nginx.book VALUES(4, "静的なWebサイトの構築", "道井俊介");
INSERT INTO nginx.book VALUES(5, "Webアプリケーションサーバの構築", "道井俊介");
INSERT INTO nginx.book VALUES(6, "大規模コンテンツ配信サーバの構築", "道井俊介");
INSERT INTO nginx.book VALUES(7, "nginxサーバの運用/監視", "道井俊介");
INSERT INTO nginx.book VALUES(8, "Luaによるnginxの拡張〜Embed Lua into nginx〜", "久保達彦");
INSERT INTO nginx.book VALUES(9, "OpenResty〜nginxベースのWebアプリケーションフレームワーク〜", "久保達彦");
