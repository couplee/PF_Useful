# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  [
    {
      name: 'たみ',
      profile: '',
      profile_image: File.open('./app/assets/images/profile/tami.jpg'),
      email: 'akai@gmail.com',
      password: '123qwe'
    },
    {
      name: 'けんと',
      profile: '',
      profile_image: File.open('./app/assets/images/profile/kento.jpg'),
      email: 'nishimura@gmail.com',
      password: '123qwe'
    },
    {
      name: 'みか',
      profile: '',
      profile_image: File.open('./app/assets/images/profile/mika.jpg'),
      email: 'mizutani@gmail.com',
      password: '123qwe'
    },
    {
      name: 'まゆこ',
      profile: '',
      profile_image: File.open('./app/assets/images/profile/mayuko.jpg'),
      email: 'ozuku@gmail.com',
      password: '123qwe'
    },
    {
      name: 'さとる',
      profile: '',
      profile_image: File.open('./app/assets/images/profile/satoru.jpg'),
      email: 'ota@gmail.com',
      password: '123qwe'
    },
    {
      name: 'りゅう',
      profile: '',
      profile_image: File.open('./app/assets/images/profile/ryu.jpg'),
      email: 'ryu@gmail.com',
      password: '123qwe'
    },
    {
      name: 'さつき',
      profile: '',
      profile_image: File.open('./app/assets/images/profile/satsuki.jpg'),
      email: 'suto@gmail.com',
      password: '123qwe'
    },
    {
      name: 'うぶ',
      profile: '',
      profile_image: File.open('./app/assets/images/profile/ubu.jpg'),
      email: 'kitano@gmail.com',
      password: '123qwe'
    },
    {
      name: 'さやか',
      profile: '',
      profile_image: File.open('./app/assets/images/profile/sayaka.jpg'),
      email: 'honda@gmail.com',
      password: '123qwe'
    },
    {
      name: 'あやか',
      profile: '普段から便利グッズを利用してます。',
      profile_image: File.open('./app/assets/images/profile/ayaka.jpg'),
      email: 'kanda@gmail.com',
      password: '123qwe'
    }
  ]
)

