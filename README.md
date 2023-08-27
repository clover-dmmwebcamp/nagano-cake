# 概要

このECサイトはDMM WEB CAMP生によるチーム開発課題です。  

長野県にある洋菓子店「ながのCAKE」の商品を通販で販売する想定でECサイトを開発しました。  
実在する店舗ではありませんので、参考までにご覧ください。
![スクリーンショット 2023-08-27 11 26 23](https://github.com/clover-dmmwebcamp/nagano-cake/assets/138285954/a13ffc1d-0729-4660-bab0-8f546ad02eba)

![スクリーンショット 2023-08-27 11 24 44](https://github.com/clover-dmmwebcamp/nagano-cake/assets/138285954/5abbf332-6ef2-4a9d-9d42-300b73be3637)

![スクリーンショット 2023-08-27 11 21 47](https://github.com/clover-dmmwebcamp/nagano-cake/assets/138285954/523c37bd-f314-4acd-9315-3dcc6cb6f19d)


## 案件の背景

元々近隣住民が顧客だったが、昨年始めたInstagramから人気となり、全国から注文が来るようになった。  
InstagramのDMやメールで通販の注文を受けていたが、情報管理が煩雑になってきたため、  
管理機能を含んだ通販サイトを開設しようと思い至った。


# 言語とフレームワークのバージョン

* ruby 3.1.2p20
* Rails 6.1.7.4
* Bootstrap v4.6.2

## 使用したGem

<div>
  <button class="copy-button" onclick="copyToClipboard()"></button>
  <pre><code id="code-block">
gem 'devise'  
gem 'kaminari','~> 1.2.1'  
gem "enum_help"
  </code></pre>
</div>


# 実装機能

## 管理者側

* 管理者ログイン、ログアウト
* 商品の新規追加、編集、閲覧、販売停止(売切表示)
* 商品ジャンルの追加、編集
* 会員登録されているユーザー情報の閲覧、編集、退会処理
* ユーザーの注文履歴閲覧、注文・製造ステータス変更

## 顧客(会員)側

* 会員新規登録、ログイン、ログアウト、退会
* 会員情報の編集
* 配送先の登録、編集、削除
* カートへの追加、商品購入
* 支払い方法、配送先の指定
* 注文履歴の閲覧



# 使用方法

<div>
  <button class="copy-button" onclick="copyToClipboard()"></button>
  <pre><code id="code-block">
$ git clone git@github.com:clover-dmmwebcamp/nagano-cake.git
$ cd nagano-cake
$ rails db:migrate
$ rails db:seed
$ yarn install
$ bundle install
$ yarn add @babel/plugin-proposal-private-methods @babel/plugin-proposal-private-property-in-object
$ rails s
  </code></pre>
</div>

 【管理者ページのログイン方法(admin/sign_in)】　　  
URLの後ろに/admin/sign_inをつけてください。  

管理者ページのログインに必要なメールアドレス及びパスワードは下記の通りです。

メールアドレス：admin@admin  
パスワード: clover

# 設計書

* [ER図](https://app.diagrams.net/#G1pNjD20RmUe4xmLC0e-HwxwVLlGPbaakC)
* [テーブル定義書](https://docs.google.com/spreadsheets/d/1gC93dazzjdc0idLVDG35dT61ONneZaAsnbnCPVYRXOM/edit#gid=856357510)
* [アプリケーション詳細設計書](https://docs.google.com/spreadsheets/d/14PgkbXQDvTDCWXzeblN0see1SNN73QXncmW02U-LjFA/edit#gid=549108681)
* [WBS](https://docs.google.com/spreadsheets/d/1AzxN9sKhNWAwFCtEN4o6SbkPBW1qD4gQbo-q9ZhCO6g/edit#gid=815106619)

# 作成者アカウント
個人Githubへのリンク

* [あっしー](https://github.com/takahiro0218)
* [のぶ](https://github.com/m-ole0)
* [はるか](https://github.com/haruka-ochiai)
* [ゆうじ](https://github.com/yujinago)

