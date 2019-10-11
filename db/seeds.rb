# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ category_name: 'Star Wars' }, { category_name: 'Lord of the Rings' }])
#   Character.create(category_name: 'Luke', movie: movies.first)
lady = Category.create(category_name:"レディース")

lady_tops = lady.children.create(category_name:"トップス")
lady_tops.children.create([{category_name:"Tシャツ/カットソー(半袖/袖なし)"}, {category_name:"Tシャツ/カットソー(七分/長袖)"},{category_name:"シャツ/ブラウス（半袖/袖なし）"},
                          {category_name:"シャツ/ブラウス（七分/長袖）"},{category_name:"ポロシャツ"},{category_name:"キャミソール"},{category_name:"タンクトップ"},{category_name:"ホルターネック"},
                          {category_name:"ニット/セーター"},{category_name:"チュニック"},{category_name:"カーディガン/ボレロ"},{category_name:"アンサンブル"},
                          {category_name:"ベスト/ジレ"},{category_name:"パーカー"}])

lady_jacket = lady.children.create(category_name:"ジャケット/アウター")
lady_jacket.children.create([{category_name:"テーラードジャケット"}, {category_name:"ノーカラージャケット"},{category_name:"Gジャン/デニムジャケット"},
                            {category_name:"レザージャケット"},{category_name:"ダウンジャケット"},{category_name:"ライダースジャケット"},{category_name:"ミリタリージャケット"},{category_name:"ダウンベスト"},
                            {category_name:"ジャンパー/ブルゾン"},{category_name:"ポンチョ"},{category_name:"ロングコート"},{category_name:"トレンチコート"},
                            {category_name:"ダッフルコート"},{category_name:"ピーコート"}])

lady_pants = lady.children.create(category_name:"パンツ")
lady_pants.children.create([{category_name:"デニム/ジーンズ"}, {category_name:"ショートパンツ"},{category_name:"カジュアルパンツ"},
                            {category_name:"ハーフパンツ"},{category_name:"チノパン"},{category_name:"ワークパンツ/カーゴパンツ"},{category_name:"クロップドパンツ"},{category_name:"サロペット/オーバーオール"},
                            {category_name:"オールインワン"},{category_name:"サルエルパンツ"},{category_name:"ガウチョパンツ"},{category_name:"その他"}])

lady_skirt = lady.children.create(category_name:"スカート")
lady_skirt.children.create([{category_name:"ミニスカート"}, {category_name:"ひざ丈スカート"},{category_name:"ロングスカート"},
                            {category_name:"キュロット"},{category_name:"その他"}])

lady_onepiece = lady.children.create(category_name:"ワンピース")
lady_onepiece.children.create([{category_name:"ミニワンピース"}, {category_name:"ひざ丈ワンピース"},{category_name:"ロングワンピース"},
                            {category_name:"その他"}])

lady_shoes = lady.children.create(category_name:"靴")
lady_shoes.children.create([{category_name:"ハイヒール/パンプス"}, {category_name:"ブーツ"},{category_name:"サンダル"},{category_name:"スニーカー"}, {category_name:"ミュール"},{category_name:"モカシン"},
                            {category_name:"ローファー/革靴"},{category_name:"フラットシューズ/バレエシューズ"},{category_name:"長靴/レインシューズ"},{category_name:"その他"}])

lady_roomwear = lady.children.create(category_name:"ルームウェア/パジャマ")
lady_roomwear.children.create([{category_name:"パジャマ"}, {category_name:"ルームウェア"}])

lady_legwear = lady.children.create(category_name:"レッグウェア")
lady_legwear.children.create([{category_name:"ソックス"}, {category_name:"スパッツ/レギンス"},{category_name:"ストッキング/タイツ"}, {category_name:"レッグウォーマー"},{category_name:"その他"}])

lady_hat = lady.children.create(category_name:"帽子")
lady_hat.children.create([{category_name:"ニットキャップ/ビーニー"}, {category_name:"ハット"},{category_name:"ハンチング/ベレー帽"},{category_name:"キャップ"},
                          {category_name:"キャスケット"},{category_name:"麦わら帽子"},{category_name:"その他"}])


lady_bag = lady.children.create(category_name:"バッグ")
lady_bag.children.create([{category_name:"ハンドバッグ"}, {category_name:"トートバッグ"},{category_name:"エコバッグ"},
                            {category_name:"リュック/バックパック"},{category_name:"ボストンバッグ"},{category_name:"スポーツバッグ"},{category_name:"ショルダーバッグ"},{category_name:"クラッチバッグ"},
                            {category_name:"ポーチ/パニティ"},{category_name:"ボディバッグ/ウェストバッグ"},{category_name:"マザーズバッグ"},{category_name:"メッセンジャーズバッグ"},{category_name:"ビジネスバッグ"},
                            {category_name:"旅行用バッグ/キャリーバッグ"}])

lady_accesary = lady.children.create(category_name:"アクセサリー")
lady_accesary.children.create([{category_name:"ネックレス"},{category_name:"ブレスレット"},{category_name:"バングル/リストバンド"},
                            {category_name:"リング"},{category_name:"ピアス（片耳用）"},{category_name:"ピアス（両耳用）"},{category_name:"イヤリング"},{category_name:"アンクレット"},
                            {category_name:"ブローチ/コサージュ"},{category_name:"チャーム"},{category_name:"その他"}])

lady_hairaccesary = lady.children.create(category_name:"ヘアアクセサリー")
lady_hairaccesary.children.create([{category_name:"ヘアゴム/シュシュ"},{category_name:"ヘアバンド/カチューシャ"},{category_name:"ヘアピン"},{category_name:"その他"}])

lady_goods = lady.children.create(category_name:"小物")
lady_goods.children.create([{category_name:"長財布"},{category_name:"折財布"},{category_name:"コインケース/小銭入れ"},
                            {category_name:"名刺入れ/定期入れ"},{category_name:"キーケース"},{category_name:"キーホルダー"},{category_name:"手袋/アームカバー"},{category_name:"ハンカチ"},
                            {category_name:"ベルト"},{category_name:"マフラー/ショール"},{category_name:"ストール/スヌード"},{category_name:"バンダナ/スカーフ"},{category_name:"ネックウォーマー"},
                            {category_name:"サスペンダー"}])

lady_watch = lady.children.create(category_name:"時計")
lady_watch.children.create([{category_name:"腕時計（アナログ）"}, {category_name:"腕時計（デジタル）"},{category_name:"ラバーベルト"},{category_name:"レザーベルト"},{category_name:"金属ベルト"},{category_name:"その他"}])


