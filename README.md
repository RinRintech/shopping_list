# README

# アプリケーション名
買い物りすと

# アプリケーション概要
  ただのメモ帳としての機能だけではなく、快適な買い物ライフを実現する。
  <br>前回の買い物リストを簡単に見直せたり、データを引き継ぐことができたりする。
  <br>簡単に次の買い物に生かす仕組みを作ることで、買い忘れを防ぎ、時間の短縮を図る。

# URL
デプロイ後記載

# テスト用アカウント
デプロイ後記載：ログインに必要な情報

# 利用方法
#アプリケーションの利用方法を記載する

# アプリケーションを作成した背景

## ターゲットユーザー
  日常的に買い物をする人
   <br>・主婦、主夫
   <br>・一人暮らしやルームシェアなどをしている学生や社会人
   
## ターゲットユーザーのニーズ
   ・買い物にかける時間をなるべく減らしたい。
   <br>・買い物リストを作成する手間をなるべく減らしたい。
   <br>・前回の買い物リストを手軽に遡りたい。
   <br>・重複して買ってしまうことを避けたい。
   <br>・スーパーについてからリストを忘れて困ることを無くしたい。
   <br>・複数スーパーを使い分けている場合、どこで買うのが一番良いか(コスパ、タイパなどの観点から)をなるべく手間なく判断できるようにしたい。


# 洗い出した要件
要件定義書(https://docs.google.com/spreadsheets/d/1flKqeieTh1a6FpiZmo5d9xJFdNjljxpl/edit#gid=1162398256)

# 実装した機能についての画像やGIFおよびその説明

# 実装予定の機能

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/0dc7cb70015abbb3a26b640a8b9d7718.png)](https://gyazo.com/0dc7cb70015abbb3a26b640a8b9d7718)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/998d16174405319d6771a279b6b5b07f.png)](https://gyazo.com/998d16174405319d6771a279b6b5b07f)

# 開発環境
# ローカルでの動作方法
# 工夫したポイント
# 改善点
# 制作時間

# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| -------------------| ------ | ------------------------- |
| user_name          | string | null: false               |
| email              | string | null: false, unique: true | 
| encrypted_password | string | null: false               |

### Association

- has_many :lists
- has_many :templates

## lists テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| user          | references | null: false, foreign_key: true |
| title         | string     | null: false                    |
| shopping_date | date       |                                |
| place         | string     | null: false                    |
| item          | string     | null: false                    |
| item_number   | integer    |                                |
| note          | text       |                                |
| template      | references |                                |

### Association

- has_one  :user
- has_one  :template

## templates テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| user          | references | null: false, foreign_key: true |
| title         | string     | null: false                    |
| place         | string     |                                |
| item_name     | string     | null: false                    |
| item_number   | integer    |                                |
| note          | text       |                                |

### Association

- belongs_to :user
- has_many   :lists