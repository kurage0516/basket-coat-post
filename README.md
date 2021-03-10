# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association

- has_many :basket_areas
- has_many :likes
- has_many :comments

## basket_areas

| Column         | Type       | Options           |
| -------------- | ---------- | ----------------- |
| coat_name      | string     | null: false       |
| street_address | text       | null: false       |
| url            | text       |                   |
| price          | integer    | null: false       |
| time           | string     | null: false       |
| user           | references | foreign_key: true |

### Association

- belongs_to :user
- has_many   :comments
- has_many   :likes

## comments

| Column         | Type       | Option            |
| -------------- | ---------- | ----------------- |
| text           | text       | null: false       |
| user           | references | foreign_key: true |
| basket_area    | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :basket_area

## likes

| Column      | Type       | Option            |
| ----------- | ---------- | ----------------- |
| user        | references | foreign_key: true |
| basket_area | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :basket_area