men = Category.create(category_name:"メンズ")
men_tops = men.children.create(category_name:"トップス")
men_tops.children.create([{category_name:"Tシャツ/カットソー(半袖/袖なし)"}, {category_name:"Tシャツ/カットソー(七分/長袖)"},{category_name:"シャツ"},
                          {category_name:"ポロシャツ"},{category_name:"タンクトップ"},{category_name:"ニット/セーター"},{category_name:"パーカー"},{category_name:"カーディガン"},
                          {category_name:"ジャージ"},{category_name:"ベスト"},{category_name:"その他"}])

men_jacket = men.children.create(category_name:"ジャケット/アウター")
men_jacket.children.create([{category_name:"テーラードジャケット"}, {category_name:"ノーカラージャケット"},{category_name:"Gジャン/デニムジャケット"},
                          {category_name:"レザージャケット"},{category_name:"ダウンジャケット"},{category_name:"ライダースジャケット"},{category_name:"ミリタリージャケット"},{category_name:"ナイロンジャケット"},
                          {category_name:"フライトジャケット"},{category_name:"ダッフルコート"},{category_name:"ピーコート"},{category_name:"ステンカラーコート"},{category_name:"トレンチコート"},{category_name:"モッズコート"}])

men_pants = men.children.create(category_name:"パンツ")
men_pants.children.create([{category_name:"デニム/ジーンズ"}, {category_name:"ワークパンツ/カーゴパンツ"},{category_name:"スラックス"},
                          {category_name:"チノパン"},{category_name:"ショートパンツ"},{category_name:"ペインターパンツ"},{category_name:"サルエルパンツ"},{category_name:"オーバーオール"},{category_name:"その他"}])

men_shoes = men.children.create(category_name:"靴")
men_shoes.children.create([{category_name:"スニーカー"},{category_name:"サンダル"},{category_name:"ブーツ"},{category_name:"モカシン"},{category_name:"ドレス/ビジネス"},{category_name:"長靴/レインシューズ"},{category_name:"デッキシューズ"},{category_name:"その他"}])

men_bag = men.children.create(category_name:"バッグ")
men_bag.children.create([{category_name:"ショルダーバッグ"}, {category_name:"トートバッグ"},{category_name:"ボストンバッグ"},
                        {category_name:"リュック/バックパック"},{category_name:"ウェストポーチ"},{category_name:"ボディーバッグ"},{category_name:"ドラムバッグ"},{category_name:"ビジネスバッグ"},
                        {category_name:"トラベルバッグ"},{category_name:"ビジネスバッグ"},{category_name:"トラベルバッグ"},{category_name:"メッセンジャーズバッグ"},{category_name:"エコバッグ"},{category_name:"その他"}])

men_suit = men.children.create(category_name:"スーツ")
men_suit.children.create([{category_name:"スーツジャケット"}, {category_name:"スーツベスト"},{category_name:"スラックス"},
                        {category_name:"セットアップ"},{category_name:"その他"}])

men_hat = men.children.create(category_name:"帽子")
men_hat.children.create([{category_name:"キャップ"},{category_name:"ハット"},{category_name:"ニットキャップ/ビーニー"}, {category_name:"ハンチング/ベレー"},{category_name:"キャスケット"},{category_name:"サンバイザー"},
                        {category_name:"その他"}])

men_accesary = men.children.create(category_name:"アクセサリー")
men_accesary.children.create([{category_name:"ネックレス"}, {category_name:"ブレスレット"},{category_name:"バングル/リストバンド"},
                            {category_name:"リング"},{category_name:"ピアス（片耳用）"},{category_name:"ピアス（両耳用）"},{category_name:"イヤリング"},{category_name:"アンクレット"},{category_name:"その他"}])

men_goods = men.children.create(category_name:"小物")
men_goods.children.create([{category_name:"長財布"}, {category_name:"折財布"},{category_name:"コインケース/小銭入れ"},
                            {category_name:"名刺入れ/定期入れ"},{category_name:"キーケース"},{category_name:"キーホルダー"},{category_name:"ネクタイ"},{category_name:"手袋"},{category_name:"ハンカチ"},
                            {category_name:"ベルト"},{category_name:"マフラー"},{category_name:"ストール"},{category_name:"バンダナ"}])

men_watch = men.children.create(category_name:"時計")
men_watch.children.create([{category_name:"腕時計（アナログ)"}, {category_name:"腕時計（デジタル）"},{category_name:"ラバーベルト"},{category_name:"レザーベルト"},{category_name:"金属ベルト"},{category_name:"その他"}])


men_swimwear = men.children.create(category_name:"水着")
men_swimwear.children.create([{category_name:"一般水着"}, {category_name:"スポーツ用"},{category_name:"アクセサリー"},{category_name:"その他"}])

men_legwear = men.children.create(category_name:"レッグウェア")
men_legwear.children.create([{category_name:"ソックス"}, {category_name:"レギンス/スパッツ"}, {category_name:"レッグウォーマー"},{category_name:"その他"}])

men_underwear = men.children.create(category_name:"アンダーウェア")
men_legwear.children.create([{category_name:"トランクス"}, {category_name:"ボクサーパンツ"},{category_name:"その他"}])

men_other = men.children.create(category_name:"その他")

kids = Category.create(category_name: "ベビー・キッズ")

kids_girl95cm = kids.children.create(category_name:"ベビー用(女の子用)〜95㎝")
kids_girl95cm.children.create([{category_name:"トップス"}, {category_name:"アウター"}, {category_name:"パンツ"}, {category_name:"スカート"}, {category_name:"ワンピース"}, {category_name:"ベビードレス"},
                              {category_name:"おくるみ"}, {category_name:"下着/肌着"}, {category_name:"パジャマ"}, {category_name:"ロンパース"}, {category_name:"その他"}])

kids_boy95cm = kids.children.create(category_name:"ベビー用(男の子用)〜95㎝")
kids_boy95cm.children.create([{category_name:"トップス"}, {category_name:"アウター"}, {category_name:"パンツ"}, {category_name:"おくるみ"}, {category_name:"下着/肌着"}, {category_name:"パジャマ"},
                              {category_name:"ロンパース"}, {category_name:"その他"}])

kids_both95cm = kids.children.create(category_name:"ベビー用(男女兼用)〜95㎝")
kids_both95cm.children.create([{category_name:"トップス"}, {category_name:"アウター"}, {category_name:"パンツ"}, {category_name:"おくるみ"}, {category_name:"下着/肌着"}, {category_name:"パジャマ"},
                                {category_name:"ロンパース"}, {category_name:"その他"}])

kids_girl100cm = kids.children.create(category_name:"キッズ用(女の子用)100㎝〜")
kids_girl100cm.children.create([{category_name:"コート"}, {category_name:"ジャケット/上着"}, {category_name:"トップス(Tシャツ/カットソー)"}, {category_name:"トップス(トレーナー)"}, {category_name:"トップス(チュニック)"},
                                {category_name:"トップス(その他)"},{category_name:"スカート"}, {category_name:"パンツ"}, {category_name:"ワンピース"}, {category_name:"セットアップ"}, {category_name:"パジャマ"},
                                {category_name:"フォーマル/ドレス"}, {category_name:"和服"}])

