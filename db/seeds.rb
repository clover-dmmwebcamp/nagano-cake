# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
  email: 'admin@admin',
  password: 'clover'
  )

Customer.create!(
  last_name: '田中',
  first_name: '春',
  last_name_kana: 'タナカ',
  first_name_kana: 'ハル',
  phone_number: '11111111111',
  email: 'tanaka@haru.com',
  password: 'tanaka11clover',
  postcode: '1111111',
  address: '埼玉県さいたま市',
  is_deleted: 'false'
  )

Customer.create!(
  last_name: '佐々木',
  first_name: '洋',
  last_name_kana: 'ササキ',
  first_name_kana: 'ヒロシ',
  phone_number: '44444444444',
  email: 'sasaki@hiroshi.com',
  password: 'sasaki44clover',
  postcode: '4444444',
  address: '福岡県博多市',
  is_deleted: 'false'
  )

Customer.create!(
 last_name: '鈴木',
 first_name: '裕',
 last_name_kana: 'スズキ',
 first_name_kana: 'ユタカ',
 phone_number: '22222222222',
 email: 'suzuki@yutaka.com',
 password: 'suzuki22clover',
 postcode: '2222222',
 address: '大阪府大阪市',
 is_deleted: 'false'
 )

 Customer.create!(
 last_name: '山田',
 first_name: '太郎',
 last_name_kana: 'ヤマダ',
 first_name_kana: 'タロウ',
 phone_number: '33333333333',
 email: 'yamada@taro.com',
 password: 'yamada33clover',
 postcode: '3333333',
 address: '大阪府吹田市',
 is_deleted: 'false'
 )

Category.create!(
  name: 'ケーキ'
  )

Category.create!(
  name: 'プリン'
  )

Category.create!(
  name: '焼き菓子'
  )

Category.create!(
  name: 'キャンディ'
  )