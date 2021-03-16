# README

## users table
|Column             |Type       |Options                   |
|-------------------|-----------|--------------------------|
|nickname           |string     |null: false               |
|email              |string     |null: false, unique: true |
|encrypted_password |string     |null: false               |
|last_name          |string     |null: false               |
|first_name         |string     |null: false               |
|furi_last          |string     |null: false               |
|furi_first         |string     |null: false               |
|date_of_birth      |date       |null: false               |


### Association
has_many :purchases

## stores table
|Column             |Type       |Options                   |
|-------------------|-----------|--------------------------|
|name               |string     |null: false               |
|email              |string     |null: false, unique: true |
|encrypted_password |string     |null: false               |


## boxes table
|Column           |Type            |Options                               |
|-----------------|--------------- |--------------------------------------|
|name             |string          |null: false                           |
|price            |integer         |null: false                           |
|item_description |text            |null: false                           |
|finish-date      |integer         |null: false                           |
|store            |references      |foreign_key: true                     |

### Association
belongs_to :store
has_one :purchase

## purchases table
|Column    |Type       |Options           |
|--------- |-----------|------------------|
|user      |references |foreign_key: true |
|boxes      |references |foreign_key: true |

### Association
has_one :address
belongs_to :user
belongs_to :box