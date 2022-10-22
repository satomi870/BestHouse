
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
Area.create!(
  area_name:'練馬区'
  )
Area.create!(
  area_name:'豊島区'
  )
Area.create!(
  area_name:'世田谷区'
  )

property=Property.create!(
    area_id: 1, property_name:'物件A', address:'東京都', access:'中村橋駅 徒歩3分', rent:40000, condition:'女性', vacancy:'個室6',introduction:'主要駅までのアクセス良好です', common_service_fee:15000,
    room_facility:'エアコン・ベッド、クローゼット',
    living:'テレビ、ソファ、テーブル', kitchen:'電子レンジ、冷蔵庫、炊飯器', bath:'シャワールーム 3室',toilet:'洋式2室',others:'洗濯機 2台')
property.image.attach(io: File.open(Rails.root.join('app/assets/images/house1.jpg')),filename: 'house1.jpg')
    #profile_image: File.open("./app/assets/images/house1.jpg"))
    #property.avatar.attach(io: File.open(Rails.root.join('app/assets/images/house1.jpg')),
                  #filename: 'logo.jpg')
property=Property.create!(
    area_id: 2,property_name:'物件B', address:'東京都', access:'池袋駅 徒歩7分', rent:50000, condition:'男女どちらともOK', vacancy:'個室4', introduction:'主要駅までのアクセス良好です', common_service_fee:18000,
    room_facility:'エアコン・ベッド・クローゼット、TV',
    living:'テレビ、ソファ、テーブル、エアコン', kitchen:'電子レンジ,冷蔵庫,炊飯器、トースター', bath:'シャワールーム 4室',toilet:'洋式3室',others:'洗濯機 3台')
property.image.attach(io: File.open(Rails.root.join('app/assets/images/house2.jpg')),filename: 'house2.jpg')
     #property.avatar.attach(io: File.open(Rails.root.join('app/assets/images/logo.jpg')),
                  #filename: 'logo.jpg')
property=Property.create!(
    area_id: 3,property_name:'物件C', address:'東京都', access:'世田谷駅 徒歩9分', rent:40000, condition:'女性', vacancy:'個室6', introduction:'主要駅までのアクセス良好です', common_service_fee:15000,
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',others:'洗濯機 2台')
property.image.attach(io: File.open(Rails.root.join('app/assets/images/house3.jpg')),filename: 'house3.jpg')
    #property.avatar.attach(io: File.open(Rails.root.join('app/assets/images/logo.jpg')),
                  #filename: 'logo.jpg')

Tag.create!(
    #category_id: 1,
    name: '女性',
    genre: 'basic'

  )

Tag.create!(
    #category_id: 1,
    name: '男女どちらともOK',
    genre: 'basic'

  )

Tag.create!(
    #category_id: 2,
    name: '防音',
    genre: 'room'

  )
Tag.create!(
    #category_id: 2,
    name: '六畳以上',
    genre: 'room'

  )

 Tag.create!(
    #category_id: 3,
    name: '駐輪場あり',
    genre: 'building'

  )

  Tag.create!(
    #category_id: 3,
    name: 'オートロック',
    genre: 'building'

  )

  Tag.create!(
    #category_id: 4,
    name: '駅近(徒歩5分以内 )',
    genre: 'surrounding'

  )

   Tag.create!(
    #category_id: 4,
    name: 'コンビニ・スーパー近い（徒歩5分以内）',
    genre: 'surrounding'

  )

TagProperty.create!(
  property_id: 1,
  tag_id: 1
  #ここには足せない
  )


TagProperty.create!(
  property_id: 1,
  tag_id: 3

  )

TagProperty.create!(
  property_id: 2,
  tag_id: 2

  )

TagProperty.create!(
  property_id: 3,
  tag_id: 1
  )

TagProperty.create!(
  property_id: 3,
  tag_id: 7
  )


