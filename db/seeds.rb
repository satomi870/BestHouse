
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



area_nerima = Area.create!(
  area_name:'練馬区'
  )
area_toshima = Area.create!(
  area_name:'豊島区'
  )
area_setagaya = Area.create!(
  area_name:'世田谷区'
  )

propertyA=Property.create!(
    area_id: area_nerima.id, property_name:'物件A', address:'東京都', access:'中村橋駅 徒歩3分', rent:40000, condition:'女性', vacancy:'個室6',introduction:'主要駅までのアクセス良好です', common_service_fee:15000,
    room_facility:'エアコン・ベッド、クローゼット、トイレ、シャワールーム',
    living:'テレビ、ソファ、テーブル', kitchen:'電子レンジ、冷蔵庫、炊飯器', bath:'各部屋にあり',toilet:'各部屋にあり',others:'洗濯機 2台',latitude:'35.737798415787815',altitude:'139.63589408832408')
propertyA.image.attach(io: File.open(Rails.root.join('app/assets/images/images/house1.jpg')),filename: 'house1.jpg')
    #profile_image: File.open("./app/assets/images/house1.jpg"))
    #property.avatar.attach(io: File.open(Rails.root.join('app/assets/images/house1.jpg')),
                  #filename: 'logo.jpg')
propertyB=Property.create!(
    area_id: area_toshima.id,property_name:'物件B', address:'東京都', access:'池袋駅 徒歩7分', rent:50000, condition:'男女どちらともOK', vacancy:'個室4', introduction:'主要駅までのアクセス良好です', common_service_fee:18000,
    room_facility:'エアコン・ベッド・クローゼット、TV',
    living:'テレビ、ソファ、テーブル、エアコン', kitchen:'電子レンジ,冷蔵庫,炊飯器、トースター', bath:'シャワールーム 4室',toilet:'洋式3室',others:'洗濯機 3台',latitude:'35.73777411001525',altitude:'139.7162934895781')
propertyB.image.attach(io: File.open(Rails.root.join('app/assets/images/images/house2.jpg')),filename: 'house2.jpg')
     #property.avatar.attach(io: File.open(Rails.root.join('app/assets/images/logo.jpg')),
                  #filename: 'logo.jpg')
