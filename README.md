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
また、施設情報は閲覧できますが、コメントにてやり取りできるサイトがなく、利用者目線の意見が投稿情報だけでは推測できないと思い、その問題も解決したいと思い、アプリケーションを作成しました。

# 洗い出した要件
## 1.ユーザー管理機能
### 目的
サイトで新規アカウント登録、ログイン、ログアウトを実施できるようにする為

### 詳細
バスケットボールコートを投稿した本人のみが編集・削除などをできるようにする

### ユースケース
・サイトに未登録のユーザーは新規登録にて自身のユーザー情報を登録する。  
・登録するニックネーム、メールアドレス、パスワード、パスワード確認の情報入力必須。  
・登録後はログインをすることで自身が投稿したものを管理できる。  
・使用が終了したり、別アカウントに切り替える場合はログアウト機能を使う。

## 2.投稿機能
### 目的
バスケットボールコート投稿機能を実施できるようにする為

### 詳細
バスケットボールコートの情報を投稿する

### ユースケース
・ログインしているユーザーのみが投稿することが可能。  
・投稿情報で、施設名、住所、利用時間、施設利用料は情報入力必須。  
・すべて正しく入力をしたら、投稿したものが一覧表示される。  

## 3.一覧表示機能
### 目的
投稿したバスケットボールコートを一覧表示する機能を実施できるようにする為

### 詳細
投稿したバスケットボールコートを見ることが閲覧できるようにする。

### ユースケース
ログイン、ログアウト関係なく全てのユーザーが投稿した情報を一覧表示で見ることができる。

## 4.詳細表示機能
### 目的
投稿したバスケットボールコートの詳細情報を表示する機能を実施できるようにする為

### 詳細
バスケットボールコートの情報を確認できるようにする。

### ユースケース
・一覧表示で投稿されているものをログイン、ログアウト関係なく、投稿者以外がタップすると詳細情報を確認できる。  
・一覧表示で投稿されているものをログインしている投稿者がタップすると、詳細情報と編集、削除ボタンが表示される。

## 5.削除機能
### 目的
投稿したバスケットボール情報を削除する機能を実施できるようにする為

### 詳細
バスケットボールコートの施設が利用できなくなった時に情報を削除しないといけない。

### ユースケース
ログインしている投稿者のみが投稿を削除できる。

## 6.情報編集機能
### 目的
投稿したバスケットボール情報を編集する機能を実施できるようにする為

### 詳細
バスケットボールコートの施設情報が変更された時に投稿情報を編集できるようにする。

### ユースケース
ログインしている投稿者のみが投稿の編集を行うことができる。

## 7.検索機能
### 目的
バスケットボールコートを検索する機能を実施できるようにする為

### 詳細
ユーザーが住まい近くでバスケットボールコートを簡単に探すことができるようにする。

### ユースケース
・検索機能を使って検索をした文字に含まれるもののみが一覧表示される。  
・ログインをしていなくても投稿を検索することができる。

## 8.コメント機能
### 目的
バスケットボールコートを投稿した投稿者とそれ以外のユーザーがコメントのやり取りをする為の機能を実装する為

### 詳細
投稿したユーザーとそれ以外のユーザーがコメントでやり取りしてバスケットボールコートの施設詳細をより詳しく知る手段として用いる。

### ユースケース
ログインしているユーザーのみが投稿にコメントをできる。

