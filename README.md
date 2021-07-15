# 概要
あるAWSアカウントしかない状況で、他AWSアカウントにてAWS CLIを実行するためのアクセスキーを発行するためのスクリプトである。

# 設計
1つのAWSアカウントが存在しない状態のため、アカウントのスイッチの機能を使うことで解消する
AWSにはstsコマンドがあり、アカウントAからアカウントBのアクセスキーを発行するという方法がある

# 実行
```
./setup.sh

ACCOUNT_ID: [スイッチしたいAWSアカウントIDを入力]
ROLE_NAME: [スイッチしたいRole名を入力]
ROLE_SESSION_NAME: [行動ログに残るので発行した理由とかを入力]
DURATION_SECONDS: [キーの有効期限を入力]

ok?(y/N): [問題ない場合はyを入力]

```

# 実行例
```
./setup.sh

ACCOUNT_ID: 00000000000
ROLE_NAME: lambda_deploy
ROLE_SESSION_NAME: role for lambda deploy
DURATION_SECONDS: 3600

ok?(y/N): [問題ない場合はyを入力]
```
# aws-authentication-information-init
