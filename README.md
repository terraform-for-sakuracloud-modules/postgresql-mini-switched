# postgresql-mini-switched

## 概要

さくらのクラウド データベースアプライアンス(PostgreSQL、スイッチ or ルーターに接続)
  
## Variables

| 変数名        | 名称              | 必須 | デフォルト値 | 説明          | 
|--------------|-------------------|-----|------------|---------------|
|admin_password| 管理者パスワード    | ◯   | -          | -             |
|user_name     | デフォルトユーザー  | ◯   | -          | -             |
|user_password | ユーザーパスワード  | ◯   | -          | -             |
|switch_id     | 上流スイッチID     | ◯   | -          | -             |
|ipaddress1    | IPアドレス         | ◯   | -          | -             |
|nw_mask_len   | ネットマスク長      | ◯   | -          | -             |
|default_route | デフォルトルート    | -   | -          | -             |
|allow_networks| 接続許可ネットワーク| -   | -          | リスト(文字列)  |
|port          | ポート            | -   | 5432       | -             |
|backup_rotate | バックアップ世代数  | -   | 8          | -             |
|backup_time   | バックアップ開始時刻| -   | `00:00`    | -             |
|zone          | ゾーン            | -   | `tk1a`     | -             |
|name          | 名称              | -   | `postgresql-mini` | -      |
|description   | 説明              | -   | -          | -             |
|tags          | タグ              | -   | -          | リスト(文字列) |

  
## Output

| 変数名           | 名称              | 説明       | 
|-----------------|-------------------|------------|
|database_id      | ID                |  データベースのID |
|admin_password   | 管理者パスワード    |  -              |
|user_name        | デフォルトユーザー   |  -               |
|user_password    | ユーザーパスワード   |  -               |
|allow_networks   | 接続許可ネットワーク |  -               |
|port             | ポート             |  -               |
|backup_rotate    | バックアップ世代数   |  -               |
|backup_time      | バックアップ開始時刻 |  -               |
|switch_id        | スイッチID         |  -               |
|ipaddress1       | グローバルIP        |  -               |
|nw_mask_len      | ネットワークマスク長 |  -               |
|default_route    | デフォルトルート    |  -               |
|zone             | ゾーン             |  -               |
|name             | 名称               |  -               |
|description      | 説明               |  -               |
|tags             | タグ               |  -               |
|admin_psql       | 管理者接続コマンド   |  psqlコマンド(postgresユーザー) |
|user_psql        | ユーザー接続コマンド  |  psqlコマンド(デフォルトユーザー) |


## Example

```main.if:サンプル
# 上流のスイッチ
resource sakuracloud_switch "sw01"{
    name = "sw01"
    zone = "tk1a"
}

# データベースの定義
module "sakura_pgsql" {
    source = "github.com/terraform-for-sakuracloud-modules/postgresql-mini-switched"

    # 管理者パスワード
    admin_password = "put_your_admin_password"

    # デフォルトユーザー/パスワード
    user_name = "put_your_user_name"
    user_password = "put_your_user_password"
    
    # ネットワーク設定
    switch_id = "${sakuracloud_switch.sw01.id}"
    ipaddress1 = "192.168.11.101"
    nw_mask_len = 24
    default_route = "192.168.11.1"
}
```

## License

  This project is published under [Apache 2.0 License](LICENSE).

## Author

  * Kazumichi Yamamoto ([@yamamoto-febc](https://github.com/yamamoto-febc))
