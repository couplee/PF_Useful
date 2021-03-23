# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(
  name: 'あやか',
  profile: '普段から便利グッズを利用してます。',
  profile_image: File.open('./app/assets/images/profile/149913.jpg'),
  email: 'kanda@gmail.com',
  password: '123qwe'
)

User.create!(
  name: 'さやか',
  profile: '',
  profile_image: File.open('./app/assets/images/profile/149822.png'),
  email: 'honda@gmail.com',
  password: '123qwe'
)

User.create!(
  name: 'うぶ',
  profile: '',
  profile_image: File.open('./app/assets/images/profile/149906.jpg'),
  email: 'kitano@gmail.com',
  password: '123qwe'
)

User.create!(
  name: 'さつき',
  profile: '',
  profile_image: File.open('./app/assets/images/profile/149898.jpg'),
  email: 'suto@gmail.com',
  password: '123qwe'
)

User.create!(
  name: 'りゅう',
  profile: '',
  profile_image: File.open('./app/assets/images/profile/149904.jpg'),
  email: 'ryu@gmail.com',
  password: '123qwe'
)

User.create!(
  name: 'さとる',
  profile: '',
  profile_image: File.open('./app/assets/images/profile/149912.jpg'),
  email: 'ota@gmail.com',
  password: '123qwe'
)

User.create!(
  name: 'まゆこ',
  profile: '',
  profile_image: File.open('./app/assets/images/profile/149911.jpg'),
  email: 'ozuku@gmail.com',
  password: '123qwe'
)

User.create!(
  name: 'みか',
  profile: '',
  profile_image: File.open('./app/assets/images/profile/149908.jpg'),
  email: 'mizutani@gmail.com',
  password: '123qwe'
)

User.create!(
  name: 'けんと',
  profile: '',
  profile_image: File.open('./app/assets/images/profile/149905.jpg'),
  email: 'nishimura@gmail.com',
  password: '123qwe'
)

User.create!(
  name: 'たみ',
  profile: '',
  profile_image: File.open('./app/assets/images/profile/149910.jpg'),
  email: 'akai@gmail.com',
  password: '123qwe'
)


  Product.create!(
  [
    {
      user_id: 1,
      title: 'トランスミッター',
      body: 'Bluetoothトランスミッター(送信機)とレシーバー(受信機)一台二役のBluetoothアダプター。自宅ではテレビとBluetoothスピーカーに接続して使用してます。',
      seller: 'https://www.amazon.co.jp/gp/product/B07DRGPH3K/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1',
      cost: '2690',
      period_of_use: '1年7ヶ月'
    },
    {
      user_id: 2,
      title: 'ふとん圧縮袋',
      body: '簡単に圧縮できる上、圧縮された状態をずっと保ちます。柄が可愛く、丈夫そうだったので購入しました。',
      seller: 'https://www.amazon.co.jp/gp/product/B0721T381L/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1',
      cost: '2580',
      period_of_use: '1年10ヶ月'
    },
    {
      user_id: 3,
      title: 'ソファーカバーずれ防止',
      body: 'ソファーカバーがずれないようカバーの上からソファーの隙間に埋めます。家のソファーは隙間がほとんどありませんでしたが、問題なく埋めることができました。あまり見かけない商品だったので購入しました。',
      seller: 'https://www.nitori-net.jp/ec/product/7841464s/',
      cost: '508',
      period_of_use: '2ヶ月'
    },
    # {
    #   user_id: 5,
    #   title: '',
    #   body: '',
    #   seller: '',
    #   cost: '',
    #   period_of_use: ''
    # },
    # {
    #   user_id: 6,
    #   title: '',
    #   body: '',
    #   seller: '',
    #   cost: '',
    #   period_of_use: ''
    # },
    # {
    #   user_id: 7,
    #   title: '',
    #   body: '',
    #   seller: '',
    #   cost: '',
    #   period_of_use: ''
    # },
    # {
    #   user_id: 8,
    #   title: '',
    #   body: '',
    #   seller: '',
    #   cost: '',
    #   period_of_use: ''
    # },
    # {
    #   user_id: 9,
    #   title: '',
    #   body: '',
    #   seller: '',
    #   cost: '',
    #   period_of_use: ''
    # },
    # {
    #   user_id: 10,
    #   title: '',
    #   body: '',
    #   seller: '',
    #   cost: '',
    #   period_of_use: ''
    # },
    # {
    #   user_id: 11,
    #   title: '',
    #   body: '',
    #   seller: '',
    #   cost: '',
    #   period_of_use: ''
    # },
    # {
    #   user_id: 12,
    #   title: '',
    #   body: '',
    #   seller: '',
    #   cost: '',
    #   period_of_use: ''
    # },
    # {
    #   user_id: 13,
    #   title: '',
    #   body: '',
    #   seller: '',
    #   cost: '',
    #   period_of_use: ''
    # },
    # {
    #   user_id: 14,
    #   title: '',
    #   body: '',
    #   seller: '',
    #   cost: '',
    #   period_of_use: ''
    # },
    # {
    #   user_id: 15,
    #   title: '',
    #   body: '',
    #   seller: '',
    #   cost: '',
    #   period_of_use: ''
    # },
    # {
    #   user_id: 16,
    #   title: '',
    #   body: '',
    #   seller: '',
    #   cost: '',
    #   period_of_use: ''
    # }
  ]
)


Photo.create!(
    [ 
      {
        product_id: 1,
        image: File.open('./app/assets/images/product/149915.jpg')
      },
      {
        product_id: 2,
        image: File.open('./app/assets/images/product/71Q8R5woLDL._AC_SL1000_.jpg')
      },
      {
        product_id: 3,
        image: File.open('./app/assets/images/product/784146401.webp')
      }
    ]
  )
  
Merit.create!(
  [
    {
      product_id: 1,
      advantage: '家事をしてるときなど、テレビから結構離れていてもスピーカーからテレビの音声が聞こえるため、家事をしながらテレビを見ることができます'
    },
    {
      product_id: 2,
      advantage: '保証が手厚く、終身交換できる'
    },
    {
      product_id: 3,
      advantage: 'カバーがずれなくなり、整える手間が省けました'
    },
    # {
    #   product_id: 4,
    #   advantage: ''
    # },
    # {
    #   product_id: 5,
    #   advantage: ''
    # },
    # {
    #   product_id: 6,
    #   advantage: ''
    # },
    # {
    #   product_id: 7,
    #   advantage: ''
    # },
    # {
    #   product_id: 8,
    #   advantage: ''
    # },
    # {
    #   product_id: 9,
    #   advantage: ''
    # },
    # {
    #   product_id: 10,
    #   advantage: ''
    # },
    # {
    #   product_id: 11,
    #   advantage: ''
    # },
    # {
    #   product_id: 12,
    #   advantage: ''
    # },
    # {
    #   product_id: 13,
    #   advantage: ''
    # },
    # {
    #   product_id: 14,
    #   advantage: ''
    # },
    # {
    #   product_id: 15,
    #   advantage: ''
    # },
  ]
)

Demerit.create!(
  [
    {
      product_id: 1,
      disadvantage: '時々接続が遅い' '時々接続が悪くなり、音声が途切れたりする'
    },
    {
      product_id: 3,
      disadvantage: '時々外れます'
    }
  ]
)

# Tag.create!(
#   [
#     {
#       product_id: 1,
#       name: '電化製品'
#     },
#     {
#       product_id: 2,
#       name: '生活用品'
#     }
#   ]
# )

