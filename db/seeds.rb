
Admin.create!(
  email: 'g@aaaa',
  password: '222222'
)# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
area_group_nakano = AreaGroup.create!(
  area_group_name:'新宿 中野 高円寺'
)

area_group_ebisu = AreaGroup.create!(
  area_group_name:'渋谷 恵比寿 下北沢'
  )

area_group_kamata = AreaGroup.create!(
  area_group_name:'品川 蒲田 大森'
  )

area_group_roppongi = AreaGroup.create!(
  area_group_name:'六本木 麻布十番 神田'
  )

area_group_ikebukuro = AreaGroup.create!(
  area_group_name:'池袋 赤羽 練馬'
)

area_group_ueno = AreaGroup.create!(
  area_group_name:'上野 浅草 秋葉原'
  )

area_group_kitasenju = AreaGroup.create!(
  area_group_name:'北千住 亀有 葛西'
  )

area_group_other = AreaGroup.create!(
  area_group_name:'23区外'
  )

area_nerima = Area.create!(
  area_name:'練馬区',
  area_group_id: area_group_ikebukuro.id
  )

area_itabashi = Area.create!(
  area_name:'板橋区',
  area_group_id: area_group_ikebukuro.id
  )
#北

#豊島

#文京

#世田谷
area_suginami = Area.create!(
  area_name:'杉並区',
  area_group_id: area_group_nakano.id
  )

area_nakano = Area.create!(
  area_name:'中野区',
  area_group_id: area_group_nakano.id
  )

area_shibuya = Area.create!(
  area_name:'渋谷区',
  area_group_id: area_group_ebisu.id
  )

area_maguro = Area.create!(
  area_name:'目黒区',
  area_group_id: area_group_ebisu.id
  )
#中野
area_shinjuku = Area.create!(
  area_name:'新宿区',
  area_group_id: area_group_nakano.id
  )

area_oota = Area.create!(
  area_name:'太田区',
  area_group_id: area_group_kamata.id
  )
 area_shinagawa = Area.create!(
   area_name:'品川区',
  area_group_id: area_group_kamata.id
   )
area_minato = Area.create!(
  area_name:'港区',
  area_group_id: area_group_roppongi.id
  )
area_chiyoda = Area.create!(
  area_name:'千代田区',
  area_group_id: area_group_roppongi.id
  )

area_cyuo = Area.create!(
  area_name:'中央区',
  area_group_id: area_group_roppongi.id
  )
area_bunkyo = Area.create!(
  area_name:'文京区',
  area_group_id: area_group_ikebukuro.id
  )
area_kita = Area.create!(
  area_name:'北区',
  area_group_id: area_group_ikebukuro.id
  )
area_daito = Area.create!(
  area_name:'台東区',
  area_group_id: area_group_ueno.id
  )
area_arakawa = Area.create!(
  area_name:'荒川区',
  area_group_id: area_group_kitasenju.id
  )
area_adachi = Area.create!(
  area_name:'足立区',
  area_group_id: area_group_kitasenju.id
  )
area_katushika = Area.create!(
  area_name:'葛飾区',
  area_group_id: area_group_kitasenju.id
  )
area_sumida = Area.create!(
  area_name:'墨田区',
  area_group_id: area_group_ueno.id
  )
area_kouto = Area.create!(
  area_name:'江東区',
  area_group_id: area_group_ueno.id
  )
 area_edogawa = Area.create!(
  area_name:'江戸川区',
  area_group_id: area_group_kitasenju.id
  )
area_toshima = Area.create!(
  area_name:'豊島区',
  area_group_id: area_group_ikebukuro.id
  )

 area_setagaya = Area.create!(
   area_name:'世田谷区',
  area_group_id: area_group_ebisu.id
   )

area_other = Area.create!(
  area_name:'23区外',
  area_group_id: area_group_other.id
  )


