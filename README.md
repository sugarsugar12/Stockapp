-アプリケーション名-
 Stockapp
-アプリケーション概要-
 家庭の日用品の在庫数を一覧で確認することができる
-URL-
 https://stockapp-7dln.onrender.com
-テスト用アカウント-
 Basic認証ID admin
 Basic認証パスワード 2222
 メールアドレス test@test.com
 パスワード stockapp
-利用方法-
 
-アプリケーションを作成した背景-
 定期的に購入しなければいけない日用品が多く管理がストック数を把握できない時があったため、日用品のストック数と値段を一覧で見れて把握できるようにしたかったため
-洗い出した要件-
 https://docs.google.com/spreadsheets/d/1Fr_QZ04NpbexxtdFG893wCEuMbsCHydk49NDvKsEdK0/edit?usp=sharing
-実装した機能についてのGIF-
 
-実装予定の機能-
 一覧から選択した商品の合計金額を表示し、事前に必要金額が把握できる機能
 画像を投稿しなくてもカテゴリーがわかる画像が勝手に表示される機能

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
