# README

## アプリ名 
## Eco Box

## アプリ内容
 お店側で廃棄が出た時、お店側がその廃棄をEco Boxとして安く出品し
 ユーザーは出品された商品を買うことが出来る、というアプリ
 機能面では主に三つです。
 * 商品出品機能（お店側）
 * 商品購入機能　（ユーザー側）
 * お店お気に入り機能　（ユーザー側）

## URL
　開発途中です

## テストアカウント情報
 開発途中です

## 目指した課題解決
ノルウェーのセブンイレブンフードロス対策システムを基にしている。

様々なお店で食品などの大量廃棄をしなくちゃいけないような状況は必ず起きている<br>
そんな時に企業側が廃棄する商品だけを詰め合わせにしたBOXを用意し<br>
それを安く出品する<br>
ユーザー側は廃棄を定価よりも安く買え、企業側は廃棄からも利益をとれる<br>
フードロス問題にもつながりウィンウィンウィンになる,<br>

企業の廃棄問題とユーザーの安く手に入れたい要望とフードロス<br>
この三点を課題解決としている<br>

## 洗い出した要件

1, 「企業側とユーザー側の機能のちがい」 
企業側とユーザー側でログインを分ける。もしくは使える機能を分ける必要がある

2, 「新規商品出品機能」 
企業側が商品を出品するための新規出品機能

3, 「商品購入機能」
　ユーザーが商品を購入できるようにする

4, 「お気に入りのお店登録機能」
 お店を登録して出品されたら表示されるようにする



## DB設計
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