kids_boy100cm = kids.children.create(category_name:"キッズ用(男の子用)100㎝〜")
kids_boy100cm.children.create([{category_name:"コート"}, {category_name:"ジャケット/上着"}, {category_name:"トップス(Tシャツ/カットソー)"}, {category_name:"トップス(トレーナー)"},
                              {category_name:"トップス(その他)"}, {category_name:"パンツ"}, {category_name:"セットアップ"}, {category_name:"パジャマ"}, {category_name:"フォーマル/ドレス"}, {category_name:"和服"}])

kids_both100cm = kids.children.create(category_name:"キッズ用(男女兼用)100㎝〜")
kids_both100cm.children.create([{category_name:"コート"}, {category_name:"ジャケット/上着"}, {category_name:"トップス(Tシャツ/カットソー)"}, {category_name:"トップス(トレーナー)"},
                                {category_name:"トップス(その他)"}, {category_name:"ボトムス"}, {category_name:"パジャマ"}, {category_name:"その他"}])

kids_shoes = kids.children.create(category_name:"キッズ靴")
kids_shoes.children.create([{category_name:"スニーカー"}, {category_name:"サンダル"}, {category_name:"ブーツ"}, {category_name:"長靴"}, {category_name:"その他"}])

kids_fashiongoods = kids.children.create(category_name:"子ども用ファッション小物")
kids_fashiongoods.children.create([{category_name:"靴下/スパッツ"}, {category_name:"帽子"}, {category_name:"エプロン"}, {category_name:"サスペンダー"}, {category_name:"タイツ"}, {category_name:"ハンカチ"},
                                    {category_name:"バンダナ"}, {category_name:"ベルト"}, {category_name:"マフラー"}, {category_name:"傘"}, {category_name:"手袋"}, {category_name:"スタイ"}, {category_name:"バッグ"}, {category_name:"その他"}])

kids_bathgoods = kids.children.create(category_name:"おむつ/トイレ/バス")
kids_bathgoods.children.create([{category_name:"おむつ用品"}, {category_name:"おまる/補助便座"}, {category_name:"トレーニングパンツ"}, {category_name:"ベビーバス"}, {category_name:"お風呂用品"}, {category_name:"その他"}])

kids_outdoorgoods = kids.children.create(category_name:"外出/移動用品")
kids_outdoorgoods.children.create([{category_name:"ベビーカー"}, {category_name:"抱っこひも/スリング"}, {category_name:"チャイルドシート"}, {category_name:"その他"}])

kids_mealgoods = kids.children.create(category_name:"授乳/食事")
kids_mealgoods.children.create([{category_name:"ミルク"}, {category_name:"ベビーフード"}, {category_name:"ベビー用食器"}, {category_name:"その他"}])

kids_interiorgoods = kids.children.create(category_name:"ベビー家具/寝具/室内用品")
kids_interiorgoods.children.create([{category_name:"ベッド"}, {category_name:"布団/毛布"}, {category_name:"イス"}, {category_name:"たんす"}, {category_name:"その他"}])

kids_toygoods = kids.children.create(category_name:"おもちゃ")
kids_toygoods.children.create([{category_name:"おふろのおもちゃ"}, {category_name:"がらがら"}, {category_name:"オルゴール"}, {category_name:"ベビージム"}, {category_name:"手押し車/カタカタ"}, {category_name:"知育玩具"}, {category_name:"その他"}])

kids_eventgoods = kids.children.create(category_name:"行事/記念品")
kids_eventgoods.children.create([{category_name:"お宮参り用品"}, {category_name:"お食い初め用品"}, {category_name:"アルバム"}, {category_name:"手形/足形"}, {category_name:"その他"}])

kids_other = kids.children.create(category_name:"その他")
kids_other.children.create([{category_name:"母子手帳用品"}, {category_name:"その他"}])




beauty = Category.create(category_name:"コスメ・香水・美容")
beauty_basemakeup = beauty.children.create(category_name:"ベースメイク")
beauty_basemakeup.children.create([{category_name:"ファンデーション"}, {category_name:"化粧下地"},{category_name:"コントロールカラー"},
                                    {category_name:"BBクリーム"},{category_name:"CCクリーム"},{category_name:"コンシーラー"},{category_name:"フェイスパウダー"},{category_name:"トライアルセット/サンプル"},
                                    {category_name:"その他"}])

beauty_makeup = beauty.children.create(category_name:"メイクアップ")
beauty_makeup.children.create([{category_name:"アイシャドウ"}, {category_name:"口紅"},{category_name:"リップグロス"},
                                {category_name:"リップライナー"},{category_name:"チーク"},{category_name:"フェイスカラー"},{category_name:"マスカラ"},{category_name:"アイライナー"},
                                {category_name:"つけまつげ"},{category_name:"アイブロウペンシル"},{category_name:"パウダーアイブロウ"},{category_name:"眉マスカラ"},
                                {category_name:"トライアルセット/サンプル"},{category_name:"メイク道具/化粧小物"},{category_name:"美顔用品/美顔ローラー"},{category_name:"その他"}])

beauty_nailcare = beauty.children.create(category_name:"ネイルケア")
beauty_nailcare.children.create([{category_name:"ネイルカラー"}, {category_name:"カラージェル"},{category_name:"ネイルベースコート/トップコート"},
                                  {category_name:"ネイルアート用品"},{category_name:"ネイルパーツ"},{category_name:"ネイルチップ/付け爪"},{category_name:"手入れ用具"},{category_name:"除光液"},
                                  {category_name:"その他"}])

beauty_perfume = beauty.children.create(category_name:"香水")
beauty_perfume.children.create([{category_name:"香水（女性用）"}, {category_name:"香水（男性用）"},{category_name:"ユニセックス"},
                                  {category_name:"ボディミスト"},{category_name:"その他"}])

beauty_skincare = beauty.children.create(category_name:"スキンケア/基礎化粧品")
beauty_skincare.children.create([{category_name:"化粧水/ローション"}, {category_name:"乳液/ミルク"},{category_name:"美容液"},
                                  {category_name:"フェイスクリーム"},{category_name:"洗顔料"},{category_name:"クレンジング/メイク落とし"},{category_name:"パック/フェイスマスク"},{category_name:"ジェル/ゲル"},{category_name:"ブースター/導入液"},
                                  {category_name:"アイケア"},{category_name:"リップケア"},{category_name:"トライアルセット/サンプル"},{category_name:"洗顔グッズ"},{category_name:"その他"}])

beauty_haircare = beauty.children.create(category_name:"ヘアケア")
beauty_haircare.children.create([{category_name:"シャンプー"}, {category_name:"トリートメント"},{category_name:"コンディショナー"},
                                  {category_name:"リンス"},{category_name:"スタイリング剤"},{category_name:"カラーリング剤"},{category_name:"ブラシ"},{category_name:"その他"}])

