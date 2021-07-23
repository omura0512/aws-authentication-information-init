#!/usr/bin/bash

# AWSアカウントIDの入力
echo -n ACCOUNT_ID（スイッチしたいAWSアカウントID）: 
read ACCOUNT_ID

# AWS Role名の入力
echo -n ROLE_NAME（スイッチしたいRole名）: 
read ROLE_NAME

# AWS Roleセッションの入力
echo -n ROLE_SESSION_NAME（行動ログに残るので、発行理由などを記載）: 
read ROLE_SESSION_NAME

# AWS keyの有効期限の入力
echo -n DURATION_SECONDS（キーの有効期限）: 
read DURATION_SECONDS

# 発行キーの最終確認
echo --------------------------
echo Please check all variables.
echo ACCOUNT_ID: $ACCOUNT_ID
echo ROLE_NAME: $ROLE_NAME
echo ROLE_SESSION_NAME: $ROLE_SESSION_NAME
echo DURATION_SECONDS: $DURATION_SECONDS

read -p "ok?(y/N): " yn
case "$yn" in
	[yY]*) aws sts assume-role --role-arn arn:aws:iam::${ACCOUNT_ID}:role/${ROLE_NAME} --role-session-name ${ROLE_SESSION_NAME} --duration-seconds ${DURATION_SECONDS};;
	*) echo "abort";;
esac

