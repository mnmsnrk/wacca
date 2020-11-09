# WACCA

## WACCAとは
講演を行う講師（スピーカー）と講演を依頼したい人をつなぐマッチングプラットフォームです。
自身が講演活動を行っていた際に、煩雑になっていた依頼・連絡・講演料のやりとりを一元化するために作成しました。

## 機能のご紹介
### 主な機能
- 新規登録時にメール認証が行われるため、不正な登録を防ぐことができます
- 講師の思いやジャンルなど、一人ひとりのプロフィールを見ることができます
- 1対1のメッセージ機能で「連絡手段」を統一することができます（実装中）
- 講演料の送金もアプリ内で完結するため、売り上げの管理もしやすくなります（実装予定）
- 講師の質向上のため、講演終了後には講師に対して口コミをかけるようになります（実装予定）

### その他機能

- レスポンシブ対応
- 投稿編集 / 削除機能
- ユーザー登録 / ログイン




# テーブル設計

## speakers テーブル

| Column          | Type   | Options                      |
| --------------- | ------ | ---------------------------- |
| nickname        | string | null: false                  |
| email           | string | null :false,uniqueness: true |
| password        | string | null :false,uniqueness: true |
| first_name      | string | null: false                  |
| last_name       | string | null: false                  |
| first_name_kana | string | null: false                  |
| last_name_kana  | string | null: false                  |
| birth_date      | date   | null: false                  |

### Association
- has_many :resumes
- has_many :purchases

## requesters テーブル

| Column          | Type   | Options                      |
| --------------- | ------ | ---------------------------- |
| email           | string | null :false,uniqueness: true |
| password        | string | null :false,uniqueness: true |
| first_name      | string | null: false                  |
| last_name       | string | null: false                  |
| first_name_kana | string | null: false                  |
| last_name_kana  | string | null: false                  |
| birth_date      | date   | null: false                  |

### Association
- has_many :purchases

## resumes テーブル

| Column           | Type       | Options                      |
| ---------------- | ---------- | ---------------------------- |
| speaker          | references | null :false,foreign_key:true |
| introduction     | text       | null: false                  |
| category_id      | integer    | null: false                  |
| prefecture_id    | integer    | null: false                  |
| price            | integer    | null: false                  |

### Association
- has_many :images
- has_one :purchases
- has_one :speakers
- has_one :requesters


## addressテーブル

| Column          | Type       | Options                      |
| --------------- | ---------- | ---------------------------- |
| post_code       | string     | null: false                  |
| prefecture_id   | integer    | null: false                  |
| city            | string     | null: false                  |
| house_number    | string     | null: false                 |
| building_name   | string     |                              |
| tell            | string     | null: false,uniqueness :true |
| purchase        | references | null: false,foreign_key:true |

### Association
- belongs_to :purchase

## purchase テーブル

| Column          | Type       | Options                      |
| --------------- | ---------- | ---------------------------- |
| speaker         | references | null: false,foreign_key:true |
| requester       | references | null: false,foreign_key:true |
| fee             |  | null: false,foreign_key:true |

### Association
- belongs_to :resumes
- has_one :address
- belongs_to :requesters
- belongs_to :speakers
