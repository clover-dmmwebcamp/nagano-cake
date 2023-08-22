# 概要

このECサイトはDMM WEB CAMP生によるチーム開発課題です。  

長野県にある洋菓子店「ながのCAKE」の商品を通販で販売する想定でECサイトを開発しました。  
実在する店舗ではありませんので、参考までにご覧ください。


## 案件の背景

元々近隣住民が顧客だったが、昨年始めたInstagramから人気となり、全国から注文が来るようになった。  
InstagramのDMやメールで通販の注文を受けていたが、情報管理が煩雑になってきたため、  
管理機能を含んだ通販サイトを開設しようと思い至った。


# 言語とフレームワークのバージョン

* ruby 3.1.2p20
* Rails 6.1.7.4
* Bootstrap

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
gem 'devise'  
gem 'kaminari','~> 1.2.1'  
gem "enum_help"
  </code></pre>
</div>