beauty_bodycare = beauty.children.create(category_name:"ボディケア")
beauty_bodycare.children.create([{category_name:"オイル/クリーム"}, {category_name:"ハンドクリーム"},{category_name:"ローション"},
                                  {category_name:"日焼け止め/サンオイル"},{category_name:"ボディソープ"},{category_name:"入浴剤"},{category_name:"制汗/デオドラント"},{category_name:"フットケア"},{category_name:"その他"}])

beauty_oralcare = beauty.children.create(category_name:"オーラルケア")
beauty_oralcare.children.create([{category_name:"口臭防止/エチケット用品"}, {category_name:"歯ブラシ"},{category_name:"その他"}])

beauty_relaxation = beauty.children.create(category_name:"リラクゼーション")
beauty_relaxation.children.create([{category_name:"エッセンシャルオイル"}, {category_name:"芳香剤"},{category_name:"お香/香炉"},
                                    {category_name:"キャンドル"},{category_name:"リラクゼーショングッズ"},{category_name:"その他"}])

beauty_diet = beauty.children.create(category_name:"ダイエット")
beauty_diet.children.create([{category_name:"ダイエット食品"}, {category_name:"エクササイズ用品"},{category_name:"体重計"},
                                    {category_name:"体脂肪計"},{category_name:"その他"}])

beauty_other = beauty.children.create(category_name:"その他")
beauty_other.children.create([{category_name:"健康用品"}, {category_name:"看護/介護用品"},{category_name:"救急/衛星用品"},
                                {category_name:"その他"}])


electricappliances = Category.create(category_name:"家電・スマホ・カメラ")
electricappliances_phone = electricappliances.children.create(category_name:"スマートフォン/携帯電話")
electricappliances_phone.children.create([{category_name:"スマートフォン本体"}, {category_name:"バッテリー/充電器"},{category_name:"携帯電話本体"},
                                    {category_name:"PHS本体"},{category_name:"その他"}])

electricappliances_phoneaccessories = electricappliances.children.create(category_name:"スマホアクセサリー")
electricappliances_phoneaccessories.children.create([{category_name:"Android用ケース"}, {category_name:"iPhone用ケース"},{category_name:"カバー"},
                                    {category_name:"イヤホンジャック"},{category_name:"ストラップ"},{category_name:"フィルム"},{category_name:"自撮り棒"},{category_name:"その他"}])

electricappliances_tablet = electricappliances.children.create(category_name:"PC/タブレット")
electricappliances_tablet.children.create([{category_name:"タブレット"}, {category_name:"ノートPC"},{category_name:"デスクトップ型PC"},
                                                      {category_name:"ディスプレイ"},{category_name:"電子ブックリーダー"},{category_name:"PC周辺機器"},{category_name:"PCパーツ"},{category_name:"その他"}])

electricappliances_camera = electricappliances.children.create(category_name:"カメラ")
electricappliances_camera.children.create([{category_name:"デジタルカメラ"}, {category_name:"ビデオカメラ"},{category_name:"レンズ（単焦点）"},
                                                      {category_name:"レンズ（ズーム）"},{category_name:"フィルムカメラ"},{category_name:"防犯カメラ"},{category_name:"その他"}])

electricappliances_TV = electricappliances.children.create(category_name:"テレビ/映像機器")
electricappliances_TV.children.create([{category_name:"テレビ"}, {category_name:"プロジェクター"},{category_name:"ブルーレイレコーダー"},
                                          {category_name:"DVDレコーダー"},{category_name:"ブルーレイプレイヤー"},{category_name:"DVDプレイヤー"},{category_name:"映像用ケーブル"},{category_name:"その他"}])

electricappliances_audio = electricappliances.children.create(category_name:"オーディオ機器")
electricappliances_audio.children.create([{category_name:"ポータブルプレーヤー"}, {category_name:"イヤフォン"},{category_name:"ヘッドフォン"},
                                        {category_name:"アンプ"},{category_name:"スピーカー"},{category_name:"ケーブル/シールド"},{category_name:"ラジオ"},{category_name:"その他"}])

electricappliances_beauty = electricappliances.children.create(category_name:"美容/健康")
electricappliances_beauty.children.create([{category_name:"ヘアドライヤー"}, {category_name:"ヘアアイロン"},{category_name:"美容機器"},
                                        {category_name:"電気シェーバー"},{category_name:"電動歯ブラシ"},{category_name:"その他"}])

electricappliances_airconditioning = electricappliances.children.create(category_name:"冷暖房/空調")
electricappliances_airconditioning.children.create([{category_name:"エアコン"}, {category_name:"空気清浄器"},{category_name:"加湿器"},
                                                        {category_name:"扇風機"},{category_name:"除湿機"},{category_name:"ファンヒーター"},{category_name:"電気ヒーター"},{category_name:"オイルヒーター"},{category_name:"ストーブ"},
                                                        {category_name:"ホットカーペット"},{category_name:"こたつ"},{category_name:"電気毛布"},{category_name:"その他"}])

electricappliances_life = electricappliances.children.create(category_name:"生活家電")
electricappliances_life.children.create([{category_name:"冷蔵庫"}, {category_name:"洗濯機"},{category_name:"炊飯器"},
                                          {category_name:"電子レンジ/オーブン"},{category_name:"調理機器"},{category_name:"アイロン"},{category_name:"掃除機"},{category_name:"エスプレッソマシン"},{category_name:"コーヒーメーカー"},
                                          {category_name:"衣類乾燥機"},{category_name:"その他"}])

electricappliances_other = electricappliances.children.create(category_name:"その他")
electricappliances_other.children.create([{category_name:"その他"}])


interior = Category.create(category_name: "インテリア・住まい・小物")

interior_kitchengoods = interior.children.create(category_name:"キッチン/食器")
interior_kitchengoods.children.create([{category_name:"食器"}, {category_name:"調理器具"}, {category_name:"収納/キッチン雑貨"}, {category_name:"弁当用品"}, {category_name:"カトラリー(スプーン等)"}, {category_name:"テーブル用品"},
                                        {category_name:"容器"}, {category_name:"エプロン"}, {category_name:"アルコールグッズ"}, {category_name:"浄水器"}, {category_name:"その他"}])

interior_bed = interior.children.create(category_name:"ベッド/マットレス")
interior_bed.children.create([{category_name:"セミシングルベッド"}, {category_name:"シングルベッド"}, {category_name:"セミダブルベッド"}, {category_name:"ダブルベッド"}, {category_name:"ワイドダブルベッド"}, {category_name:"クイーンベッド"},
                              {category_name:"キングベッド"}, {category_name:"脚付きマットレスベッド"}, {category_name:"マットレス"}, {category_name:"すのこベッド"}, {category_name:"ロフトベッド/システムベッド"}, {category_name:"簡易ベッド/折りたたみベッド"},
                              {category_name:"収納付き"}, {category_name:"その他"}])