# 実施した機能についてのGiFと説明
## 1.ユーザー管理機能
ヘッダーの新規登録ボタンからニックネーム・メールアドレス・パスワードにて、ユーザー情報の登録を行うことができます。  
ヘッダーのログインボタンから登録したユーザー情報を入力するとログインすることができます。  
アプリケーション使用終了後はヘッダーのログアウトボタンでログアウトできます。
### 新規登録①  
![新規登録ボタン](https://user-images.githubusercontent.com/73592225/112314070-ee691780-8ceb-11eb-90ab-a75a08322b94.png)  
### 新規登録②  
![新規登録画面](https://user-images.githubusercontent.com/73592225/112456907-8de6e280-8d9e-11eb-9daf-59220e68c284.png)  
### 新規登録後、ニックネーム表示  
![新規登録後、ニックネーム表示](https://user-images.githubusercontent.com/73592225/112457111-c8507f80-8d9e-11eb-9d38-4da1b75ba9b8.png)  
### ログイン画面  
![ログイン画面](https://user-images.githubusercontent.com/73592225/112457233-e61de480-8d9e-11eb-8272-a0eac156b00e.png)  

## 2.投稿機能
ヘッダーのCOAT POSTボタンから投稿画面に遷移します。  
施設名、住所、URL(任意)、利用料金、利用時間を入力することで記事の登録を行うことができます。
![投稿ボタン](https://user-images.githubusercontent.com/73592225/112458477-2df13b80-8da0-11eb-9f0b-62b28f657f80.png)  
![投稿画面](https://user-images.githubusercontent.com/73592225/112458697-685ad880-8da0-11eb-9eb9-4db3a8876e29.png)  
![投稿画面にて情報入力](https://user-images.githubusercontent.com/73592225/112458890-a0621b80-8da0-11eb-85e5-afc95e9f5a35.png)  

## 3.一覧表示機能
投稿した施設情報はトップ画面に表示されます。  
![トップ画面1](https://user-images.githubusercontent.com/73592225/112459278-0189ef00-8da1-11eb-9f3e-4f2f0365de10.png)
![トップ画面2](https://user-images.githubusercontent.com/73592225/112459340-11a1ce80-8da1-11eb-92cd-3dd939dea889.png)

## 4.詳細表示機能
投稿されている施設情報または画像をタップすると詳細画面に遷移します。  
この画面で施設情報を投稿したユーザーは施設情報の編集や削除ができ、それ以外のユーザーには編集や削除ボタンは表示されません。  
またこの画面でログインしているユーザーはコメント機能で情報のやり取りを行うこともできます。
![トップ画面1](https://user-images.githubusercontent.com/73592225/112461665-82e28100-8da3-11eb-9041-053ee9228714.png)  
![詳細画面1](https://user-images.githubusercontent.com/73592225/112461808-a6a5c700-8da3-11eb-8269-a1fda8f16228.png)  
![詳細画面2](https://user-images.githubusercontent.com/73592225/112461920-cccb6700-8da3-11eb-80c3-0091f88b2fb4.png)  

## 5.削除機能
詳細画面にて施設情報を投稿したユーザーのみ削除を行うことができます。

## 6.情報編集機能
詳細画面にて施設情報を投稿したユーザーのみ編集を行うことができます。  
編集の際はなにも変更をしなかったとしても保存ができるように設定をしております。  

## 7.検索機能
投稿された施設情報を都道府県で検索をすることで、その地域のみの投稿を表示することができます。
![トップ画面検索](https://user-images.githubusercontent.com/73592225/112462963-09e42900-8da5-11eb-9f5a-d60f22db209f.png)  

## 8.コメント機能
詳細画面にて施設情報に対してのコメントを送ることができます。  
コメントに関してはログインしているユーザーのみがコメントを送信することができます。  
投稿されたコメントはどのユーザーも確認することができます。
### ログインしているコメント画面  
![ログインしている画面](https://user-images.githubusercontent.com/73592225/112463518-b1f9f200-8da5-11eb-910d-a2b7d9c23f70.png)  
### ログインしていないコメント画面  
![ログインしていない画面](https://user-images.githubusercontent.com/73592225/112463758-fdac9b80-8da5-11eb-9d80-708649240d4d.png)  

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

# ER図
![ER図](https://user-images.githubusercontent.com/73592225/112465562-36e60b00-8da8-11eb-8df5-3a41064b6986.png)