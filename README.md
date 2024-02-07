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
- has_one :destination


## products テーブル
| Column             | Type       | Options                       |
| ------------------ | ---------- | ----------------------------- |
| title              | text       | null: false                   |
| stock              | integer    | null: false                   |
| price              | integer    | null: false                   |
| memo               | string     |                               |
| user               | references | null: false foreign_key: true |
| category           | references | null: false foreign_key: true |

### Association
- belongs_to :categories
- belongs_to :users

概要
家にある日用品のストック数と価格を商品一覧ページで確認することができ、同時に少しのメモができる
作成背景
生活している中で日用品は定期的に購入しなければならないが、何が足りていないのかを頭で覚えておくよりも可視化できたほうが便利だと思った。またその商品の価格をお店で見るよりも、事前に知っておいたほうが必要なおかねを把握できるため有用であると考えた。