interior_sofa = interior.children.create(category_name:"ソファ/ソファベッド")
interior_sofa.children.create([{category_name:"ソファセット"}, {category_name:"シングルソファ"}, {category_name:"ラブソファ"}, {category_name:"トリプルソファ"}, {category_name:"オットマン"}, {category_name:"コーナーソファ"},
                              {category_name:"ビーズソファ/クッションソファ"}, {category_name:"ローソファ/フロアソファ"}, {category_name:"ソファベッド"}, {category_name:"応接セット"}, {category_name:"ソファカバー"}, {category_name:"リクライニングソファ"},
                              {category_name:"その他"}])

interior_chair = interior.children.create(category_name:"椅子/チェア")
interior_chair.children.create([{category_name:"一般"}, {category_name:"スツール"}, {category_name:"ダイニングチェア"}, {category_name:"ハイバックチェア"}, {category_name:"ロッキングチェア"}, {category_name:"座椅子"},
                                {category_name:"折り畳みイス"}, {category_name:"デスクチェア"}, {category_name:"その他"}])

interior_table = interior.children.create(category_name:"机/テーブル")
interior_table.children.create([{category_name:"こたつ"}, {category_name:"カウンターテーブル"}, {category_name:"サイドテーブル"}, {category_name:"センターテーブル"}, {category_name:"ダイニングテーブル"}, {category_name:"座卓/ちゃぶ台"},
                                {category_name:"アウトドア用"}, {category_name:"パソコン用"}, {category_name:"事務机/学習机"}, {category_name:"その他"}])

interior_storagebox = interior.children.create(category_name:"収納家具")
interior_storagebox.children.create([{category_name:"リビング収納"}, {category_name:"キッチン収納"}, {category_name:"玄関/屋外収納"}, {category_name:"バス/トイレ収納"}, {category_name:"本収納"}, {category_name:"本収納/CD/DVD収納"},
                                      {category_name:"洋服タンス/押入れ収納"}, {category_name:"電話代/ファックス台"}, {category_name:"ドレッサー/鏡台"}, {category_name:"棚/ラック"}, {category_name:"ケース/ボックス"}, {category_name:"その他"}])

interior_carpet = interior.children.create(category_name:"ラグ/カーペット/マット")
interior_carpet.children.create([{category_name:"ラグ"}, {category_name:"カーペット"}, {category_name:"ホットカーペット"}, {category_name:"玄関/キッチンマット"}, {category_name:"トイレ/バスマット"}, {category_name:"その他"}])

interior_curtain = interior.children.create(category_name:"カーテン/ブラインド")
interior_curtain.children.create([{category_name:"カーテン"}, {category_name:"ブラインド"}, {category_name:"ロールスクリーン"}, {category_name:"のれん"}, {category_name:"その他"}])

interior_light = interior.children.create(category_name:"ライト/照明")
interior_light.children.create([{category_name:"蛍光灯/電球"}, {category_name:"天井照明"}, {category_name:"フロアスタンド"}, {category_name:"その他"}])

interior_sleepgoods = interior.children.create(category_name:"寝具")
interior_sleepgoods.children.create([{category_name:"布団/毛布"}, {category_name:"枕"}, {category_name:"シーツ/カバー"}, {category_name:"その他"}])

interior_smallgoods = interior.children.create(category_name:"インテリア小物")
interior_smallgoods .children.create([{category_name:"ごみ箱"}, {category_name:"ウェルカムボード"}, {category_name:"オルゴール"}, {category_name:"クッション"}, {category_name:"クッションカバー"}, {category_name:"スリッパラック"},
                                      {category_name:"ティッシュボックス"}, {category_name:"バスケット/かご"}, {category_name:"フォトフレーム"}, {category_name:"マガジンラック"}, {category_name:"モビール"}, {category_name:"花瓶"},
                                      {category_name:"灰皿"}, {category_name:"傘立て"}])

interior_seasonalgoods = interior.children.create(category_name:"季節/年中行事")
interior_seasonalgoods.children.create([{category_name:"正月"}, {category_name:"成人式"}, {category_name:"バレンタインデー"}, {category_name:"ひな祭り"}, {category_name:"子どもの日"}, {category_name:"母の日"}, {category_name:"父の日"},
                                        {category_name:"サマーギフト/お中元"}, {category_name:"夏/夏休み"}, {category_name:"ハロウィン"}, {category_name:"敬老の日"}, {category_name:"七五三"}, {category_name:"お歳暮"},
                                        {category_name:"クリスマス"}, {category_name:"冬一般"}, {category_name:"その他"}])



entertainments = Category.create(category_name: "本・音楽・ゲーム")

entbook = entertainments.children.create(category_name: "本")
entbook.children.create([{category_name: "文学/小説"}, {category_name: "人文/社会"}, {category_name: "ノンフィクション/教養"}, {category_name: "地図/旅行ガイド"}, {category_name: "ビジネス/経済"}, {category_name: "健康/医学"}, {category_name: "コンピュータ/IT"}, {category_name: "趣味/スポーツ/実用"}, {category_name: "住まい/暮らし/子育て"}, {category_name: "アート/エンタメ"}, {category_name: "洋書"}, {category_name: "絵本"}, {category_name: "参考書"}, {category_name: "その他"}])

entcomic = entertainments.children.create(category_name: "漫画")
entcomic.children.create([{category_name: "全巻セット"}, {category_name: "少年漫画"}, {category_name: "少女漫画"}, {category_name: "青年漫画"}, {category_name: "女性漫画"}, {category_name: "同人誌"}, {category_name: "その他"}])

entmagazine = entertainments.children.create(category_name: "雑誌")
entmagazine.children.create([{category_name: "アート/エンタメ/ホビー"}, {category_name: "ファッション"}, {category_name: "ニュース/総合"}, {category_name: "趣味/スポーツ"}, {category_name: "その他"}])

entmusic = entertainments.children.create(category_name: "CD")
entmusic.children.create([{category_name: "邦楽"}, {category_name: "洋楽"}, {category_name: "アニメ"}, {category_name: "クラシック"}, {category_name: "KPOP/アジア"}, {category_name: "キッズ/ファミリー"}, {category_name: "その他"}])

entvideo = entertainments.children.create(category_name: "DVD/ブルーレイ")
entvideo.children.create([{category_name: "外国映画"}, {category_name: "日本映画"}, {category_name: "アニメ"}, {category_name: "TVドラマ"}, {category_name: "ミュージック"}, {category_name: "お笑い/バラエティ"}, {category_name: "スポーツ/フィットネス"}, {category_name: "キッズ/ファミリー"}, {category_name: "その他"}])

entdisc = entertainments.children.create(category_name: "レコード")
entdisc.children.create([{category_name: "邦楽"}, {category_name: "洋楽"}, {category_name: "その他"}])

