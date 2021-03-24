# アプリケーション名
Basket Coat Post

# アプリケーション概要
バスケットコートがある施設を投稿し、投稿者と閲覧者でコミュニケーションをとれるアプリです。

# URL
https://basket-coat-post.herokuapp.com/

# テスト用アカウント

## basic認証
ID：admin
Password：7678

## ログインアカウント
メールアドレス：test@basket.com
パスワード：basket0516

# 利用方法
ヘッダー右上の新規登録ボタンからユーザー登録をしていただくことで、バスケットコート施設の投稿をすることができます。アプリケーションの使用を終了したログイン状態の方は、ヘッダー右上のログアウトボタンにてログアウトすることが可能です。
またログアウト状態でもバスケットコート施設の閲覧をすることができます。

# 目指した課題解決
中学校から今までバスケットボールをしていた中で、バスケットボールをしようと施設をネット上で探した時に、サイトはありますが、施設情報が少ないものが多くその問題を解決しようと思いました。
また、施設情報は閲覧できますが、コメントにてやり取りできるサイトがなく、利用者目線の意見が投稿情報だけでは推測できないと思い、その問題も解決しました。

# 洗い出した要件

# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association

- has_many :basket_areas
- has_many :comments

## basket_areas

| Column         | Type       | Options           |
| -------------- | ---------- | ----------------- |
| coat_name      | string     | null: false       |
| street_address | text       | null: false       |
| url            | text       |                   |
| price          | string     | null: false       |
| time           | string     | null: false       |
| user           | references | foreign_key: true |

### Association

- belongs_to :user
- has_many   :comments

## comments

| Column         | Type       | Option            |
| -------------- | ---------- | ----------------- |
| text           | text       | null: false       |
| user           | references | foreign_key: true |
| basket_area    | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :basket_area