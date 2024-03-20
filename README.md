# アプリケーション名
 Stockapp

# アプリケーション概要
 家庭の日用品の在庫数を一覧で確認することができる

# URL
 https://stockapp-7dln.onrender.com

# テスト用アカウント
 Basic認証ID admin
 Basic認証パスワード 2222
 メールアドレス test@test.com
 パスワード stockapp
 
# 利用方法
 会員登録 ログインページからログインまたは新規会員登録を行う
 商品投稿 新規投稿ボタンから商品投稿ページに飛んだ後、
         管理したい日用品の名前、ストック数、価格、カテゴリー、メモ（任意）画像（任意）を入力し、保存するボタンを押すことで投稿可能
 商品編集 ストック数のみ、商品一覧ページのボタンから編集可能
         他項目を編集の際は一覧ページの画像をクリックし編集ページに飛ぶ
 商品削除 商品情報削除の際は、商品一覧ページの削除するボタンを押す

# アプリケーションを作成した背景
 定期的に購入しなければいけない日用品が多く管理がストック数を把握できない時があったため、日用品のストック数と値段を一覧で見れて把握できるようにしたかったため

# 洗い出した要件
 https://docs.google.com/spreadsheets/d/1Fr_QZ04NpbexxtdFG893wCEuMbsCHydk49NDvKsEdK0/edit?usp=sharing

# 実装した機能についてのGIF
 [![Image from Gyazo](https://i.gyazo.com/39a6023d04bba71a17a4dd27a800f3b4.gif)](https://gyazo.com/39a6023d04bba71a17a4dd27a800f3b4)
 [![Image from Gyazo](https://i.gyazo.com/b2dfa2392b49bfa7006a0c934296647c.gif)](https://gyazo.com/b2dfa2392b49bfa7006a0c934296647c)

# 実装予定の機能
 一覧から選択した商品の合計金額を表示し、事前に必要金額が把握できる機能

# テーブル設計

## users テーブル
| Column             | Type   | Options                  |
| ------------------ | ------ | ------------------------ |
| email              | string | null: false unique: true |
| encrypted          | string | null: false              |
| name               | string | null: false              |

### Association
- has_many :products


## categories テーブル
| Column             | Type       | Options                       |
| ------------------ | ---------- | ----------------------------- |
| kinds              | text       | null: false                   |

### Association
- has_one :product


## products テーブル
| Column             | Type       | Options                       |
| ------------------ | ---------- | ----------------------------- |
| title              | text       | null: false                   |
| stock              | integer    | null: false                   |
| price              | integer    | null: false                   |
| date               | integer    | null: false                   |
| memo               | string     |                               |
| user               | references | null: false foreign_key: true |
| category           | references | null: false foreign_key: true |

### Association
- belongs_to :categories
- belongs_to :users
