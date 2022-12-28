
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
  area_group_id: area_group_ueno.id
  )
area_adachi = Area.create!(
  area_name:'足立区',
  area_group_id: area_group_ueno.id
  )
area_katushika = Area.create!(
  area_name:'葛飾区',
  area_group_id: area_group_ueno.id
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
  area_group_id: area_group_ueno.id
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
    area_id: area_nerima.id,area_group_id: area_group_ikebukuro.id, property_name:'物件A', address:'東京都練馬区南大泉', access:'中村橋駅 徒歩3分', rent:40000, condition:'女性', vacancy:6, common_service_fee:15000, introduction:'2021年6月新規OPEN！ワークスペース付、全35室のコンセプトシェアハウス！ 大崎駅・大井町駅が徒歩圏内！JFハウス大崎ワークシティはコンセプトシェアハウスとして交流と独立性を兼ね備えております。リモートワークの際に1階3階4階にあるワークスペースや自室など場所を変えて作業をすることが可能です。また、一人暮らしと比較して孤独感がなく、他の入居者との交流にて同業・異業種間での情報交換なんてことも出来ますね。使い方は多岐にわたり、入居者様がそれぞれ感じるメリットは多様です。',
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
    area_id: area_toshima.id,area_group_id: area_group_ikebukuro.id,property_name:'物件B', address:'東京都', access:'池袋駅 徒歩7分', rent:60000, condition:'男女どちらともOK', vacancy:4, introduction:'主要駅までのアクセス良好です', common_service_fee:18000,
    room_facility:'エアコン・ベッド・クローゼット、TV',
    living:'テレビ、ソファ、テーブル、エアコン', kitchen:'電子レンジ,冷蔵庫,炊飯器、トースター', bath:'シャワールーム 4室',toilet:'洋式3室',wash_room:'4台',washing_machine:'洗濯機 4台', cleaning_support:'クリーンスタッフが掃除',event:'イベントなし',breadth:'5畳',latitude:'35.73777411001525',altitude:'139.7162934895781')
propertyB.images.attach(io: File.open(Rails.root.join('app/assets/images/images/house2.jpg')),filename: 'house2.jpg')
     #property.avatar.attach(io: File.open(Rails.root.join('app/assets/images/logo.jpg')),
                  #filename: 'logo.jpg')
propertyC=Property.create!(
    area_id: area_setagaya.id,area_group_id: area_group_ebisu.id,property_name:'物件C', address:'東京都', access:'世田谷駅 徒歩9分', rent:40000, condition:'女性', vacancy:6, introduction:'主要駅までのアクセス良好です', common_service_fee:15000,
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台', washing_machine:'洗濯機 3台',cleaning_support:'クリーンスタッフが掃除',event:'イベントなし',breadth:'6.5畳',latitude:'35.645755983577175',altitude: '139.65140049229697')
propertyC.images.attach(io: File.open(Rails.root.join('app/assets/images/images/house3.jpg')),filename: 'house3.jpg')
    #property.avatar.attach(io: File.open(Rails.root.join('app/assets/images/logo.jpg')),
                  #filename: 'logo.jpg')

propertyD=Property.create!(
    area_id: area_nerima.id,area_group_id: area_group_ikebukuro.id,property_name:'物件D', address:'東京都', access:'練馬駅 徒歩9分', rent:40000, condition:'男女どちらともOK', vacancy:4, introduction:'主要駅までのアクセス良好です', common_service_fee:15000,
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',cleaning_support:'住人同士の当番制',event:'イベントなし',breadth:'6畳', latitude: '35.7336985129341', altitude: '139.65802233669132')
propertyD.images.attach(io: File.open(Rails.root.join('app/assets/images/images/house4.jpg')),filename: 'house4.jpg')
    #property.avatar.attach(io: File.open(Rails.root.join('app/assets/images/logo.jpg')),
                  #filename: 'logo.jpg')

propertyE=Property.create!(
    area_id: area_shinagawa.id,area_group_id: area_group_kamata.id,property_name:'物件E', address:'東京都', access:'品川駅 徒歩4分', rent: 30000, condition:'男女どちらともOK', vacancy:6, introduction:'主要駅までのアクセス良好です', common_service_fee:15000,
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',cleaning_support:'クリーンスタッフが掃除', event:'イベントあり',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyE.images.attach(io: File.open(Rails.root.join('app/assets/images/images/house5.jpg')),filename: 'house5.jpg')
    #property.avatar.attach(io: File.open(Rails.root.join('app/assets/images/logo.jpg')),
                  #filename: 'logo.jpg')

propertyF=Property.create!(
    area_id: area_shinagawa.id,area_group_id: area_group_kamata.id,property_name:'物件F', address:'東京都', access:'品川駅 徒歩4分', rent: 30000, condition:'男女どちらともOK', vacancy:6, introduction:'主要駅までのアクセス良好です', common_service_fee:15000,
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',cleaning_support:'クリーンスタッフが掃除', event:'イベントあり',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyF.images.attach(io: File.open(Rails.root.join('app/assets/images/images/house5.jpg')),filename: 'house5.jpg')
    #property.avatar.attach(io: File.open(Rails.root.join('app/assets/images/logo.jpg')),
                  #filename: 'logo.jpg')


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