propertyA=Property.create!(
    area_id: area_nerima.id,area_group_id: area_group_ikebukuro.id, property_name:'ファースト南大泉', address:'東京都練馬区南大泉', access:'保谷駅 徒歩3分', rent:40000, condition:'女性', vacancy:6, common_service_fee:15000, introduction:'2021年6月新規OPEN！ワークスペース付、全35室のコンセプトシェアハウス！ 大崎駅・大井町駅が徒歩圏内！JFハウス大崎ワークシティはコンセプトシェアハウスとして交流と独立性を兼ね備えております。リモートワークの際に1階3階4階にあるワークスペースや自室など場所を変えて作業をすることが可能です。また、一人暮らしと比較して孤独感がなく、他の入居者との交流にて同業・異業種間での情報交換なんてことも出来ますね。使い方は多岐にわたり、入居者様がそれぞれ感じるメリットは多様です。',
    room_facility:'エアコン・ベッド、クローゼット、トイレ、シャワールーム',
    living:'テレビ、ソファ、テーブル', kitchen:'電子レンジ、冷蔵庫、炊飯器', bath:'シャワールーム 4室',toilet:'洋式3室',wash_room:'4台',washing_machine:'洗濯機 2台', cleaning_support:'住人同士の当番制',event:'イベントなし', breadth:'5畳',latitude:'35.737798415787815',altitude:'139.63589408832408')
propertyA.images.attach(io: File.open(Rails.root.join('app/assets/images/houseA/A-living1.jpg')),filename: 'A-living1.jpg')#0
propertyA.images.attach(io: File.open(Rails.root.join('app/assets/images/houseA/A-living2.jpg')),filename: 'A-living2.jpg')#1
propertyA.images.attach(io: File.open(Rails.root.join('app/assets/images/houseA/A-kichen.jpg')),filename: 'A-kichen.jpg')#2
propertyA.images.attach(io: File.open(Rails.root.join('app/assets/images/houseA/A-bath.jpg')),filename: 'A-bath.jpg')#s3
propertyA.images.attach(io: File.open(Rails.root.join('app/assets/images/houseA/A-wash.jpg')),filename: 'A-wash.jpg')#4
propertyA.images.attach(io: File.open(Rails.root.join('app/assets/images/houseA/A-toilet.jpg')),filename: 'A-toilet.jpg')#4
propertyA.images.attach(io: File.open(Rails.root.join('app/assets/images/houseA/A-room.jpg')),filename: 'A-room.jpg')#4

propertyB=Property.create!(
    area_id: area_toshima.id,area_group_id: area_group_ikebukuro.id,property_name:'ファーム池袋', address:'東京都豊島区池袋', access:'池袋駅 徒歩7分', rent:60000, condition:'男女どちらともOK', vacancy:4, introduction:'主要駅までのアクセス良好です', common_service_fee:18000,
    room_facility:'エアコン・ベッド・クローゼット、TV',
    living:'テレビ、ソファ、テーブル、エアコン', kitchen:'電子レンジ,冷蔵庫,炊飯器、トースター', bath:'シャワールーム 4室',toilet:'洋式3室',wash_room:'4台',washing_machine:'洗濯機 4台', cleaning_support:'クリーンスタッフが掃除',event:'イベントなし',breadth:'5畳',latitude:'35.73777411001525',altitude:'139.7162934895781')
propertyB.images.attach(io: File.open(Rails.root.join('app/assets/images/images/house2.jpg')),filename: 'house2.jpg')
     #property.avatar.attach(io: File.open(Rails.root.join('app/assets/images/logo.jpg')),
                  #filename: 'logo.jpg')