Product.create!(
  [
    {
      user_id: 10,
      title: '手動ポンプ付きふとん圧縮袋',
      body: "付属の手動ポンプで簡単に圧縮できる上、凄く丈夫なため圧縮状態が保てます。\n 柄が可愛く、丈夫そうだったのでこちらの商品に決めました。",
      seller: 'https://www.amazon.co.jp/gp/product/B0721T381L/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1',
      cost: '2580',
      period_of_use: '1年10ヶ月',
      photos_images: [File.open('./app/assets/images/product/pressure/71Q8R5woLDL._AC_SL1000_.jpg'),
                      File.open('./app/assets/images/product/pressure/61FXZNyA8zL._AC_SL1000_.jpg')],
      merits_attributes: [{ advantage: '保証が手厚く、終身交換できる' }, { advantage: '手動ポンプ付きで圧縮が楽にできる' }],
      reference: 'https://www.amazon.co.jp/gp/product/B0721T381L/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1',
      store_name: 'Amazon/Vacplus',
      tag_list: '生活用品'
    },
    {
      user_id: 6,
      title: 'ソファーカバーずれ防止用固定パイプ',
      body: "ソファーカバーがずれないようカバーの上からソファーの隙間に埋めます。\n 家のソファーは隙間がほとんどありませんでしたが、問題なく埋めることができました。\n あまり見かけない商品だったので購入しました。",
      seller: 'https://www.nitori-net.jp/ec/product/7841464s/',
      cost: '508',
      period_of_use: '2ヶ月',
      photos_images: [File.open('./app/assets/images/product/pipe/784146401.webp'),
                      File.open('./app/assets/images/product/pipe/784146402.jpg')],
      merits_attributes: [advantage: 'ソファーカバーがずれなくなり、整える手間が省けました'],
      demerits_attributes: [disadvantage: 'パイプが時々外れる'],
      reference: 'https://www.nitori-net.jp/ec/product/7841464s/',
      store_name: 'ニトリ',
      tag_list: '生活用品'
    },
    {
      user_id: 10,
      title: 'ゆでたまご器',
      body: '卵と水を入れて電子レンジで加熱するだけでゆでたまごができる。',
      seller: 'https://www.amazon.co.jp/gp/product/B000HIB9G4/ref=ppx_yo_dt_b_asin_title_o07_s01?ie=UTF8&psc=1',
      cost: '655',
      period_of_use: '1年1ヶ月',
      photos_images: [File.open('./app/assets/images/product/egg/719ie8NXEqL._AC_SL1500_.jpg'),
                      File.open('./app/assets/images/product/egg/51oPdyLPl+L._AC_SL1446_.jpg'), File.open('./app/assets/images/product/egg/81h7QpFcbBL._AC_SL1500_.jpg')],
      merits_attributes: [{ advantage: 'コンロを使わず、電子レンジでできるためキッチンから離れることができる' },
                          { advantage: '慣れてくると電子レンジでも好みの黄身の固さに調整できる' }],
      demerits_attributes: [disadvantage: '普段は大量に作らないため2個用を購入したのですが、2個以上いるとなったときに何回かに分けて作らないといけない'],
      reference: 'https://www.amazon.co.jp/gp/product/B000HIB9G4/ref=ppx_yo_dt_b_asin_title_o07_s01?ie=UTF8&psc=1',
      store_name: 'Amazon/曙産業',
      tag_list: 'キッチン用品'
    },
    {
      user_id: 10,
      title: 'ポリ袋エコホルダー',
      body: "エコホルダーを広げ、ポリ袋を中に入れた後、口部分を折り返して掛けるだけで即席卓上ゴミ箱ができる。\n 調理中のゴミ箱に最適だと思い購入しました。",
      seller: 'https://item.rakuten.co.jp/livingut/4903208067874/?s-id=ph_pc_itemname',
      cost: '972',
      period_of_use: '1年8ヶ月',
      photos_images: [File.open('./app/assets/images/product/holder/4903208067874_7.jpg'),
                      File.open('./app/assets/images/product/holder/4903208067874_1.jpg'), File.open('./app/assets/images/product/holder/4903208067874_5.jpg')],
      merits_attributes: [{ advantage: '使わない時は折り畳めるから場所をとらない' }, { advantage: '汚れても水洗いできて洗いやすい' },
                          { advantage: 'ポリ袋が閉めやすくなる' }],
      reference: 'https://item.rakuten.co.jp/livingut/4903208067874/?s-id=ph_pc_itemname',
      store_name: '楽天/クラスフィル株式会社',
      tag_list: 'キッチン用品'
    },
    {
      user_id: 6,
      title: 'スヌーズ＆ラジオ機能付き目覚まし時計',
      body: "太陽の光を再現することができる目覚まし時計。\n 設定した起床時間に合わせ徐々に明るくなる『日の出モード』と就寝時間に合わせ徐々に暗くなる『日の入りモード』付きで、自然に体を起床・睡眠モードに切り替えていく。\n 光の種類や明るさを調整できるため購入しました。",
      seller: 'https://www.amazon.co.jp/gp/product/B07KSQ1ZGP/ref=ppx_yo_dt_b_asin_title_o01_s00?ie=UTF8&psc=1',
      cost: '3999',
      period_of_use: '1年',
      photos_images: [File.open('./app/assets/images/product/clock/61xfa1UH1zL._AC_SL1500_.jpg'),
                      File.open('./app/assets/images/product/clock/61NIo+oixHL._AC_SL1000_.jpg'), File.open('./app/assets/images/product/clock/61kGoq-tk+L._AC_SL1000_.jpg')],
      merits_attributes: [{ advantage: '好みの光りや明るさに調整できる' },
                          { advantage: '時間表示のところの明るさを調整できるため、眩しくないぐらいの明るさに調節することができ、夜中に時間を確認することができる' }],
      demerits_attributes: [{ disadvantage: '多機能すぎてボタンが多く、操作方法が少しややこしい' }, { disadvantage: 'アラーム音を徐々に大きくしていく機能がない' }],
      reference: 'https://www.amazon.co.jp/gp/product/B07KSQ1ZGP/ref=ppx_yo_dt_b_asin_title_o01_s00?ie=UTF8&psc=1',
      store_name: 'Amazon/YABAE',
      tag_list: '家電製品,生活用品'
    },
    {
      user_id: 10,
      title: 'うぐいす型のレモン絞り',
      body: "うぐいす型の卓上レモン絞り。\n 業務用製品のため、丈夫な作りになってる。\n レモンを1／6ほどの大きさに切り、1個ずつ中に入れ、挟んで絞る。\n そのまま置いとくだけでも可愛くて購入しました。",
      seller: 'https://www.amazon.co.jp/gp/product/B001UJNO8K/ref=ppx_yo_dt_b_asin_title_o09_s00?ie=UTF8&psc=1',
      cost: '675',
      period_of_use: '1年3ヶ月',
      photos_images: [File.open('./app/assets/images/product/lemon/61cupnCy55L._AC_SL1500_.jpg'),
                      File.open('./app/assets/images/product/lemon/71wl2qqacML._AC_SL1500_.jpg'), File.open('./app/assets/images/product/lemon/21PN-8GsrPL._AC_.jpg')],
      merits_attributes: [{ advantage: 'うぐいす型で可愛い' }, { advantage: '意外と絞りやすい' }, { advantage: '洗いやすい' }],
      demerits_attributes: [disadvantage: 'レモンを大量に絞りたい時に、小さく切って何回かに分けて絞らないといけないのに手間がかかる'],
      reference: 'https://www.amazon.co.jp/gp/product/B001UJNO8K/ref=ppx_yo_dt_b_asin_title_o09_s00?ie=UTF8&psc=1',
      store_name: 'Amazon/赤川器物製作所',
      tag_list: 'キッチン用品'
    },
    {
      user_id: 8,
      title: 'お布団クリップ',
      body: '敷布団と掛け布団の端同士をクリップで止めて固定するため、掛け布団がずれ落ちない。',
      seller: 'https://item.rakuten.co.jp/yoimonohonpo/h0163/?s-id=ph_pc_itemname',
      cost: '1471',
      period_of_use: '3ヶ月',
      photos_images: [File.open('./app/assets/images/product/clip/oz1.webp'),
                      File.open('./app/assets/images/product/clip/imgrc0069427761.jpg'), File.open('./app/assets/images/product/clip/imgrc0069427764.jpg')],
      merits_attributes: [{ advantage: '掛け布団がずれ落ちなくなった' }, { advantage: 'クリップの強度が程よい強さなので、布団が痛まないうえ、ちゃんと布団を挟んでくれる' }],
      reference: 'https://item.rakuten.co.jp/yoimonohonpo/h0163/?s-id=ph_pc_itemname',
      store_name: '楽天/良いもの本舗',
      tag_list: '生活用品'
    },
    {
      user_id: 5,
      title: 'ゴミや埃が付きにくいキーボードカバー',
      body: '自宅のパソコンのキーボードに合った大きさにカットして利用するキーボードカバーで、その上埃が付着しづらい材質とのことで購入しました。',
      seller: 'https://item.rakuten.co.jp/casemania55/keymat2-k0001217929/?s-id=ph_pc_itemname',
      cost: '2395',
      period_of_use: '6ヶ月',
      photos_images: [File.open('./app/assets/images/product/cover/key_1.jpg'),
                      File.open('./app/assets/images/product/cover/key_2.jpg'), File.open('./app/assets/images/product/cover/key_3.jpg'), File.open('./app/assets/images/product/cover/key_4.jpg')],
      merits_attributes: [{ advantage: '自宅のノートパソコンのキーボードに合ったカバーがなかなか見つからなかったが、こちらの商品を大きさに合わせてカットするだけで使えました' },
                          { advantage: '埃が付着しづらい' }, { advantage: 'キーボードの字が見えやすい' }, { advantage: '材質がさらさらしているため、キーボードを使用してるときでも違和感がない' }],
      reference: 'https://item.rakuten.co.jp/casemania55/keymat2-k0001217929/?s-id=ph_pc_itemname',
      store_name: '楽天/株式会社メディアフューチャー',
      tag_list: '生活用品'
    },
    {
      user_id: 9,
      title: 'タッチスクリーン式湿度計デジタル',
      body: "温度計と湿度計が一緒になっており、現在の室温と湿度が見やすく表示され、同時に過去最高と最低の温湿度値も表示される。\n 最高と最低のデータは24時間で自動リセットするか、リセットするまでの全ての期間での最高最低を表示するのかをボタンひとつで切り替えられる。",
      seller: 'https://www.amazon.co.jp/gp/product/B072Q1D86C/ref=ppx_yo_dt_b_asin_title_o07_s00?ie=UTF8&psc=1',
      cost: '1480',
      period_of_use: '1年8ヶ月',
      photos_images: [File.open('./app/assets/images/product/thermometer/61tl6vkqbPL._SL1500_.jpg'),
                      File.open('./app/assets/images/product/thermometer/71OCiadPbDL._SL1000_.jpg'), File.open('./app/assets/images/product/thermometer/61sUzuTGc1L._SL1000_.jpg'), File.open('./app/assets/images/product/thermometer/61GSRe9P3IL._SL1000_.jpg')],
      merits_attributes: [{ advantage: '画面が大きめに設計されているため、少し離れた場所からでも温度と湿度の値を見ることができる' },
                          { advantage: '1日の室内の最高気温と最低気温を知ることができるため、室内で育ててる植物の管理がしやすくなった' }],
      reference: 'https://www.amazon.co.jp/gp/product/B072Q1D86C/ref=ppx_yo_dt_b_asin_title_o07_s00?ie=UTF8&psc=1',
      store_name: 'Amazon/ThermoPro',
      tag_list: '家電製品,生活用品'
    },
    {
      user_id: 10,
      title: '室内用洗濯物干し',
      body: "窓のすぐ内側に洗濯物が干せるから、室内に入ってくる日光を活用できるということで購入しました。\n 使用しない時はコンパクトに折り畳んで、カーテンの裏に収納して隠せる。\n 伸縮棒を窓枠に取り付けるだけで簡単に組み立てることができる上、竿受け部は窓のサイズや洗濯物を干す位置に応じて高さを自由に変えれる。",
      seller: 'https://www.amazon.co.jp/gp/product/B00KV2DXKQ/ref=ppx_yo_dt_b_asin_title_o06_s00?ie=UTF8&psc=1',
      cost: '2791',
      period_of_use: '1年3ヶ月',
      photos_images: [File.open('./app/assets/images/product/laundry/61dy+AxlF0L._AC_SL1000_.jpg'),
                      File.open('./app/assets/images/product/laundry/61p96f4ioML._AC_SL1000_.jpg'), File.open('./app/assets/images/product/laundry/613ik+fij3L._AC_SL1000_.jpg'), File.open('./app/assets/images/product/laundry/61BAqbWbA1L._AC_SL1000_.jpg')],
      merits_attributes: [{ advantage: '使用してない時は折り畳めるから場所を取らない' }, { advantage: '干す位置や干す高さを自由に変えることができる' }],
      reference: 'https://www.amazon.co.jp/gp/product/B00KV2DXKQ/ref=ppx_yo_dt_b_asin_title_o06_s00?ie=UTF8&psc=1',
      store_name: 'Amazon/IRIS OHYAMA',
      tag_list: '生活用品'
    },
    {
      user_id: 10,
      title: 'ワンタッチ式電動コーヒーミル',
      body: "ワンタッチでコーヒー豆を短時間で挽くことができ、コーヒー豆以外にも細かくて乾燥したものが挽けます。\n 挽き立てのコーヒー豆で淹れたコーヒーが飲みたくて購入しました。",
      seller: 'https://www.amazon.co.jp/gp/product/B07WC7W24G/ref=ppx_yo_dt_b_asin_title_o02_s00?ie=UTF8&psc=1',
      cost: '2272',
      period_of_use: '1年1ヶ月',
      photos_images: [File.open('./app/assets/images/product/mill/71BUc8ZMZHL._AC_SL1500_.jpg'),
                      File.open('./app/assets/images/product/mill/61t1zmQoBlL._AC_SL1000_.jpg'), File.open('./app/assets/images/product/mill/61NRF9d5E3L._AC_SL1000_.jpg')],
      merits_attributes: [{ advantage: '水洗いができる' }, { advantage: 'ワンタッチで操作が楽' }, { advantage: '意外と音が静か' },
                          { advantage: 'スタイリッシュ' }],
      reference: 'https://www.amazon.co.jp/gp/product/B07WC7W24G/ref=ppx_yo_dt_b_asin_title_o02_s00?ie=UTF8&psc=1',
      store_name: 'Amazon/HadinEEon',
      tag_list: '家電製品,キッチン用品'
    },
    {
      user_id: 5,
      title: '最大50kgまで量れる携帯式デジタルスケール',
      body: "ワンタッチで使用できる携帯式デジタルスケール。\n スーツケースなどを簡単に測れる。\n ボタンひとつで計ることができ、デジタル単位切換えによりkgやgでの表示/選択が可能。\n 軽量なため持ち運びに便利で耐久性もある。\n 旅先で荷物の重さを量らないといけないことが多々あるため、購入しました。",
      seller: 'https://item.rakuten.co.jp/life-mart/10000574/?s-id=ph_pc_itemname',
      cost: '1070',
      period_of_use: '2年2ヶ月',
      photos_images: [File.open('./app/assets/images/product/meter/3.jpg'),
                      File.open('./app/assets/images/product/meter/4.jpg')],
      merits_attributes: [{ advantage: '本体重量が約95gで、場所を取らないほどの大きさ' }, { advantage: 'LED液晶スクリーンで字も大きいため見やすい' }],
      demerits_attributes: [disadvantage: 'はかりの誤差が ±30g ある'],
      reference: 'https://item.rakuten.co.jp/life-mart/10000574/?s-id=ph_pc_itemname',
      store_name: '楽天/LifeMart',
      tag_list: '家電製品,生活用品'
    },
    {
      user_id: 10,
      title: '袋止めクリップ',
      body: "食品の袋に差し込んで密封します。\n 入数が多く、値段もお手頃だったので購入しました。",
      seller: 'https://www.amazon.co.jp/gp/product/B07C1G1TNH/ref=ppx_yo_dt_b_asin_title_o02_s00?ie=UTF8&psc=1',
      cost: '1388',
      period_of_use: '3年',
      photos_images: [File.open('./app/assets/images/product/stopper/61SD1sAbiDL._AC_SL1000_.jpg'),
                      File.open('./app/assets/images/product/stopper/619aLpXYJ4L._AC_SL1500_.jpg'), File.open('./app/assets/images/product/stopper/710YoCddPCL._AC_SL1080_.jpg')],
      merits_attributes: [advantage: '他の袋止めクリップに比べて密封度が高い'],
      demerits_attributes: [disadvantage: '分厚目の袋だと差し込みにくかったり、差し込めない時がある'],
      reference: 'https://www.amazon.co.jp/gp/product/B07C1G1TNH/ref=ppx_yo_dt_b_asin_title_o02_s00?ie=UTF8&psc=1',
      store_name: 'Amazon/CUGBO',
      tag_list: 'キッチン用品'
    },
    {
      user_id: 6,
      title: 'Bluetoothトランスミッター',
      body: "Bluetoothトランスミッター(送信機)とレシーバー(受信機)ができる一台二役のBluetoothアダプター。\n 自宅ではテレビとBluetoothスピーカーに接続して使用してます。",
      seller: 'https://www.amazon.co.jp/gp/product/B07DRGPH3K/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1',
      cost: '2690',
      period_of_use: '1年7ヶ月',
      photos_images: [File.open('./app/assets/images/product/transmitter/61p5LgqXdkL._AC_SL1500_.jpg'),
                      File.open('./app/assets/images/product/transmitter/613133hmUiL._AC_SL1000_.jpg'), File.open('./app/assets/images/product/transmitter/61XLSIt1J1L._AC_SL1000_.jpg')],
      merits_attributes: [advantage: '家事をしてるときなど、テレビから結構離れていてもスピーカーからテレビの音声が聞こえるため、家事をしながらテレビを見ることができます'],
      demerits_attributes: [{ disadvantage: 'スピーカーとBluetooth接続する時、接続が遅いときがある' },
                            { disadvantage: '時々接続が悪くなり、音声が途切れたりする' }],
      reference: 'https://www.amazon.co.jp/gp/product/B07DRGPH3K/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1',
      store_name: 'Amazon/Agedate',
      tag_list: '家電製品,生活用品'
    }
  ]
)