entgame = entertainments.children.create(category_name: "テレビゲーム")
entgame.children.create([{category_name: "家庭用ゲーム本体"}, {category_name: "家庭用ゲームソフト"}, {category_name: "携帯用ゲーム本体"}, {category_name: "携帯用ゲームソフト"}, {category_name: "PCゲーム"}, {category_name: "その他"}])



otaku = Category.create(category_name: "おもちゃ・ホビー・グッズ")

oplay = otaku.children.create(category_name: "おもちゃ")
oplay.children.create([{category_name: "キャラクターグッズ"}, {category_name: "ぬいぐるみ"}, {category_name: "小物/アクセサリー"}, {category_name: "模型/プラモデル"}, {category_name: "ミニカー"}, {category_name: "トイラジコン"}, {category_name: "プラモデル"}, {category_name: "ホビーラジコン"}, {category_name: "鉄道模型"}, {category_name: "その他"}])

ofamous = otaku.children.create(category_name: "タレントグッズ")
ofamous.children.create([{category_name: "アイドル"}, {category_name: "ミュージシャン"}, {category_name: "タレント/お笑い芸人"}, {category_name: "スポーツ選手"}, {category_name: "その他"}])

onizigen = otaku.children.create(category_name: "コミック/アニメグッズ")
onizigen.children.create([{category_name: "ストラップ"}, {category_name: "キーホルダー"}, {category_name: "バッジ"}, {category_name: "カード"}, {category_name: "クリアファイル"}, {category_name: "ポスター"}, {category_name: "タオル"}, {category_name: "その他"}])

ocard = otaku.children.create(category_name: "トレーディングカード")
ocard.children.create([{category_name: "遊戯王"}, {category_name: "マジック：ザ・ギャザリング"}, {category_name: "ポケモンカードゲーム"}, {category_name: "デュエルマスターズ"}, {category_name: "バトルスピリッツ"}, {category_name: "プリパラ"}, {category_name: "アイカツ"}, {category_name: "カードファイト!!ヴァンガード"}, {category_name: "ヴァイスシュバルツ"}, {category_name: "プロ野球オーナーズリーグ"}, {category_name: "ベースボールヒーローズ"}, {category_name: "ドラゴンボール"}, {category_name: "スリーブ"}, {category_name: "その他"}])

odoll= otaku.children.create(category_name: "フィギュア")
odoll.children.create([{category_name: "コミック/アニメ"}, {category_name: "特撮"}, {category_name: "ゲームキャラクター"}, {category_name: "SF/ファンタジー/ホラー"}, {category_name: "アメコミ"}, {category_name: "スポーツ"}, {category_name: "ミリタリー"}, {category_name: "その他"}])

oband = otaku.children.create(category_name: "楽器/機材")
oband.children.create([{category_name: "エレキギター"}, {category_name: "アコースティックギター"}, {category_name: "ベース"}, {category_name: "エフェクター"}, {category_name: "アンプ"}, {category_name: "弦楽器"}, {category_name: "管楽器"}, {category_name: "鍵盤楽器"}, {category_name: "打楽器"}, {category_name: "和楽器"}, {category_name: "楽譜/スコア"}, {category_name: "レコーディング/PA機器"}, {category_name: "DJ機器"}, {category_name: "DTM/DAW"}, {category_name: "その他"}])

omemolial = otaku.children.create(category_name: "コレクション")
omemolial.children.create([{category_name: "武具"}, {category_name: "使用済切手/官製はがき"}, {category_name: "旧貨幣/金貨/銀貨/記念硬貨"}, {category_name: "印刷物"}, {category_name: "ノベルティグッズ"}, {category_name: "その他"}])

ogun = otaku.children.create(category_name: "ミリタリー")
ogun.children.create([{category_name: "トイガン"}, {category_name: "個人装備"}, {category_name: "その他"}])


oart = otaku.children.create(category_name: "美術品")
oart.children.create([{category_name: "陶芸"}, {category_name: "ガラス"}, {category_name: "漆芸"}, {category_name: "金属工芸"}, {category_name: "絵画/タペストリ"}, {category_name: "版画"}, {category_name: "彫刻/オブジェクト"}, {category_name: "書"}, {category_name: "写真"}, {category_name: "その他"}])

ohude = otaku.children.create(category_name: "アート用品")
ohude.children.create([{category_name: "画材"}, {category_name: "額縁"}, {category_name: "その他"}])

oyorozu = otaku.children.create(category_name: "その他")
oyorozu.children.create([{category_name: "トランプ/UNO"}, {category_name: "カルタ/百人一首"}, {category_name: "ダーツ"}, {category_name: "ビリヤード"}, {category_name: "麻雀"}, {category_name: "パズル/ジクソーパズル"}, {category_name: "囲碁/将棋"}, {category_name: "オセロ/チェス"}, {category_name: "人生ゲーム"}, {category_name: "野球/サッカーゲーム"}, {category_name: "スポーツ"}, {category_name: "三輪車/乗り物"}, {category_name: "ヨーヨー"}, {category_name: "模型型作品"}])

# 本・音楽・ゲーム

# おもちゃ・ホビー・グッズ

# コスメ・香水・美容

# 家電・スマホ・カメラ


sports = Category.create(category_name:"スポーツ・レジャー")
sports_golf = sports.children.create(category_name:"ゴルフ")
sports_golf.children.create([{category_name:"クラブ"}, {category_name:"ウエア(男性用)"},{category_name:"ウエア（女性用）"},{category_name:"バッグ"},{category_name:"シューズ(男性用)"},{category_name:"シューズ(女性用)"},{category_name:"アクセサリー"},{category_name:"その他"}])

sports_fishing = sports.children.create(category_name:"フィッシング")
sports_fishing.children.create([{category_name:"ロッド"},{category_name:"リール"},{category_name:"ルアー用品"},{category_name:"ウエア"},{category_name:"釣り糸/ライン"},{category_name:"その他"},])

sports_bicycle = sports.children.create(category_name:"自転車")
sports_bicycle.children.create([{category_name:"自転車本体"},{category_name:"ウエア"},{category_name:"パーツ"},{category_name:"アクセサリー"},{category_name:"バッグ"},{category_name:"工具/メンテナンス"},{category_name:"その他"}])

sports_training = sports.children.create(category_name:"トレーニング/エクササイズ")
sports_training.children.create([{category_name:"ランニング"},{category_name:"ウォーキング"},{category_name:"ヨガ"},{category_name:"トレーニング用品"},{category_name:"その他"}])

sports_baseball = sports.children.create(category_name:"野球")
sports_baseball.children.create([{category_name:"ウェア"},{category_name:"シューズ"},{category_name:"グローブ"},{category_name:"バット"},{category_name:"アクセサリー"},{category_name:"防具"},{category_name:"練習機器"},{category_name:"記念グッズ"},{category_name:"応援グッズ"},{category_name:"その他"}])

