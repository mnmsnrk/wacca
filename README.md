# README
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