propertyC=Property.create!(
    area_id: area_setagaya.id,property_name:'物件C', address:'東京都', access:'世田谷駅 徒歩9分', rent:40000, condition:'女性', vacancy:'個室6', introduction:'主要駅までのアクセス良好です', common_service_fee:15000,
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',others:'洗濯機 2台',latitude:'35.645755983577175',altitude: '139.65140049229697')
propertyC.image.attach(io: File.open(Rails.root.join('app/assets/images/images/house3.jpg')),filename: 'house3.jpg')
    #property.avatar.attach(io: File.open(Rails.root.join('app/assets/images/logo.jpg')),
                  #filename: 'logo.jpg')

propertyD=Property.create!(
    area_id: area_nerima.id,property_name:'物件D', address:'東京都', access:'練馬駅 徒歩9分', rent:40000, condition:'男女どちらともOK', vacancy:'個室4', introduction:'主要駅までのアクセス良好です', common_service_fee:15000,
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',others:'洗濯機 2台', latitude: '35.7336985129341', altitude: '139.65802233669132')
propertyD.image.attach(io: File.open(Rails.root.join('app/assets/images/images/house4.jpg')),filename: 'house4.jpg')
    #property.avatar.attach(io: File.open(Rails.root.join('app/assets/images/logo.jpg')),
                  #filename: 'logo.jpg')

propertyE=Property.create!(
    area_id: area_toshima.id,property_name:'物件E', address:'東京都', access:'目白駅 徒歩4分', rent: 30000, condition:'男女どちらともOK', vacancy:'個室6', introduction:'主要駅までのアクセス良好です', common_service_fee:15000,
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',others:'洗濯機 2台', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyE.image.attach(io: File.open(Rails.root.join('app/assets/images/images/house5.jpg')),filename: 'house5.jpg')
    #property.avatar.attach(io: File.open(Rails.root.join('app/assets/images/logo.jpg')),
                  #filename: 'logo.jpg')


category_basic = Category.create!(
  category:'basic'
)

category_room = Category.create!(
  category:'room'
)

category_building = Category.create!(
  category:'building'
)

category_surrounding = Category.create!(
  category:'surrounding'
)

category_atmosphere = Category.create!(
  category:'atmosphere'
)

category_individual = Category.create!(
  category:'individual'
)

category_shared_facility = Category.create!(
  category:'shared_facility'
)

tag_woman = Tag.create!(
    category_id: category_basic.id,
    name: '女性専用'
    #genre: 'basic'

  )

tag_manwoman = Tag.create!(
    category_id: category_basic.id ,
    name: '男女どちらともOK'
    #genre: 'basic'

  )

tag_sound = Tag.create!(
    category_id: category_room.id ,
    name: '防音'
    #genre: 'room'

  )
tag_wide = Tag.create!(
    category_id: category_room.id,
    name: '六畳以上'
    #genre: 'room'

  )

 tag_parking = Tag.create!(
    category_id: category_building.id,
    name: '駐輪場あり'
    #genre: 'building'

  )

  tag_autoloc = Tag.create!(
    category_id: category_building.id,
    name: 'オートロック'
    #genre: 'building'

  )

  tag_station = Tag.create!(
    category_id: category_surrounding.id,
    name: '駅近(徒歩5分以内 )'
    #genre: 'surrounding'

  )

   tag_Supermarket = Tag.create!(
    category_id: category_surrounding.id,
    name: 'コンビニ・スーパー近い（徒歩5分以内）'
    #genre: 'surrounding'

  )

  tag_active = Tag.create!(
    category_id: category_atmosphere.id,
    name: 'みんな仲良くワイワイしてる'
    #genre: 'surrounding'

  )

  tag_normal = Tag.create!(
    category_id: category_atmosphere.id,
    name: 'ちょうど良い距離'
    #genre: 'surrounding'

  )

  tag_cool= Tag.create!(
    category_id: category_atmosphere.id,
    name: 'あいさつ程度'
    #genre: 'surrounding'

  )

  tag_bath= Tag.create!(
    category_id: category_individual.id,
    name: '専用バス付き'
    #genre: 'surrounding'

  )

　tag_toilet = Tag.create!(
    category_id: category_individual.id,
    name: '専用トイレ付き'
    #genre: 'surrounding'

  )

  tag_kitchen= Tag.create!(
    category_id: category_individual.id,
    name: '専用キッチン付き'
    #genre: 'surrounding'

  )

   tag_plumbing= Tag.create!(
    category_id: category_shared_facility.id,
    name: '水回りの設備多め'
    #genre: 'surrounding'

  )

   tag_cleaning_support= Tag.create!(
    category_id: category_shared_facility.id,
    name: '清掃サポート付き'
    #genre: 'surrounding'

  )


TagProperty.create!(
  property_id: propertyA.id,
  tag_id: tag_woman.id
  #ここには足せない
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
  tag_id: tag_bath.id

  )


TagProperty.create!(
  property_id: propertyA.id,
#  tag_id: tag_toilet.id
  tag_id: 13

  )


TagProperty.create!(
  property_id: propertyB.id,
  tag_id: tag_manwoman.id

  )

TagProperty.create!(
  property_id: propertyB.id,
  tag_id: tag_cool.id

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
  property_id: propertyD.id,
  tag_id: tag_manwoman.id
  )

TagProperty.create!(
  property_id: propertyD.id,
  tag_id: tag_wide.id
  )

TagProperty.create!(
  property_id: propertyD.id,
  tag_id: tag_active.id
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
  tag_id: tag_normal.id
  )

TagProperty.create!(
  property_id: propertyE.id,
  tag_id: tag_cleaning_support.id
  )