propertyC=Property.create!(
    area_id: area_setagaya.id,area_group_id: area_group_ebisu.id,property_name:'カトレア経堂', address:'東京都世田谷区経堂', access:'経堂駅 徒歩9分', rent:40000, condition:'女性', vacancy:6, introduction:'主要駅までのアクセス良好です', common_service_fee:15000,
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台', washing_machine:'洗濯機 3台',cleaning_support:'クリーンスタッフが掃除',event:'イベントなし',breadth:'6.5畳',latitude:'35.645755983577175',altitude: '139.65140049229697')
propertyC.images.attach(io: File.open(Rails.root.join('app/assets/images/images/house3.jpg')),filename: 'house3.jpg')
    #property.avatar.attach(io: File.open(Rails.root.join('app/assets/images/logo.jpg')),
                  #filename: 'logo.jpg')

propertyD=Property.create!(
    area_id: area_nerima.id,area_group_id: area_group_ikebukuro.id,property_name:'キャトルセゾン石神井', address:'東京都練馬区石神井公園', access:'石神井公園駅 徒歩9分', rent:40000, condition:'男女どちらともOK', vacancy:4, introduction:'主要駅までのアクセス良好です', common_service_fee:15000,
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',cleaning_support:'住人同士の当番制',event:'イベントなし',breadth:'6畳', latitude: '35.7336985129341', altitude: '139.65802233669132')
propertyD.images.attach(io: File.open(Rails.root.join('app/assets/images/images/house4.jpg')),filename: 'house4.jpg')
    #property.avatar.attach(io: File.open(Rails.root.join('app/assets/images/logo.jpg')),
                  #filename: 'logo.jpg')

propertyE=Property.create!(
    area_id: area_shinagawa.id,area_group_id: area_group_kamata.id,property_name:'スカイ大崎', address:'東京都品川区大崎', access:'大崎駅 徒歩4分', rent: 30000, condition:'男女どちらともOK', vacancy:6, introduction:'主要駅までのアクセス良好です', common_service_fee:15000,
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',cleaning_support:'クリーンスタッフが掃除', event:'イベントあり',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyE.images.attach(io: File.open(Rails.root.join('app/assets/images/images/house5.jpg')),filename: 'house5.jpg')
    #property.avatar.attach(io: File.open(Rails.root.join('app/assets/images/logo.jpg')),
                  #filename: 'logo.jpg')

propertyF=Property.create!(
    area_id: area_katusika.id,area_group_id: area_group_kitasenju.id,property_name:'ハイツ亀有', address:'東京都葛飾区亀有', access:'亀有駅 徒歩4分', rent: 30000, condition:'男女どちらともOK', vacancy:6, introduction:'主要駅までのアクセス良好です', common_service_fee:15000,
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',cleaning_support:'クリーンスタッフが掃除', event:'イベントあり',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyF.images.attach(io: File.open(Rails.root.join('app/assets/images/images/house5.jpg')),filename: 'house5.jpg')
    #property.avatar.attach(io: File.open(Rails.root.join('app/assets/images/logo.jpg')),
                  #filename: 'logo.jpg')
propertyG=Property.create!(
    area_id: area_oota.id,area_group_id: area_group_kamata.id,property_name:'ステージ蒲田', address:'東京都太田区蒲田', access:'蒲田駅 徒歩8分', rent: 30000, condition:'男女どちらともOK', vacancy:6, introduction:'主要駅までのアクセス良好です', common_service_fee:15000,
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',cleaning_support:'クリーンスタッフが掃除', event:'イベントあり',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyG.images.attach(io: File.open(Rails.root.join('app/assets/images/images/house5.jpg')),filename: 'house5.jpg')

propertyH=Property.create!(
    area_id: area_edogawa.id,area_group_id: area_group_kitasenju.id,property_name:'スター江戸川', address:'東京都江戸川区西葛西', access:'西葛西駅 徒歩8分', rent: 30000, condition:'男女どちらともOK', vacancy:6, introduction:'主要駅までのアクセス良好です', common_service_fee:15000,
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',cleaning_support:'クリーンスタッフが掃除', event:'イベントあり',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyH.images.attach(io: File.open(Rails.root.join('app/assets/images/images/house5.jpg')),filename: 'house5.jpg')

propertyI=Property.create!(
    area_id: area_nakano.id,area_group_id: area_group_nakano.id,property_name:'スターハイツ東中野', address:'東京都中野区東中野', access:'東中野駅 徒歩1分', rent: 50000, condition:'男女どちらともOK', vacancy:6, introduction:'主要駅までのアクセス良好です', common_service_fee:15000,
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',cleaning_support:'クリーンスタッフが掃除', event:'イベントあり',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyI.images.attach(io: File.open(Rails.root.join('app/assets/images/images/house5.jpg')),filename: 'house5.jpg')

propertyJ=Property.create!(
    area_id: area_bunkyo.id,area_group_id: area_group_ikebukuro.id,property_name:'千駄木Fairy', address:'東京都文京区千駄木', access:'千駄木駅 徒歩1分', rent: 60000, condition:'男女どちらともOK', vacancy:6, introduction:'主要駅までのアクセス良好です', common_service_fee:15000,
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',cleaning_support:'クリーンスタッフが掃除', event:'イベントあり',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyJ.images.attach(io: File.open(Rails.root.join('app/assets/images/images/house5.jpg')),filename: 'house5.jpg')

propertyK=Property.create!(
    area_id: area_kita.id,area_group_id: area_group_ikebukuro.id,property_name:'コモン上十条', address:'東京都北区上十条', access:'上十条駅 徒歩4分', rent: 30000, condition:'男女どちらともOK', vacancy:6, introduction:'主要駅までのアクセス良好です', common_service_fee:15000,
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',cleaning_support:'クリーンスタッフが掃除', event:'イベントあり',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyK.images.attach(io: File.open(Rails.root.join('app/assets/images/images/house5.jpg')),filename: 'house5.jpg')

propertyL=Property.create!(
    area_id: area_daito.id,area_group_id: area_group_ueno.id,property_name:'SPICA上野', address:'東京都台東区上野', access:'上野駅 徒歩8分', rent: 50000, condition:'男女どちらともOK', vacancy:6, introduction:'主要駅までのアクセス良好です', common_service_fee:15000,
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',cleaning_support:'クリーンスタッフが掃除', event:'イベントあり',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyL.images.attach(io: File.open(Rails.root.join('app/assets/images/images/house5.jpg')),filename: 'house5.jpg')

propertyM=Property.create!(
    area_id: area_arakawa.id,area_group_id: area_group_kitasenju.id,property_name:'町屋ハウス', address:'東京都荒川区町屋', access:'町屋駅 徒歩3分', rent: 40000, condition:'男女どちらともOK', vacancy:6, introduction:'主要駅までのアクセス良好です', common_service_fee:15000,
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',cleaning_support:'クリーンスタッフが掃除', event:'イベントあり',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyM.images.attach(io: File.open(Rails.root.join('app/assets/images/images/house5.jpg')),filename: 'house5.jpg')

propertyN=Property.create!(
    area_id: area_adathi.id,area_group_id: area_group_kitasenju.id,property_name:'share綾瀬', address:'東京都足立区綾瀬', access:'綾瀬駅 徒歩5分', rent: 40000, condition:'男女どちらともOK', vacancy:6, introduction:'主要駅までのアクセス良好です', common_service_fee:15000,
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',cleaning_support:'クリーンスタッフが掃除', event:'イベントあり',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyN.images.attach(io: File.open(Rails.root.join('app/assets/images/images/house5.jpg')),filename: 'house5.jpg')

propertyO=Property.create!(
    area_id: area_sumida.id,area_group_id: area_group_ueno.id,property_name:'フィネッツァ両国', address:'東京都墨田区両国', access:'両国駅 徒歩10分', rent: 50000, condition:'男女どちらともOK', vacancy:6, introduction:'主要駅までのアクセス良好です', common_service_fee:15000,
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',cleaning_support:'クリーンスタッフが掃除', event:'イベントあり',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyO.images.attach(io: File.open(Rails.root.join('app/assets/images/images/house5.jpg')),filename: 'house5.jpg')

propertyP=Property.create!(
    area_id: area_kouto.id,area_group_id: area_group_ueno.id,property_name:'MONZENNAKAMACHI', address:'東京都江東区門前仲町', access:'門前仲町駅 徒歩10分', rent: 50000, condition:'男女どちらともOK', vacancy:6, introduction:'主要駅までのアクセス良好です', common_service_fee:15000,
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',cleaning_support:'クリーンスタッフが掃除', event:'イベントあり',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyP.images.attach(io: File.open(Rails.root.join('app/assets/images/images/house5.jpg')),filename: 'house5.jpg')

propertyQ=Property.create!(
    area_id: area_itabashi.id,area_group_id: area_group_ikebukuro.id,property_name:'サザン板橋', address:'東京都板橋区板橋', access:'板橋駅 徒歩7分', rent: 30000, condition:'男女どちらともOK', vacancy:6, introduction:'主要駅までのアクセス良好です', common_service_fee:15000,
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',cleaning_support:'クリーンスタッフが掃除', event:'イベントあり',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyQ.images.attach(io: File.open(Rails.root.join('app/assets/images/images/house5.jpg')),filename: 'house5.jpg')

propertyR=Property.create!(
    area_id: area_suginami.id,area_group_id: area_group_nakano.id,property_name:'杉並の家', address:'東京都杉並区荻窪', access:'荻窪駅 徒歩10分', rent: 50000, condition:'男女どちらともOK', vacancy:6, introduction:'主要駅までのアクセス良好です', common_service_fee:15000,
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',cleaning_support:'クリーンスタッフが掃除', event:'イベントあり',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyR.images.attach(io: File.open(Rails.root.join('app/assets/images/images/house5.jpg')),filename: 'house5.jpg')

propertyS=Property.create!(
    area_id: area_sibuya.id,area_group_id: area_group_ebisu.id,property_name:'BeGood_Daikanyama', address:'東京都渋谷区代官山', access:'代官山駅 徒歩2分', rent: 80000, condition:'男女どちらともOK', vacancy:6, introduction:'主要駅までのアクセス良好です', common_service_fee:15000,
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',cleaning_support:'クリーンスタッフが掃除', event:'イベントあり',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyS.images.attach(io: File.open(Rails.root.join('app/assets/images/images/house5.jpg')),filename: 'house5.jpg')

propertyT=Property.create!(
    area_id: area_meguro.id,area_group_id: area_group_ebisu.id,property_name:'フィーユ中目黒', address:'東京都目黒区中目黒', access:'中目黒駅 徒歩2分', rent: 70000, condition:'男女どちらともOK', vacancy:6, introduction:'主要駅までのアクセス良好です', common_service_fee:15000,
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',cleaning_support:'クリーンスタッフが掃除', event:'イベントあり',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyT.images.attach(io: File.open(Rails.root.join('app/assets/images/images/house5.jpg')),filename: 'house5.jpg')

propertyU=Property.create!(
    area_id: area_shinjuku.id,area_group_id: area_group_nakano.id,property_name:'テラス西新宿', address:'東京都新宿区西新宿', access:'西新宿駅 徒歩2分', rent: 60000, condition:'男女どちらともOK', vacancy:6, introduction:'主要駅までのアクセス良好です', common_service_fee:15000,
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',cleaning_support:'クリーンスタッフが掃除', event:'イベントあり',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyU.images.attach(io: File.open(Rails.root.join('app/assets/images/images/house5.jpg')),filename: 'house5.jpg')

propertyV=Property.create!(
    area_id: area_minato.id,area_group_id: area_group_roppongi.id,property_name:'麻布Breeze', address:'東京都港区麻布十番', access:'麻布十番駅 徒歩5分', rent: 80000, condition:'男女どちらともOK', vacancy:6, introduction:'主要駅までのアクセス良好です', common_service_fee:15000,
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',cleaning_support:'クリーンスタッフが掃除', event:'イベントあり',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyV.images.attach(io: File.open(Rails.root.join('app/assets/images/images/house5.jpg')),filename: 'house5.jpg')

propertyW=Property.create!(
    area_id: area_chiyoda.id,area_group_id: area_group_roppongi.id,property_name:'kiki大手町', address:'東京都千代田区大手町', access:'大手町駅 徒歩12分', rent: 70000, condition:'男女どちらともOK', vacancy:6, introduction:'主要駅までのアクセス良好です', common_service_fee:15000,
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',cleaning_support:'クリーンスタッフが掃除', event:'イベントあり',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyW.images.attach(io: File.open(Rails.root.join('app/assets/images/images/house5.jpg')),filename: 'house5.jpg')

propertyX=Property.create!(
    area_id: area_chuo.id,area_group_id: area_group_roppongi.id,property_name:'ARDEN築地', address:'東京都中央区築地', access:'築地駅 徒歩15分', rent: 40000, condition:'男女どちらともOK', vacancy:6, introduction:'主要駅までのアクセス良好です', common_service_fee:15000,
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',cleaning_support:'クリーンスタッフが掃除', event:'イベントあり',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyX.images.attach(io: File.open(Rails.root.join('app/assets/images/images/house5.jpg')),filename: 'house5.jpg')

propertyY=Property.create!(
    area_id: area_other.id,area_group_id: area_group_other.id,property_name:'ソフィア府中', address:'東京都府中市府中', access:'府中駅 徒歩8分', rent: 30000, condition:'男女どちらともOK', vacancy:6, introduction:'主要駅までのアクセス良好です', common_service_fee:15000,
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',cleaning_support:'クリーンスタッフが掃除', event:'イベントあり',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyY.images.attach(io: File.open(Rails.root.join('app/assets/images/images/house5.jpg')),filename: 'house5.jpg')

propertyZ=Property.create!(
    area_id: area_other.id,area_group_id: area_group_other.id,property_name:'hause西八王子', address:'東京都八王子市西八王子', access:'西八王子駅 徒歩3分', rent: 30000, condition:'男女どちらともOK', vacancy:6, introduction:'主要駅までのアクセス良好です', common_service_fee:15000,
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',cleaning_support:'クリーンスタッフが掃除', event:'イベントあり',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyZ.images.attach(io: File.open(Rails.root.join('app/assets/images/images/house5.jpg')),filename: 'house5.jpg')




category_basic = Category.create!(
  category:'basic'
)

category_room = Category.create!(
  category:'room'
)

category_surrounding = Category.create!(
  category:'surrounding'
)


category_shared_facility = Category.create!(
  category:'shared_facility'
)

category_other = Category.create!(
  category:'other'
)



tag_woman = Tag.create!(
    category_id: category_basic.id,
    name: '女性専用'
    #genre: 'basic'
  )


tag_manwoman = Tag.create!(
    category_id: category_basic.id,
    name: '男女どちらともOK'
    #genre: 'basic'

  )

tag_foreigner = Tag.create!(
    category_id: category_basic.id,
    name: '外国人大歓迎'
    #genre: 'basic'

  )
tag_pair = Tag.create!(
    category_id: category_basic.id,
    name: '二人入居可'
    #genre: 'basic'

  )

tag_sound = Tag.create!(
    category_id: category_room.id,
    name: '防音'
    #genre: 'room'

  )
tag_wide = Tag.create!(
    category_id: category_room.id,
    name: '六畳以上'
    #genre: 'room'

  )

 tag_bath = Tag.create!(
    category_id: category_room.id,
    name: '専用バス付き'
    #genre: 'surrounding'

  )

　tag_toilet = Tag.create!(
    category_id: category_room.id,
    name: '専用トイレ付き'
    #genre: 'surrounding'

  )

  tag_kitchen= Tag.create!(
    category_id: category_room.id,
    name: '専用キッチン付き'
    #genre: 'surrounding'

  )

  tag_station = Tag.create!(
    category_id: category_surrounding.id,
    name: '駅から5分以内'
    #genre: 'surrounding'

  )

  tag_Supermarket = Tag.create!(
    category_id: category_surrounding.id,
    name: 'コンビニ・スーパー近い'
    #genre: 'surrounding'

  )

  tag_residential  = Tag.create!(
    category_id: category_surrounding.id,
    name: '住宅街'
    #genre: 'surrounding'

  )

  tag_office  = Tag.create!(
    category_id: category_surrounding.id,
    name: 'オフィス街'
    #genre: 'surrounding'

  )





   tag_plumbing= Tag.create!(
    category_id: category_shared_facility.id,
    name: '水回りの設備多め'
    #genre: 'surrounding'

  )

  tag_cook= Tag.create!(
    category_id: category_shared_facility.id,
    name: '料理器具充実'
    #genre: 'surrounding'

  )



   tag_cleaning_support= Tag.create!(
    category_id: category_shared_facility.id,
    name: '清掃サポート付き'
    #genre: 'surrounding'

  )

  tag_entertainment= Tag.create!(
    category_id: category_shared_facility.id,
    name: '娯楽設備付き'
    #genre: 'surrounding'

  )


   tag_parking = Tag.create!(
    category_id: category_other.id,
    name: '駐輪場あり'
    #genre: 'building'

  )

  tag_autoloc = Tag.create!(
    category_id: category_other.id,
    name: 'オートロック'
    #genre: 'building'

  )


   tag_many_event= Tag.create!(
    category_id: category_other.id,
    name: 'イベントあり'
    #genre: 'surrounding'

  )

   tag_no_event= Tag.create!(
    category_id: category_other.id,
    name: 'イベントなし'
    #genre: 'surrounding'

  )



TagProperty.create!(
  property_id: propertyA.id,
  tag_id: tag_woman.id
)


TagProperty.create!(
  property_id: propertyA.id,
  tag_id: tag_sound.id

  )

TagProperty.create!(
  property_id: propertyA.id,
  tag_id: tag_autoloc.id

  )



TagProperty.create!(
  property_id: propertyA.id,
  tag_id: tag_no_event.id

  )


TagProperty.create!(
  property_id: propertyB.id,
  tag_id: tag_manwoman.id

  )

TagProperty.create!(
  property_id: propertyB.id,
  tag_id: tag_plumbing.id

  )

TagProperty.create!(
  property_id: propertyB.id,
  tag_id: tag_cleaning_support.id

  )

TagProperty.create!(
  property_id: propertyB.id,
  tag_id: tag_no_event.id

  )

TagProperty.create!(
  property_id: propertyC.id,
  tag_id: tag_woman.id
  )

TagProperty.create!(
  property_id: propertyC.id,
  tag_id: tag_station.id
  )

TagProperty.create!(
  property_id: propertyC.id,
  tag_id: tag_wide.id
  )

TagProperty.create!(
  property_id: propertyC.id,
  tag_id: tag_cleaning_support.id
  )

TagProperty.create!(
  property_id: propertyC.id,
  tag_id: tag_no_event.id
  )

TagProperty.create!(
  property_id: propertyD.id,
  tag_id: tag_manwoman.id
  )

TagProperty.create!(
  property_id: propertyD.id,
  tag_id: tag_wide.id
  )
TagProperty.create!(
  property_id: propertyD.id,
  tag_id: tag_no_event.id
  )

TagProperty.create!(
  property_id: propertyE.id,
  tag_id: tag_manwoman.id
  )

TagProperty.create!(
  property_id: propertyE.id,
  tag_id: tag_parking.id
  )

TagProperty.create!(
  property_id: propertyE.id,
  tag_id: tag_cleaning_support.id
  )

TagProperty.create!(
  property_id: propertyE.id,
  tag_id: tag_many_event.id
  )

TagProperty.create!(
  property_id: propertyF.id,
  tag_id: tag_cook.id
  )