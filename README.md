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