sports_soccer = sports.children.create(category_name:"サッカー/フットサル")
sports_soccer.children.create([{category_name:"ウェア"},{category_name:"シューズ"},{category_name:"ボール"},{category_name:"アクセサリー"},{category_name:"記念グッズ"},{category_name:"応援グッズ"},{category_name:"その他"}])

sports_tennis = sports.children.create(category_name:"テニス")
sports_tennis.children.create([{category_name:"ラケット(硬式用)"},{category_name:"ラケット(軟式用)"},{category_name:"ウェア"},{category_name:"シューズ"},{category_name:"ボール"},{category_name:"アクセサリー"},{category_name:"記念グッズ"},{category_name:"応援グッズ"},{category_name:"その他"}])

sports_snowboard = sports.children.create(category_name:"スノーボード")
sports_snowboard.children.create([{category_name:"ボード"},{category_name:"バインディング"},{category_name:"ブーツ(男性用)"},{category_name:"ブーツ(女性用)"},{category_name:"ブーツ(子ども用)"},{category_name:"ウエア/装備(男性用)"},{category_name:"ウエア/装備(女性用)"},{category_name:"ウエア/装備(子ども用)"},{category_name:"アクセサリー"},{category_name:"バッグ"},{category_name:"その他"}])

sports_ski = sports.children.create(category_name:"スキー")
sports_ski.children.create([{category_name:"板"},{category_name:"ブーツ(男性用)"},{category_name:"ブーツ(女性用)"},{category_name:"ブーツ(子ども用)"},{category_name:"ビンディング"},{category_name:"ウエア(男性用)"},{category_name:"ウエア(女性用)"},{category_name:"ウエア(子ども用)"},{category_name:"ストック"},{category_name:"その他"}])

sports_othersports = sports.children.create(category_name:"その他スポーツ")
sports_othersports.children.create([{category_name:"ダンス/バレエ"},{category_name:"サーフィン"},{category_name:"バスケットボール"},{category_name:"バドミントン"},{category_name:"バレーボール"},{category_name:"スケートボード"},{category_name:"陸上競技"},{category_name:"ラグビー"},{category_name:"アメリカンフットボール"},{category_name:"ボクシング"},{category_name:"ボウリング"},{category_name:"その他"}])

sports_outdoor = sports.children.create(category_name:"アウトドア")
sports_outdoor.children.create([{category_name:"テント/タープ"},{category_name:"ライト/ランタン"},{category_name:"寝袋/寝具"},{category_name:"テーブル/チェア"},{category_name:"ストーブ/コンロ"},{category_name:"調理器具"},{category_name:"食器"},{category_name:"登山用品"},{category_name:"その他"}])

sports_others = sports.children.create(category_name:"その他")
sports_others.children.create([{category_name:"旅行用品"},{category_name:"その他"}])



handmade = Category.create(category_name:"ハンドメイド")

handmade_accessory = handmade.children.create(category_name:"アクセサリー(女性用)")
handmade_accessory.children.create([{category_name:"ピアス"},{category_name:"イヤリング"},{category_name:"ネックレス"},{category_name:"ブレスレット"},{category_name:"リング"},{category_name:"チャーム"},{category_name:"ヘアゴム"},{category_name:"アンクレット"},{category_name:"その他"}])

handmade_fashion = handmade.children.create(category_name:"ファッション/小物")
handmade_fashion.children.create([{category_name:"バッグ(女性用)"},{category_name:"バッグ(男性用)"},{category_name:"財布(女性用)"},{category_name:"財布(男性用)"},{category_name:"ファッション雑貨"},{category_name:"その他"}])

handmade_oclock = handmade.children.create(category_name:"アクセサリー/時計")
handmade_oclock.children.create([{category_name:"アクセサリー(男性用)"},{category_name:"時計(女性用)"},{category_name:"時計(男性用)"},{category_name:"その他"}])

handmade_dailyitem = handmade.children.create(category_name:"日用品/インテリア")
handmade_dailyitem.children.create([{category_name:"キッチン用品"},{category_name:"家具"},{category_name:"文房具"},{category_name:"アート/写真"},{category_name:"アロマ/キャンドル"},{category_name:"フラワー/ガーデン"},{category_name:"その他"}])

handmade_hobby = handmade.children.create(category_name:"趣味/おもちゃ")
handmade_hobby.children.create([{category_name:"クラフト/布製品"},{category_name:"おもちゃ/人形"},{category_name:"その他"}])

handmade_kids = handmade.children.create(category_name:"キッズ/ベビー")
handmade_kids.children.create([{category_name:"ファッション雑貨"},{category_name:"スタイ/よだれかけ"},{category_name:"外出用品"},{category_name:"ネームタグ"},{category_name:"その他"}])

handmade_material = handmade.children.create(category_name:"素材/材料")
handmade_material.children.create([{category_name:"各種パーツ"},{category_name:"生地/糸"},{category_name:"型紙/パターン"},{category_name:"その他"}])

handmade_created = handmade.children.create(category_name:"二次創作物")
handmade_created.children.create([{category_name:"ingress"},{category_name:"クリエーターズ宇宙兄弟"},{category_name:"その他"}])



ticket = Category.create(category_name: "チケット")

ticket_music = ticket.children.create(category_name:"音楽")
ticket_music.children.create([{category_name:"男性アイドル"}, {category_name:"女性アイドル"}, {category_name:"韓流"},{category_name:"国内アーティスト"},
                              {category_name:"海外アーティスト"}, {category_name:"音楽フェス"}, {category_name:"声優/アニメ"}, {category_name:"その他"}])

ticket_sports = ticket.children.create(category_name:"スポーツ")
ticket_sports.children.create([{category_name:"サッカー"}, {category_name:"野球"}, {category_name:"テニス"},{category_name:"格闘技/プロレス"}, {category_name:"相撲/武道"}, {category_name:"ゴルフ"},
                                {category_name:"バレーボール"}, {category_name:"バスケットボール"}, {category_name:"モータースポーツ"}, {category_name:"ウィンタースポーツ"}, {category_name:"その他"}])

ticket_theater = ticket.children.create(category_name:"演劇/芸能")
ticket_theater.children.create([{category_name:"ミュージカル"}, {category_name:"演劇"}, {category_name:"伝統芸能"}, {category_name:"落語"}, {category_name:"お笑い"}, {category_name:"オペラ"},
                                {category_name:"サーカス"}, {category_name:"バレエ"}, {category_name:"その他"}])

ticket_event = ticket.children.create(category_name:"イベント")
ticket_event.children.create([{category_name:"声優/アニメ"}, {category_name:"キッズ/ファミリー"}, {category_name:"トークショー/講演会"}, {category_name:"その他"}])

