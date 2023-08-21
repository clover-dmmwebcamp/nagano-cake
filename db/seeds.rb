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
  
product1 = Product.create!(
  name: '瀬戸内レモンケーキ(4号)',
  introduction: '瀬戸内産のレモンをふんだんに使用した夏限定のレモンケーキです。',
  category_id: '1',
  without_tax: '3500',
  is_active: 'true',
  )
product1.product_image.attach(io: File.open(Rails.root.join('app/assets/images/product_images/cake_lemon.jpg')), filename: 'cake_lemon.jpg')

product2 = Product.create!(
  name: '輝々桃のケーキ(4号)',
  introduction: '土台に自家製のパイ生地、中層には生クリーム、上には長野県産の輝々桃（きらきらもも）でバラを咲かせてみました。',
  category_id: '1',
  without_tax: '2500',
  is_active: 'true',
  )
product2.product_image.attach(io: File.open(Rails.root.join('app/assets/images/product_images/cake_peach.jpg')), filename: 'cake_peach.jpg')

product3 = Product.create!(
  name: 'チョコレートケーキ(4号)',
  introduction: '滑らかなチョコレートとサクサクとしたビスケットの組み合わせが病みつきになる、チョコレートビスケットケーキです。',
  category_id: '1',
  without_tax: '2200',
  is_active: 'true',
  )
product3.product_image.attach(io: File.open(Rails.root.join('app/assets/images/product_images/cake_chocolate.png')), filename: 'cake_chocolate.png')

product4 = Product.create!(
  name: '季節のいちごケーキ(4号)',
  introduction: '長野県産のサマープリンセスを使用したケーキです。土台には自家製のタルト生地を使い、層にはフランボワーズのムースを使用しており、細部までこだわりの詰まったケーキです。',
  category_id: '1',
  without_tax: '2200',
  is_active: 'true',
  )
product4.product_image.attach(io: File.open(Rails.root.join('app/assets/images/product_images/cake_strawberry.jpg')), filename: 'cake_strawberry.jpg')

product5 = Product.create!(
  name: 'カラフルキャンディ',
  introduction: '長野県一カラフルに仕上げました。長野県で一番SNS映えするキャンディいかがでしょうか。',
  category_id: '4',
  without_tax: '500',
  is_active: 'true',
  )
product5.product_image.attach(io: File.open(Rails.root.join('app/assets/images/product_images/candy_lingering.jpg')), filename: 'candy_lingering.jpg')

product6 = Product.create!(
  name: 'ケーキ屋さんの金平糖(20粒)',
  introduction: '昔ながらの製法にこだわり抜いております。甘さ控えめの当店自慢の金平糖です。',
  category_id: '4',
  without_tax: '400',
  is_active: 'true',
  )
product6.product_image.attach(io: File.open(Rails.root.join('app/assets/images/product_images/candy_konpeito.jpg')), filename: 'candy_konpeito.jpg')

product7 = Product.create!(
  name: '小粒キャンディ(10粒)',
  introduction: '小粒で甘いキャンディいかがでしょうか。甘い物好きにはたまりません。',
  category_id: '4',
  without_tax: '300',
  is_active: 'true',
  )
product7.product_image.attach(io: File.open(Rails.root.join('app/assets/images/product_images/candy_candy.jpg')), filename: 'candy_candy.jpg')

product8 = Product.create!(
  name: 'ケーキ屋さんのべっこう飴(5粒)',
  introduction: '透き通るほど美しいべっこう飴です。洗練された味をご賞味あれ。',
  category_id: '4',
  without_tax: '200',
  is_active: 'true',
  )
product8.product_image.attach(io: File.open(Rails.root.join('app/assets/images/product_images/candy_tortoiseshell.jpg')), filename: 'candy_tortoiseshell.jpg')

product9 = Product.create!(
  name: 'プリン  ~オーガニックナッツを添えて~',
  introduction: '上部にはブルーベリーソースがかかっています。ブルーベリーの風味と味わい、滑らかな食感を楽しんでいただけるプリンです。',
  category_id: '2',
  without_tax: '500',
  is_active: 'true',
  )
product9.product_image.attach(io: File.open(Rails.root.join('app/assets/images/product_images/pudding_nuts.jpg')), filename: 'pudding_nuts.jpg')

product10 = Product.create!(
  name: '濃厚キャラメルプリン',
  introduction: '濃厚な味わいのキャラメルプリンです。しっとりきめ細かく滑らかな食感です。',
  category_id: '2',
  without_tax: '400',
  is_active: 'true',
  )
product10.product_image.attach(io: File.open(Rails.root.join('app/assets/images/product_images/pudding_caramel.jpg')), filename: 'pudding_caramel.jpg')

product11 = Product.create!(
  name: '超なめらかプリン',
  introduction: '長野県産生乳に良質な生クリームを加えたなめらかなプリンです。',
  category_id: '2',
  without_tax: '300',
  is_active: 'true',
  )
product11.product_image.attach(io: File.open(Rails.root.join('app/assets/images/product_images/pudding_simple.png')), filename: 'pudding_simple.png')

product12 = Product.create!(
  name: '季節のいちごのプリン',
  introduction: '甘くて瑞々しい長野県産「サマープリンセス」を使用。イチゴ好きにはたまらない商品です。',
  category_id: '2',
  without_tax: '360',
  is_active: 'true',
  )
product12.product_image.attach(io: File.open(Rails.root.join('app/assets/images/product_images/pudding_strawberry.jpeg')), filename: 'pudding_strawberry.jpeg')

product13 = Product.create!(
  name: 'フロランタン キャラメリーゼ（5個入）',
  introduction: 'サクサクの生地にほろ苦いカラメルの味がハーモニーを奏でます。そのマリアージュをお楽しみください。',
  category_id: '3',
  without_tax: '1350',
  is_active: 'true',
  )
product13.product_image.attach(io: File.open(Rails.root.join('app/assets/images/product_images/yakigashi_furorantan.jpeg')), filename: 'yakigashi_furorantan.jpeg')

product14 = Product.create!(
  name: 'こだわりマカロン５種セット',
  introduction: '全20種の中からランダムで5種セットでお届けいたします。（１つの種類が複数個入ることはありません）',
  category_id: '3',
  without_tax: '850',
  is_active: 'true',
  )
product14.product_image.attach(io: File.open(Rails.root.join('app/assets/images/product_images/yakigashi_macaron.jpg')), filename: 'yakigashi_macaron.jpg')

product15 = Product.create!(
  name: 'クッキー詰め合わせ',
  introduction: '画像の5種のクッキーの詰め合わせです。気になるあの子にプレゼントしてみてはいかが？',
  category_id: '3',
  without_tax: '800',
  is_active: 'true',
  )
product15.product_image.attach(io: File.open(Rails.root.join('app/assets/images/product_images/yakigashi_cookie.jpeg')), filename: 'yakigashi_cookie.jpeg')

product16 = Product.create!(
  name: 'チョコレートマフィン',
  introduction: '大人から子供までおすすめ!!ふんわりとしたマフィンの上にたっぷりとチョコクリームをのせました。',
  category_id: '3',
  without_tax: '430',
  is_active: 'true',
  )
product16.product_image.attach(io: File.open(Rails.root.join('app/assets/images/product_images/yakigashi_muffin.jpg')), filename: 'yakigashi_muffin.jpg')
