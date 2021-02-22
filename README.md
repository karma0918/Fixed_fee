# README

#　テーブル

## users

| column   | 　 type | options     |
| -------- | ------- | ----------- |
| nickname | string  | null: false |
| email    | string  | null: false |
| password | string  | null: false |

### Association

- has_many: lists
- has_many: comments
- has_many: loves

## lists

| column                             | 　 type    | options                       |
| ---------------------------------- | ---------- | ----------------------------- |
| Food expenses                      | integer    |                               |
| Miscellaneous expenses             | integer    |                               |
| Communication and utility expenses | integer    |                               |
| Housing expense                    | integer    |                               |
| Beauty and clothing expenses       | integer    |                               |
| Entertainment expenses             | integer    |                               |
| Education                          | integer    |                               |
| Insurance                          | integer    |                               |
| Storage                            | integer    |                               |
| user_id                            | references | null:false, foreign_key: true |

### Association

- belongs_to: user
- has_many: comments
- has_many: loves

## comments

| column  | 　 type    | options                         |
| ------- | ---------- | ------------------------------- |
| content | string     | null: false                     |
| user_id | references | null: false, foreign_key : true |
| list_id | references | null: false, foreign_key : true |

### Association

lists テーブルにネストしている

- belongs_to :user
- belongs_to :list

## loves

| column  | 　 type    | options                         |
| ------- | ---------- | ------------------------------- |
| user_id | references | null: false, foreign_key : true |
| list_id | references | null: false, foreign_key : true |

### Association

lists テーブルにネストしている

- belongs_to :user
- belongs_to :list