ticket_movie = ticket.children.create(category_name:"映画")
ticket_movie.children.create([{category_name:"邦画"}, {category_name:"洋画"}, {category_name:"その他"}])

ticket_amusement = ticket.children.create(category_name:"施設利用券")
ticket_amusement.children.create([{category_name:"遊園地/テーマパーク"}, {category_name:"美術館/博物館"}, {category_name:"スキー場"}, {category_name:"ゴルフ場"},
                                  {category_name:"フィットネスクラブ"}, {category_name:"プール"}, {category_name:"ボウリング場"}, {category_name:"水族館"},
                                  {category_name:"動物園"}, {category_name:"その他"}])

ticket_discount = ticket.children.create(category_name:"優待券/割引券")
ticket_discount.children.create([{category_name:"ショッピング"}, {category_name:"レストラン/食事券"}, {category_name:"フード/ドリンク券"}, {category_name:"宿泊券"}, {category_name:"その他"}])

ticket_other = ticket.children.create(category_name:"その他")



transportation = Category.create(category_name: "自動車・オートバイ")

transportation_car = ticket.children.create(category_name:"自動車本体")
transportation_car.children.create([{category_name:"国内自動車本体"}, {category_name:"外国自動車本体"}])

transportation_vehicle = ticket.children.create(category_name:"自動車タイヤ/ホイール")
transportation_vehicle.children.create([{category_name:"タイヤ/ホイールセット"}, {category_name:"タイヤ"}, {category_name:"ホイール"}, {category_name:"その他"}])

transportation_carparts = ticket.children.create(category_name:"自動車パーツ")
transportation_carparts.children.create([{category_name:"サスペンション"}, {category_name:"ブレーキ"}, {category_name:"外装、エアロパーツ"}, {category_name:"外装、エアロパーツ"},
                                        {category_name:"ライト"}, {category_name:"内装品、シート"}, {category_name:"ステアリング"}, {category_name:"マフラー・排気系"},
                                        {category_name:"エンジン、過給機、冷却装置"}, {category_name:"クラッチ、ミッション、駆動系"}, {category_name:"電装品"}, {category_name:"補強パーツ"},
                                        {category_name:"汎用パーツ"}, {category_name:"外国自動車用パーツ"}, {category_name:"その他"}])

transportation_caraccessories = ticket.children.create(category_name:"自動車アクセサリー")
transportation_caraccessories.children.create([{category_name:"車内アクセサリー"}, {category_name:"カーナビ"}, {category_name:"カーオディオ"}, {category_name:"車外アクセサリー"},
                                              {category_name:"メンテナンス用品"}, {category_name:"チャイルドシート"}, {category_name:"ドライブレコーダー"}, {category_name:"レーダー探知機"},
                                              {category_name:"カタログ/マニュアル"}, {category_name:"セキュリティ"}, {category_name:"ETC"}, {category_name:"その他"},
                                              {category_name:"汎用パーツ"}, {category_name:"外国自動車用パーツ"}, {category_name:"オートバイ車体"}, {category_name:"その他"}])

transportation_bikeparts = ticket.children.create(category_name:"オートバイパーツ")
transportation_bikeparts.children.create([{category_name:"タイヤ"}, {category_name:"マフラー"}, {category_name:"エンジン、冷却装置"}, {category_name:"カウル、フェンダー、外装"},
                                          {category_name:"サスペンション"}, {category_name:"ホイール"}, {category_name:"シート"}, {category_name:"ブレーキ"}, {category_name:"タンク"},
                                          {category_name:"ライト、ウィンカー"}, {category_name:"チェーン、スプロケット、駆動系"}, {category_name:"メーター"}, {category_name:"電装系"},
                                          {category_name:"ミラー"}, {category_name:"外国オートバイ用パーツ"}, {category_name:"その他"}])

transportation_bikeaccessories = ticket.children.create(category_name:"オートバイアクセサリー")
transportation_bikeaccessories.children.create([{category_name:"ヘルメット/シールド"}, {category_name:"バイクウェア"}, {category_name:"アクセサリー"}, {category_name:"メンテナンス"},
                                                {category_name:"カタログ/マニュアル"}, {category_name:"その他"}])



others = Category.create(category_name:"その他")

others_sellingall = others.children.create(category_name:"まとめ売り")

others_petitems = others.children.create(category_name:"ペット用品")
others_petitems.children.create([{category_name:"ペットフード"},{category_name:"犬用品"},{category_name:"猫用品"},{category_name:"魚用品/水草"},{category_name:"小動物用品"},{category_name:"爬虫類/両生類用品"},{category_name:"かご/おり"},{category_name:"鳥用品"},{category_name:"虫類用品"},{category_name:"その他"}])

others_food = others.children.create(category_name:"食品")
others_food.children.create([{category_name:"菓子"},{category_name:"米"},{category_name:"野菜"},{category_name:"果物"},{category_name:"調味料"},{category_name:"魚介類(加工食品)"},{category_name:"肉類(加工食品)"},{category_name:"その他 加工食品"},{category_name:"その他"}])

others_drinks = others.children.create(category_name:"飲料/酒")
others_drinks.children.create([{category_name:"コーヒー"},{category_name:"ソフトドリンク"},{category_name:"ミネラルウォーター"},{category_name:"茶"},{category_name:"ウイスキー"},{category_name:"ワイン"},{category_name:"ブランデー"},{category_name:"焼酎"},{category_name:"日本酒"},{category_name:"ビール、発泡酒"},{category_name:"その他"}])

others_dailyitems = others.children.create(category_name:"日用品/生活雑貨/旅行")
others_dailyitems.children.create([{category_name:"タオル/バス用品"},{category_name:"日用品/生活雑貨"},{category_name:"洗剤/柔軟剤"},{category_name:"旅行用品"},{category_name:"防災関連グッズ"},{category_name:"その他"}])

others_antique = others.children.create(category_name:"アンティーク/コレクション")
others_antique.children.create([{category_name:"雑貨"},{category_name:"工芸品"},{category_name:"家具"},{category_name:"印刷物"},{category_name:"その他"}])

others_stationery = others.children.create(category_name:"文房具/事務用品")
others_stationery.children.create([{category_name:"筆記具"},{category_name:"ノート/メモ帳"},{category_name:"テープ/マスキングテープ"},{category_name:"カレンダー/スケジュール"},{category_name:"アルバム/スクラップ"},{category_name:"ファイル/バインダー"},{category_name:"はさみ/カッター"},{category_name:"カードホルダー/名刺管理"},{category_name:"のり/ホッチキス"},{category_name:"その他"}])

others_officeitem = others.children.create(category_name:"事務/店舗用品")
others_officeitem.children.create([{category_name:"オフィス用品一般"},{category_name:"オフィス家具"},{category_name:"店舗用品"},{category_name:"OA機器"},{category_name:"ラッピング/包装"},{category_name:"その他"}])

others_other = others.children.create(category_name:"その他")