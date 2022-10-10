# learning_sql_injection

SQL インジェクションを学ぶために必要な実行環境。

## 使用技術

- PHP 8.x
- MySQL 8.x
- nginx

## ローカル開発環境の構築方法

ローカル端末に Git, Docker Desktop for Mac が必要です。<br>
筆者の実行環境は Mac(Intel)です。Windows, Mac(M1, M2), Linux 環境は未検証です。

### 1. ソースコードをクローン

```bash
$ git clone git@github.com:yuta-sawamura/learning_sql_injection.git
```

### 2. コンテナの起動

learning_sql_injection 直下 2. コンテナの起動

```bash
$ docker compose up
```

### 3. 動作確認

#### PHP, nginx

[http://localhost/](http://localhost/)にアクセスし、PHP の画面が出てきたら成功です。

#### MySQL, phpMyAdmin

[http://localhost:8888/](phpMyAdmin)にアクセスし、ログイン画面が表示され、ログインできれば成功です。<br>

- ユーザー名 `root`
- パスワード `secret`

## Tips

### コンテナの停止方法

Docker はフォアグランドで動かしているため、`Ctrl + C`で停止できます。
