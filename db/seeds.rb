Admin.create!(
  email: 'g@aaaa',
  password: '222222'
  )

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
area_kita = Area.create!(
  area_name:'北区',
  area_group_id: area_group_ikebukuro.id
  )
area_toshima = Area.create!(
  area_name:'豊島区',
  area_group_id: area_group_ikebukuro.id
  )
area_bunkyo = Area.create!(
  area_name:'文京区',
  area_group_id: area_group_ikebukuro.id
  )
area_setagaya = Area.create!(
   area_name:'世田谷区',
  area_group_id: area_group_ebisu.id
  )
area_suginami = Area.create!(
  area_name:'杉並区',
  area_group_id: area_group_nakano.id
  )
area_shibuya = Area.create!(
  area_name:'渋谷区',
  area_group_id: area_group_ebisu.id
  )
area_meguro = Area.create!(
  area_name:'目黒区',
  area_group_id: area_group_ebisu.id
  )
area_nakano = Area.create!(
  area_name:'中野区',
  area_group_id: area_group_nakano.id
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
area_chuo = Area.create!(
  area_name:'中央区',
  area_group_id: area_group_roppongi.id
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
area_other = Area.create!(
  area_name:'23区外',
  area_group_id: area_group_other.id
  )


propertyA=Property.create!(
    area_id: area_nerima.id,area_group_id: area_group_ikebukuro.id, property_name:'ファースト南大泉', address:'東京都練馬区南大泉', access:'保谷駅 徒歩6分', rent:40000, condition:'女性', vacancy:4, common_service_fee:12000,
    introduction:'知らない人同士が数人で住んで、キッチンやリビング、お風呂、トイレなどを共有するひとり暮らしだけどひとり暮らしではない、安心の住まい方です。
    生活スタイルも育った環境も異なる他人が、共有・共住するので、いろいろな人のことを受け入れていかなくてはなりませんが、人間としての幅も広がり、精神的な成長の場となります。
    周辺環境はとても静かで、生活利便性もよく暮らしやすい場所です。お問い合せをお待ちしております。',
    room_facility:'エアコン・ベッド、クローゼット、トイレ、シャワールーム',
    living:'テレビ、ソファ、テーブル', kitchen:'電子レンジ、冷蔵庫、炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',
    cleaning_support:'住人同士の当番制',event:'イベントなし', breadth:'5畳',latitude:'35.737798415787815',altitude:'139.63589408832408')
propertyA.images.attach(io: File.open(Rails.root.join('app/assets/images/houseA/living.jpg')),filename: 'living.jpg')#0
propertyA.images.attach(io: File.open(Rails.root.join('app/assets/images/houseA/kitchen.jpg')),filename: 'kichen.jpg')#2
propertyA.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/bath.jpg')),filename: 'bath.jpg')#s3
propertyA.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/wash.jpg')),filename: 'wash.jpg')#4
propertyA.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/toilet.jpg')),filename: 'toilet.jpg')#4
propertyA.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/room.jpg')),filename: 'room.jpg')#4

propertyB=Property.create!(
    area_id: area_toshima.id,area_group_id: area_group_ikebukuro.id,property_name:'ファーム池袋', address:'東京都豊島区池袋', access:'池袋駅 徒歩7分', rent:60000, condition:'男女どちらともOK', vacancy:4, common_service_fee:18000,
    introduction:'毎日夜遅くまでお仕事でお疲れのあなた。通勤や食事や買い物の時間も勿体ない。そんな合理的で利便性が高く、そしてグレード感のある住まいを求めるそんなあなたにぴったりのシェア住居です。
    繁華街に建つビルのペントハウスがあなたの新しい住まいです。お部屋の中は8帖とシェア住居とは思えないほどの余裕の広さを確保。ベッドをはじめとする家具は実用的でセンシブルなものをセッティングしました。',
    room_facility:'エアコン・ベッド・クローゼット、TV',
    living:'テレビ、ソファ、テーブル、エアコン', kitchen:'電子レンジ、冷蔵庫、炊飯器、トースター', bath:'シャワールーム 4室',toilet:'洋式3室',wash_room:'4台',washing_machine:'洗濯機 4台',
    cleaning_support:'クリーンスタッフが掃除',event:'イベントなし',breadth:'8畳',latitude:'35.73777411001525',altitude:'139.7162934895781')
propertyB.images.attach(io: File.open(Rails.root.join('app/assets/images/houseB/living.jpg')),filename: 'living.jpg')#0
propertyB.images.attach(io: File.open(Rails.root.join('app/assets/images/houseB/kitchen.jpg')),filename: 'kichen.jpg')#2
propertyB.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/bath.jpg')),filename: 'bath.jpg')#s3
propertyB.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/wash.jpg')),filename: 'wash.jpg')#4
propertyB.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/toilet.jpg')),filename: 'toilet.jpg')#4
propertyB.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/room.jpg')),filename: 'room.jpg')#4

propertyC=Property.create!(
    area_id: area_setagaya.id,area_group_id: area_group_ebisu.id,property_name:'カトレア経堂', address:'東京都世田谷区経堂', access:'経堂駅 徒歩9分', rent:40000, condition:'女性', vacancy:6,common_service_fee:15000,
    introduction:'2015年4月に新しくリニューアル致しました。交通が便利で、設備が新しく、居室内はカラーが異なり3色から選べます。また、防犯対策としてALSOKのホームセキュリティと居室内の窓にシャッターが付いています。
    徒歩1分圏内にコンビニ、徒歩2分圏内にスーパーが2軒と、買物にとても便利な環境が整っています。',
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台', washing_machine:'洗濯機 3台',
    cleaning_support:'クリーンスタッフが掃除',event:'イベントなし',breadth:'6.5畳',latitude:'35.645755983577175',altitude: '139.65140049229697')
propertyC.images.attach(io: File.open(Rails.root.join('app/assets/images/houseC/living.jpg')),filename: 'living.jpg')#0
propertyC.images.attach(io: File.open(Rails.root.join('app/assets/images/houseC/kitchen.jpg')),filename: 'kichen.jpg')#2
propertyC.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/bath.jpg')),filename: 'bath.jpg')#s3
propertyC.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/wash.jpg')),filename: 'wash.jpg')#4
propertyC.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/toilet.jpg')),filename: 'toilet.jpg')#4
propertyC.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/room.jpg')),filename: 'room.jpg')#4

propertyD=Property.create!(
    area_id: area_nerima.id,area_group_id: area_group_ikebukuro.id,property_name:'キャトルセゾン石神井', address:'東京都練馬区石神井', access:'石神井公園駅 徒歩3分', rent:40000, condition:'男女どちらともOK', vacancy:4, common_service_fee:15000,
    introduction:'住むなら閑静な住宅街。だけど買い物や食事に便利で都心にアクセスのいいところがいい！キャトルセゾン石神井なら、そんな理想の立地条件が揃っています。
    駅前にはレストランや商店街が充実、コンビニまで徒歩2分。最寄りの石神井公園駅へは徒歩3分、そこから池袋までは電車9分。池袋の職場の方ならドアtoドアで通勤時間20分以内も実現可能です。
    ぜひ一度キャトルセゾン石神井の魅力を味わってみてください！！',
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式2室',wash_room:'3台',washing_machine:'洗濯機 2台',
    cleaning_support:'住人同士の当番制',event:'イベントなし',breadth:'6畳', latitude: '35.7336985129341', altitude: '139.65802233669132')
propertyD.images.attach(io: File.open(Rails.root.join('app/assets/images/houseD/living.jpg')),filename: 'living.jpg')#0
propertyD.images.attach(io: File.open(Rails.root.join('app/assets/images/houseD/kitchen.jpg')),filename: 'kichen.jpg')#2
propertyD.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/bath.jpg')),filename: 'bath.jpg')#s3
propertyD.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/wash.jpg')),filename: 'wash.jpg')#4
propertyD.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/toilet.jpg')),filename: 'toilet.jpg')#4
propertyD.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/room.jpg')),filename: 'room.jpg')#4

propertyE=Property.create!(
    area_id: area_shinagawa.id,area_group_id: area_group_kamata.id,property_name:'スカイ大崎', address:'東京都品川区大崎', access:'大崎駅 徒歩6分', rent: 58000, condition:'男女どちらともOK', vacancy:2, common_service_fee:15000,
    introduction:'都心の利便性、快適性が満喫できる「スカイ大崎」が、2019年2月にオープンしました。居室4室の小さなシェアハウスです。4人に対して、洗面台2台、シャワー2室、トイレも2室あります。
    また、屋上には洗濯物干場が用意されています。居室はオーナーデザインによる内装となっていて、落ち着いた時間をお過ごしいただけると思います。
    居室はオーナーデザインによる内装となっていて、落ち着いた時間をお過ごしいただけると思います。',
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式2室',wash_room:'2台',washing_machine:'洗濯機 2台',
    cleaning_support:'クリーンスタッフが掃除', event:'イベントあり',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyE.images.attach(io: File.open(Rails.root.join('app/assets/images/houseE/living.jpg')),filename: 'living.jpg')#0
propertyE.images.attach(io: File.open(Rails.root.join('app/assets/images/houseE/kitchen.jpg')),filename: 'kichen.jpg')#2
propertyE.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/bath.jpg')),filename: 'bath.jpg')#s3
propertyE.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/wash.jpg')),filename: 'wash.jpg')#4
propertyE.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/toilet.jpg')),filename: 'toilet.jpg')#4
propertyE.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/room.jpg')),filename: 'room.jpg')#4

propertyF=Property.create!(
    area_id: area_katushika.id,area_group_id: area_group_kitasenju.id,property_name:'ハイツ亀有', address:'東京都葛飾区亀有', access:'亀有駅 徒歩6分', rent: 30000, condition:'男女どちらともOK', vacancy:8, common_service_fee:10000,
    introduction:'亀有駅前にはあの有名な両さんの銅像。住人間の心遣いも暖かいシェアハウスです。お部屋も6畳を確保。収納は室外に倉庫があります。
    千代田線亀有駅から綾瀬駅まで2分、北千住7分、西日暮里13分、上野22分、東京駅まで26分、池袋29分、新宿38分。また北千住で常磐線、伊勢崎線、半蔵門線、日比谷線に接続しています。
    亀有駅前には、イトーヨーカ堂、アリオ亀有がありとても利便性が高いです',
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',
    cleaning_support:'クリーンスタッフが掃除', event:'イベントあり',breadth:'6畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyF.images.attach(io: File.open(Rails.root.join('app/assets/images/houseF/living.jpg')),filename: 'living.jpg')#0
propertyF.images.attach(io: File.open(Rails.root.join('app/assets/images/houseF/kitchen.jpg')),filename: 'kichen.jpg')#2
propertyF.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/bath.jpg')),filename: 'bath.jpg')#s3
propertyF.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/wash.jpg')),filename: 'wash.jpg')#4
propertyF.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/toilet.jpg')),filename: 'toilet.jpg')#4
propertyF.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/room.jpg')),filename: 'room.jpg')#4

propertyG=Property.create!(
    area_id: area_oota.id,area_group_id: area_group_kamata.id,property_name:'ステージ蒲田', address:'東京都太田区蒲田', access:'蒲田駅 徒歩8分', rent: 40000, condition:'男女どちらともOK', vacancy:6,common_service_fee:11000,
    introduction:'都心の隠れスポットとして話題の蒲田に2021年1月にシェアハウスステージ蒲田が誕生しました。「京急蒲田」「蒲田」の各駅周辺、2駅間の商業地域の開発により進化する蒲田。
    東京都心部や横浜、羽田空港などのアクセスが良く、テレビ番組でも紹介されるグルメな街として賑わい活気があります。',
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',
    cleaning_support:'クリーンスタッフが掃除', event:'イベントなし',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyG.images.attach(io: File.open(Rails.root.join('app/assets/images/houseG/living.jpg')),filename: 'living.jpg')#0
propertyG.images.attach(io: File.open(Rails.root.join('app/assets/images/houseG/kitchen.jpg')),filename: 'kichen.jpg')#2
propertyG.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/bath.jpg')),filename: 'bath.jpg')#s3
propertyG.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/wash.jpg')),filename: 'wash.jpg')#4
propertyG.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/toilet.jpg')),filename: 'toilet.jpg')#4
propertyG.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/room.jpg')),filename: 'room.jpg')#4

propertyH=Property.create!(
    area_id: area_edogawa.id,area_group_id: area_group_kitasenju.id,property_name:'スター江戸川', address:'東京都江戸川区西葛西', access:'西葛西駅 徒歩8分', rent: 30000, condition:'男女どちらともOK', vacancy:1,  common_service_fee:15000,
    introduction:'2018年6月オープン。スター江戸川は、家族でもなく友達でもなく、それでいて家族のような友達のような不思議な関係を持ったコミュニティです。
    西葛西は自然豊かな場所なので、自然に囲まれて暮らしたい方にお勧めです。ご興味のある方、ぜひお問い合わせください！',
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',
    cleaning_support:'クリーンスタッフが掃除', event:'イベントなし',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyH.images.attach(io: File.open(Rails.root.join('app/assets/images/houseH/living.jpg')),filename: 'living.jpg')#0
propertyH.images.attach(io: File.open(Rails.root.join('app/assets/images/houseH/kitchen.jpg')),filename: 'kichen.jpg')#2
propertyH.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/bath.jpg')),filename: 'bath.jpg')#s3
propertyH.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/wash.jpg')),filename: 'wash.jpg')#4
propertyH.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/toilet.jpg')),filename: 'toilet.jpg')#4
propertyH.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/room.jpg')),filename: 'room.jpg')#4

propertyI=Property.create!(
    area_id: area_nakano.id,area_group_id: area_group_nakano.id,property_name:'スターハイツ東中野', address:'東京都中野区東中野', access:'東中野駅 徒歩8分', rent: 50000, condition:'男女どちらともOK', vacancy:6, common_service_fee:15000,
    introduction:'新宿へのアクセス抜群。共有スペースで入居者様同士でコミュニケーションを楽しんだり、個室でプライベートな時を過ごしたり、
    家族のようなハウススタイルを感じていただけますと幸いです。ぜひお問い合せ下さい！',
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',
    cleaning_support:'住人同士の当番制', event:'イベントなし',breadth:'5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyI.images.attach(io: File.open(Rails.root.join('app/assets/images/houseI/living.jpg')),filename: 'living.jpg')#0
propertyI.images.attach(io: File.open(Rails.root.join('app/assets/images/houseI/kitchen.jpg')),filename: 'kichen.jpg')#2
propertyI.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/bath.jpg')),filename: 'bath.jpg')#s3
propertyI.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/wash.jpg')),filename: 'wash.jpg')#4
propertyI.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/toilet.jpg')),filename: 'toilet.jpg')#4
propertyI.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/room.jpg')),filename: 'room.jpg')#4

propertyJ=Property.create!(
    area_id: area_bunkyo.id,area_group_id: area_group_ikebukuro.id,property_name:'千駄木Fairy', address:'東京都文京区千駄木', access:'千駄木駅 徒歩6分', rent: 60000, condition:'女性', vacancy:5, 'common_service_fee':15000,
    introduction:'四季折々の美しい自然に溢れた大きな柏の目白台運動公園は、ハウスから歩いて30秒。リモートワークの息抜きに最高のロケーションです。
    屋上の広いルーフテラスは見渡しがよく、読書をしたり、夜空を観たり、お洗濯物を広々干したり。もちらも開放感がありとっても気持ちがいいので、気軽にちょっとした贅沢時間を作ることができます。
    都心へもアクセスが良く、治安の良い千駄木は、大変人気の駅です。いつも綺麗な千駄木Fairyで、新しい生活を送ってみませんか？',
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 3室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 3台',
    cleaning_support:'クリーンスタッフが掃除', event:'イベントなし',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyJ.images.attach(io: File.open(Rails.root.join('app/assets/images/houseJ/living.jpg')),filename: 'living.jpg')#0
propertyJ.images.attach(io: File.open(Rails.root.join('app/assets/images/houseJ/kitchen.jpg')),filename: 'kichen.jpg')#2
propertyJ.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/bath.jpg')),filename: 'bath.jpg')#s3
propertyJ.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/wash.jpg')),filename: 'wash.jpg')#4
propertyJ.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/toilet.jpg')),filename: 'toilet.jpg')#4
propertyJ.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/room.jpg')),filename: 'room.jpg')#4

propertyK=Property.create!(
    area_id: area_kita.id,area_group_id: area_group_ikebukuro.id,property_name:'コモン上十条', address:'東京都北区上十条', access:'上十条駅 徒歩6分', rent: 30000, condition:'男女どちらともOK', vacancy:7, common_service_fee:16000,
    introduction:'静かなシェアハウスです。個室の広さ、収納の充実、清潔さを重視しました。
    バス停がすぐ近くにあり、池袋に15分前後でアクセス出来ます。スーパー、商店街も近く、生活するには大変便利です。ホテル仕様のコイルベッドを全室にご用意しました。',
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',
    cleaning_support:'クリーンスタッフが掃除', event:'イベントあり',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyK.images.attach(io: File.open(Rails.root.join('app/assets/images/houseK/living.jpg')),filename: 'living.jpg')#0
propertyK.images.attach(io: File.open(Rails.root.join('app/assets/images/houseK/kitchen.jpg')),filename: 'kichen.jpg')#2
propertyK.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/bath.jpg')),filename: 'bath.jpg')#s3
propertyK.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/wash.jpg')),filename: 'wash.jpg')#4
propertyK.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/toilet.jpg')),filename: 'toilet.jpg')#4
propertyK.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/room.jpg')),filename: 'room.jpg')#4

propertyL=Property.create!(
    area_id: area_daito.id,area_group_id: area_group_ueno.id,property_name:'SPICA上野', address:'東京都台東区上野', access:'上野駅 徒歩4分', rent: 50000, condition:'外国人大歓迎', vacancy:2, common_service_fee:13000,
    introduction:'2013年4月、上野駅から徒歩4分の恵まれた環境に、シェアハウスがオープンしました。
    四季折々の植物たちが生い茂る小道を歩いて玄関へ、大きな窓からは明るい陽射しがたっぷり降り注ぎほっこり癒される室内空間。
    都会の中の緑豊かなシェアハウスで、明るいお部屋は全部で10つ、それぞれに異なるデザイン・インテリアで角部屋がメインの個室です。
    リビングは、庭の植物を眺めながらゆったりくつろげる癒しの空間となっていて、大型のキッチンは収納も多く使い勝手抜群です',
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',
    cleaning_support:'住人同士の当番制', event:'イベントあり',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyL.images.attach(io: File.open(Rails.root.join('app/assets/images/houseL/living.jpg')),filename: 'living.jpg')#0
propertyL.images.attach(io: File.open(Rails.root.join('app/assets/images/houseL/kitchen.jpg')),filename: 'kichen.jpg')#2
propertyL.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/bath.jpg')),filename: 'bath.jpg')#s3
propertyL.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/wash.jpg')),filename: 'wash.jpg')#4
propertyL.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/toilet.jpg')),filename: 'toilet.jpg')#4
propertyL.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/room.jpg')),filename: 'room.jpg')#4

propertyM=Property.create!(
    area_id: area_arakawa.id,area_group_id: area_group_kitasenju.id,property_name:'町屋ハウス', address:'東京都荒川区町屋', access:'町屋駅 徒歩3分', rent: 40000, condition:'男女どちらともOK', vacancy:6, common_service_fee:10000,
    introduction:'大手町まで12分。表参道まで27分。通勤、遊びにも嬉しい場所にシェアハウス「町屋ハウス」が2014年3月にオープンしました。
    東京メトロ千代田線にありながら、なぜかふっと落ち着く。町はそんな雰囲気です。帰途までには威勢のいいお惣菜屋さんや、むかしながらの珈琲屋さん。
    定食屋さん。リサイクルショップ。花屋さん。などなど町全体がゆっくりと時間が流れるけど、みんな元気。東京でのかっこいい生活、だけど、家の灯りが見えてくるとほっとする。
    そんな街にあるシェアハウスです。',
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',
    cleaning_support:'クリーンスタッフが掃除', event:'イベントなし',breadth:'5.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyM.images.attach(io: File.open(Rails.root.join('app/assets/images/houseM/living.jpg')),filename: 'living.jpg')#0
propertyM.images.attach(io: File.open(Rails.root.join('app/assets/images/houseM/kitchen.jpg')),filename: 'kichen.jpg')#2
propertyM.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/bath.jpg')),filename: 'bath.jpg')#s3
propertyM.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/wash.jpg')),filename: 'wash.jpg')#4
propertyM.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/toilet.jpg')),filename: 'toilet.jpg')#4
propertyM.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/room.jpg')),filename: 'room.jpg')#4

propertyN=Property.create!(
    area_id: area_adachi.id,area_group_id: area_group_kitasenju.id,property_name:'share綾瀬', address:'東京都足立区綾瀬', access:'綾瀬駅 徒歩7分', rent: 30000, condition:'外国人大歓迎', vacancy:6, common_service_fee:10000,
    introduction:'2022年6月新規オープン！出来立てホヤホヤです！コンセプトは「低価格で入居できるおしゃれなシェアハウス」。
    様々なコストカットに成功し、初期費用の安さは地域No.1です。少しでもご興味がある方はお気軽にご連絡下さいませ。
    もちろん安いだけではなく、フルリノベーションしたばかりなのでとても綺麗です',
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 4室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 3台',
    cleaning_support:'クリーンスタッフが掃除', event:'イベントなし',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyN.images.attach(io: File.open(Rails.root.join('app/assets/images/houseN/living.jpg')),filename: 'living.jpg')#0
propertyN.images.attach(io: File.open(Rails.root.join('app/assets/images/houseN/kitchen.jpg')),filename: 'kichen.jpg')#2
propertyN.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/bath.jpg')),filename: 'bath.jpg')#s3
propertyN.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/wash.jpg')),filename: 'wash.jpg')#4
propertyN.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/toilet.jpg')),filename: 'toilet.jpg')#4
propertyN.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/room.jpg')),filename: 'room.jpg')#4

propertyO=Property.create!(
    area_id: area_sumida.id,area_group_id: area_group_ueno.id,property_name:'フィネッツァ両国', address:'東京都墨田区両国', access:'両国駅 徒歩10分', rent: 50000, condition:'外国人大歓迎', vacancy:5, common_service_fee:15000,
    introduction:'2019年12月オープン。豊かな自然と江戸の歴史を感じることができる街にフィネッツァ両国ができました！利便性も抜群です。
    他者への思いやりに溢れたコミュニティのある豊かな生活としてのシェアを実現していきたいと思います。',
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'IHクッキングヒータ-、電子レンジ、冷蔵庫、炊飯器、ポット', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',
    cleaning_support:'クリーンスタッフが掃除', event:'イベントなし',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyO.images.attach(io: File.open(Rails.root.join('app/assets/images/houseO/living.jpg')),filename: 'living.jpg')#0
propertyO.images.attach(io: File.open(Rails.root.join('app/assets/images/houseO/kitchen.jpg')),filename: 'kichen.jpg')#2
propertyO.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/bath.jpg')),filename: 'bath.jpg')#s3
propertyO.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/wash.jpg')),filename: 'wash.jpg')#4
propertyO.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/toilet.jpg')),filename: 'toilet.jpg')#4
propertyO.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/room.jpg')),filename: 'room.jpg')#4

propertyP=Property.create!(
    area_id: area_kouto.id,area_group_id: area_group_ueno.id,property_name:'MONZENNAKAMACHI', address:'東京都江東区門前仲町', access:'門前仲町駅 徒歩10分', rent: 50000, condition:'二人入居可', vacancy:3, common_service_fee:17000,
     introduction:'隠れたカフェや雑貨の集まる閑静な街で、のんびり暮らしてみませんか？閑静な住宅街の小道を一本入った場所にMONZENNAKAMACHIはあります。
     中庭にはウッドデッキがあり、BBQなどできます。門前仲町駅より徒歩10分、5DKのリノベーションされた家。
     リビングも10畳あり、ゆったり過ごすことができます。',
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',
    cleaning_support:'クリーンスタッフが掃除', event:'イベントあり',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyP.images.attach(io: File.open(Rails.root.join('app/assets/images/houseP/living.jpg')),filename: 'living.jpg')#0
propertyP.images.attach(io: File.open(Rails.root.join('app/assets/images/houseP/kitchen.jpg')),filename: 'kichen.jpg')#2
propertyP.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/bath.jpg')),filename: 'bath.jpg')#s3
propertyP.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/wash.jpg')),filename: 'wash.jpg')#4
propertyP.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/toilet.jpg')),filename: 'toilet.jpg')#4
propertyP.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/room.jpg')),filename: 'room.jpg')#4

propertyQ=Property.create!(
    area_id: area_itabashi.id,area_group_id: area_group_ikebukuro.id,property_name:'サザン板橋', address:'東京都板橋区板橋', access:'板橋駅 徒歩2分', rent: 30000, condition:'男女どちらともOK', vacancy:6, common_service_fee:11000,
    introduction:'駅から近く、値段もお手頃な物件です。全12部屋の一戸建てタイプの物件で、共有スペースはこじんまりしていますが、各お部屋の間取りを広くとっている物件です。
    物件近くには繊維街があり、衣料品や生地が安く手に入ります。',
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',
    cleaning_support:'住人同士の当番制', event:'イベントなし',breadth:'5.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyQ.images.attach(io: File.open(Rails.root.join('app/assets/images/houseQ/living.jpg')),filename: 'living.jpg')#0
propertyQ.images.attach(io: File.open(Rails.root.join('app/assets/images/houseQ/kitchen.jpg')),filename: 'kichen.jpg')#2
propertyQ.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/bath.jpg')),filename: 'bath.jpg')#s3
propertyQ.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/wash.jpg')),filename: 'wash.jpg')#4
propertyQ.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/toilet.jpg')),filename: 'toilet.jpg')#4
propertyQ.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/room.jpg')),filename: 'room.jpg')#4

propertyR=Property.create!(
    area_id: area_suginami.id,area_group_id: area_group_nakano.id,property_name:'杉並の家', address:'東京都杉並区荻窪', access:'荻窪駅 徒歩10分', rent: 50000, condition:'男女どちらともOK', vacancy:3,common_service_fee:15000,
    introduction:'荻窪の賑やかな商店街を抜けた先にある自然豊かな地域。リビングは暖かみのある赤の壁を基調としたゆったり空間。
    窓も木製のサッシで、開けるたびにガラガラガラ。懐かしい音が聞こえます。ソファは住人みんなで座れるくらい大きくて、そこから窓をのぞくとポカポカな日差し溢れる大きなお庭。
    お日様と顔を合わせたくなったらまずここへ。杉並の家のコンセプトは、「お互いに成長すること。」ご興味ある方はお気軽にコンタクトください。',
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'各部屋にあり',toilet:'各部屋にあり',wash_room:'各部屋にあり',washing_machine:'洗濯機 2台',
    cleaning_support:'クリーンスタッフが掃除', event:'イベントなし',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyR.images.attach(io: File.open(Rails.root.join('app/assets/images/houseR/living.jpg')),filename: 'living.jpg')#0
propertyR.images.attach(io: File.open(Rails.root.join('app/assets/images/houseR/kitchen.jpg')),filename: 'kichen.jpg')#2
propertyR.images.attach(io: File.open(Rails.root.join('app/assets/images/no_image/no_image.jpg')),filename: 'no_image.jpg')#s3
propertyR.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/wash.jpg')),filename: 'wash.jpg')#4
propertyR.images.attach(io: File.open(Rails.root.join('app/assets/images/no_image/no_image.jpg')),filename: 'no_image.jpg')#4
propertyR.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/room.jpg')),filename: 'room.jpg')#4

propertyS=Property.create!(
    area_id: area_shibuya.id,area_group_id: area_group_ebisu.id,property_name:'BeGood_Daikanyama', address:'東京都渋谷区代官山', access:'代官山駅 徒歩9分', rent: 80000, condition:'男女どちらともOK', vacancy:1, common_service_fee:19000,
    introduction:'憧れの「代官山」暮らすだけでセンスが良くなる、イキイキと生活が出来る…都心で働く社会人を応援するのがコンセプトのシェアハウスです。
    2020年2月新規オープンだから、こだわり抜いたアイテム達は新しい物ばかり!ご興味ある方はお気軽にコンタクトください。',
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ、冷蔵庫、炊飯器、ケトル、調理道具', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',
    cleaning_support:'クリーンスタッフが掃除', event:'イベントあり',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyS.images.attach(io: File.open(Rails.root.join('app/assets/images/houseS/living.jpg')),filename: 'living.jpg')#0
propertyS.images.attach(io: File.open(Rails.root.join('app/assets/images/houseS/kitchen.jpg')),filename: 'kichen.jpg')#2
propertyS.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/bath.jpg')),filename: 'bath.jpg')#s3
propertyS.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/wash.jpg')),filename: 'wash.jpg')#4
propertyS.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/toilet.jpg')),filename: 'toilet.jpg')#4
propertyS.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/room.jpg')),filename: 'room.jpg')#4

propertyT=Property.create!(
    area_id: area_meguro.id,area_group_id: area_group_ebisu.id,property_name:'フィーユ中目黒', address:'東京都目黒区中目黒', access:'中目黒駅 徒歩5分', rent: 70000, condition:'女性', vacancy:4, common_service_fee:18000,
    introduction:'2021年4月新築！中目黒駅徒歩5分！4路線利用可能、都心の好立地シェアハウスです。スーパーはもちろん、銀行、病院、カフェ、レストランやホテルなど様々な施設が複数あり、全て徒歩圏内。
    広々としたリビングは最高にくつろげます',
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',
    cleaning_support:'クリーンスタッフが掃除', event:'イベントあり',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyT.images.attach(io: File.open(Rails.root.join('app/assets/images/houseT/living.jpg')),filename: 'living.jpg')#0
propertyT.images.attach(io: File.open(Rails.root.join('app/assets/images/houseT/kitchen.jpg')),filename: 'kichen.jpg')#2
propertyT.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/bath.jpg')),filename: 'bath.jpg')#s3
propertyT.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/wash.jpg')),filename: 'wash.jpg')#4
propertyT.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/toilet.jpg')),filename: 'toilet.jpg')#4
propertyT.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/room.jpg')),filename: 'room.jpg')#4

propertyU=Property.create!(
    area_id: area_shinjuku.id,area_group_id: area_group_nakano.id,property_name:'テラス西新宿', address:'東京都新宿区西新宿', access:'西新宿駅 徒歩9分', rent: 60000, condition:'男女どちらともOK', vacancy:5, common_service_fee:15000,
    introduction:'暖かく人を迎えいれる環境と雰囲気造りを目指し2014年6月、西新宿にテラス西新宿がOPENしました。
    都会にいながら緑を愛でることの出来る環境がある西新宿で、季節の移り変わりを感じながら暮らせるシェアハウスとなっております。
    設備や内装の大改修を行いほぼ全てが新規となっております。
    自慢の緑は庭と、建物の南側にある公園。贅沢なひと時を感じられるはず。',
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',
    cleaning_support:'クリーンスタッフが掃除', event:'イベントなし',breadth:'6.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyU.images.attach(io: File.open(Rails.root.join('app/assets/images/houseU/living.jpg')),filename: 'living.jpg')#0
propertyU.images.attach(io: File.open(Rails.root.join('app/assets/images/houseU/kitchen.jpg')),filename: 'kichen.jpg')#2
propertyU.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/bath.jpg')),filename: 'bath.jpg')#s3
propertyU.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/wash.jpg')),filename: 'wash.jpg')#4
propertyU.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/toilet.jpg')),filename: 'toilet.jpg')#4
propertyU.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/room.jpg')),filename: 'room.jpg')#4

propertyV=Property.create!(
    area_id: area_minato.id,area_group_id: area_group_roppongi.id,property_name:'麻布Breeze', address:'東京都港区麻布十番', access:'麻布十番駅 徒歩6分', rent: 90000, condition:'女性', vacancy:6, common_service_fee:21000,
    introduction:'リビングからは東京タワー、テラスからは六本木ヒルズを望めます。麻布十番駅周辺には、数々の名店がひしめきあっています。
    その一方で、商店街が充実していることでも有名な街です。高級店だけではなく、リーズナブルな行きつけのお店を見つけるのも楽しみの一つかと存じます
    。六本木ヒルズやミッドタウンまで歩くことも十分にできる好立地です。',
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',
    cleaning_support:'クリーンスタッフが掃除', event:'イベントなし',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyV.images.attach(io: File.open(Rails.root.join('app/assets/images/houseV/living.jpg')),filename: 'living.jpg')#0
propertyV.images.attach(io: File.open(Rails.root.join('app/assets/images/houseV/kitchen.jpg')),filename: 'kichen.jpg')#2
propertyV.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/bath.jpg')),filename: 'bath.jpg')#s3
propertyV.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/wash.jpg')),filename: 'wash.jpg')#4
propertyV.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/toilet.jpg')),filename: 'toilet.jpg')#4
propertyV.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/room.jpg')),filename: 'room.jpg')#4

propertyW=Property.create!(
    area_id: area_chiyoda.id,area_group_id: area_group_roppongi.id,property_name:'kiki大手町', address:'東京都千代田区大手町', access:'大手町駅 徒歩12分', rent: 120000, condition:'二人入居可', vacancy:5, common_service_fee:15000,
    introduction:'何処に行くにも便利な都会のど真ん中、東京メトロ丸の内線大手町駅から徒歩12分の立地に「kiki大手町」は存在します。
    オフィス街なので働く社会人に嬉しい立地です。地下鉄での移動の便利さは言うまでもなく、自転車でも東京駅まで10分、日本橋にも15分しか掛かりません。
    外観も、とてもお洒落な和風モダンで、前庭の竹と素敵な植栽たちが、いつも暖かくお迎えします。',
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'各部屋にあり', bath:'各部屋にあり',toilet:'各部屋にあり',wash_room:'3台',washing_machine:'洗濯機 2台',
    cleaning_support:'住人同士の当番制', event:'イベントなし',breadth:'8.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyW.images.attach(io: File.open(Rails.root.join('app/assets/images/houseW/living.jpg')),filename: 'living.jpg')#0
propertyW.images.attach(io: File.open(Rails.root.join('app/assets/images/no_image/no_image.jpg')),filename: 'no_image.jpg')#4
propertyW.images.attach(io: File.open(Rails.root.join('app/assets/images/no_image/no_image.jpg')),filename: 'no_image.jpg')#4
propertyW.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/wash.jpg')),filename: 'wash.jpg')#4
propertyW.images.attach(io: File.open(Rails.root.join('app/assets/images/no_image/no_image.jpg')),filename: 'no_image.jpg')#4
propertyW.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/room.jpg')),filename: 'room.jpg')#4

propertyX=Property.create!(
    area_id: area_chuo.id,area_group_id: area_group_roppongi.id,property_name:'ARDEN築地', address:'東京都中央区築地', access:'築地駅 徒歩10分', rent: 60000, condition:'外国人大歓迎', vacancy:4, common_service_fee:15000,
    introduction:'日本の台所築地市場のすぐ近く。銀座も徒歩圏内の便利なシェアハウスです。日比谷線築地駅から4分で、大江戸線の築地市場駅や勝どき駅も徒歩圏内です。
    平日は通勤の便利さを感じ、休日は築地の市場や銀座ブラや月島のもんじゃを楽しむなど、とても環境のよいシェアハウスです。ぜひ一度見学にお越しください。',
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',
    cleaning_support:'クリーンスタッフが掃除', event:'イベントなし',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyX.images.attach(io: File.open(Rails.root.join('app/assets/images/houseX/living.jpg')),filename: 'living.jpg')#0
propertyX.images.attach(io: File.open(Rails.root.join('app/assets/images/houseX/kitchen.jpg')),filename: 'kichen.jpg')#2
propertyX.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/bath.jpg')),filename: 'bath.jpg')#s3
propertyX.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/wash.jpg')),filename: 'wash.jpg')#4
propertyX.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/toilet.jpg')),filename: 'toilet.jpg')#4
propertyX.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/room.jpg')),filename: 'room.jpg')#4

propertyY=Property.create!(
    area_id: area_other.id,area_group_id: area_group_other.id,property_name:'ソフィア府中', address:'東京都府中市府中', access:'府中駅 徒歩8分', rent: 30000, condition:'女性', vacancy:6, common_service_fee:11000,
    introduction:'府中駅に2013年5月にオープンしました。共用スペース・室内共に館内全てリノベーションしているので、とても綺麗です。室内は明るく、全室収納もあります。
    共用スペースには大型システムキッチンがあり、本格的な自炊も可能です。',
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'システムキッチン、電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 4室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 4台',
    cleaning_support:'クリーンスタッフが掃除', event:'イベントなし',breadth:'4.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyY.images.attach(io: File.open(Rails.root.join('app/assets/images/houseY/living.jpg')),filename: 'living.jpg')#0
propertyY.images.attach(io: File.open(Rails.root.join('app/assets/images/houseY/kitchen.jpg')),filename: 'kichen.jpg')#2
propertyY.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/bath.jpg')),filename: 'bath.jpg')#s3
propertyY.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/wash.jpg')),filename: 'wash.jpg')#4
propertyY.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/toilet.jpg')),filename: 'toilet.jpg')#4
propertyY.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/room.jpg')),filename: 'room.jpg')#4

propertyZ=Property.create!(
    area_id: area_other.id,area_group_id: area_group_other.id,property_name:'hause西八王子', address:'東京都八王子市西八王子', access:'西八王子駅 徒歩8分', rent: 30000, condition:'男女どちらともOK', vacancy:2, common_service_fee:10000,
    introduction:'駅から近く、値段もお手頃で眺望と日当たりの良いシェアハウス。広々とした個室は日当たりがよく、開放感も抜群です。hause西八王子はほとんどのお買い物は駅前でまかなえます。
    共有スペースはこじんまりしていますが、各お部屋の間取りを広くとっている物件です。家具家電完備。',
    room_facility:'エアコン・ベッド・クローゼット、ミニ冷蔵庫',
    living:'テレビ、ソファ、テーブル、DVD', kitchen:'電子レンジ,冷蔵庫,炊飯器', bath:'シャワールーム 2室',toilet:'洋式3室',wash_room:'3台',washing_machine:'洗濯機 2台',
    cleaning_support:'住人同士の当番制', event:'イベントあり',breadth:'6.5畳', latitude: '35.71819680517442', altitude: '139.7018533781967')
propertyZ.images.attach(io: File.open(Rails.root.join('app/assets/images/houseZ/living.jpg')),filename: 'living.jpg')#0
propertyZ.images.attach(io: File.open(Rails.root.join('app/assets/images/houseZ/kitchen.jpg')),filename: 'kichen.jpg')#2
propertyZ.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/bath.jpg')),filename: 'bath.jpg')#s3
propertyZ.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/wash.jpg')),filename: 'wash.jpg')#4
propertyZ.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/toilet.jpg')),filename: 'toilet.jpg')#4
propertyZ.images.attach(io: File.open(Rails.root.join('app/assets/images/plumbing/room.jpg')),filename: 'room.jpg')#4


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
)

tag_manwoman = Tag.create!(
  category_id: category_basic.id,
  name: '男女どちらともOK'
)

tag_foreigner = Tag.create!(
  category_id: category_basic.id,
  name: '外国人大歓迎'
)

tag_pair = Tag.create!(
  category_id: category_basic.id,
  name: '二人入居可'
)

tag_sound = Tag.create!(
  category_id: category_room.id,
  name: '防音'
)

tag_wide = Tag.create!(
  category_id: category_room.id,
  name: '六畳以上'
)

tag_bath = Tag.create!(
  category_id: category_room.id,
  name: '専用バス付き'
)

tag_toilet = Tag.create!(
  category_id: category_room.id,
  name: '専用トイレ付き'
)

tag_kitchen= Tag.create!(
  category_id: category_room.id,
  name: '専用キッチン付き'
)

tag_station = Tag.create!(
  category_id: category_surrounding.id,
  name: '駅から5分以内'
)

tag_supermarket = Tag.create!(
  category_id: category_surrounding.id,
  name: 'コンビニ・スーパー近い'
)

tag_residential  = Tag.create!(
  category_id: category_surrounding.id,
  name: '住宅街'
)

tag_office  = Tag.create!(
  category_id: category_surrounding.id,
  name: 'オフィス街'
)

tag_plumbing= Tag.create!(
  category_id: category_shared_facility.id,
  name: '水回りの設備多め'
)

tag_cook= Tag.create!(
  category_id: category_shared_facility.id,
  name: '料理器具充実'
)

tag_cleaning_support= Tag.create!(
  category_id: category_shared_facility.id,
  name: '清掃サポート付き'
)

tag_entertainment= Tag.create!(
  category_id: category_shared_facility.id,
  name: '娯楽設備付き'
)

tag_parking = Tag.create!(
  category_id: category_other.id,
  name: '駐輪場あり'
)

tag_autoloc = Tag.create!(
  category_id: category_other.id,
  name: 'オートロック'
)

tag_many_event= Tag.create!(
  category_id: category_other.id,
  name: 'イベントあり'
)

tag_no_event= Tag.create!(
  category_id: category_other.id,
  name: 'イベントなし'
)


#propertyA
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
  property_id: propertyA.id,
  tag_id: tag_residential.id
  )

#propertyB
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
  property_id: propertyB.id,
  tag_id: tag_wide.id
  )
TagProperty.create!(
  property_id: propertyB.id,
  tag_id: tag_supermarket.id
  )

#propertyC
TagProperty.create!(
  property_id: propertyC.id,
  tag_id: tag_woman.id
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
  property_id: propertyC.id,
  tag_id: tag_supermarket.id
  )

#propertyD
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
  property_id: propertyD.id,
  tag_id: tag_station.id
  )
TagProperty.create!(
  property_id: propertyD.id,
  tag_id: tag_residential.id
  )
TagProperty.create!(
  property_id: propertyD.id,
  tag_id: tag_supermarket.id
  )

#propertyE
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
  property_id: propertyE.id,
  tag_id: tag_plumbing.id
  )

#propertyF
TagProperty.create!(
  property_id: propertyF.id,
  tag_id: tag_manwoman.id
  )
TagProperty.create!(
  property_id: propertyF.id,
  tag_id: tag_cleaning_support.id
  )
TagProperty.create!(
  property_id: propertyF.id,
  tag_id: tag_wide.id
  )
TagProperty.create!(
  property_id: propertyF.id,
  tag_id: tag_many_event.id
  )
TagProperty.create!(
  property_id: propertyF.id,
  tag_id: tag_cook.id
  )
TagProperty.create!(
  property_id: propertyF.id,
  tag_id: tag_supermarket.id
  )

#propertyG
TagProperty.create!(
  property_id: propertyG.id,
  tag_id: tag_manwoman.id
  )
TagProperty.create!(
  property_id: propertyG.id,
  tag_id: tag_cleaning_support.id
  )
TagProperty.create!(
  property_id: propertyG.id,
  tag_id: tag_no_event.id
  )
TagProperty.create!(
  property_id: propertyG.id,
  tag_id: tag_parking.id
  )

#propertyH
TagProperty.create!(
  property_id: propertyH.id,
  tag_id: tag_manwoman.id
  )
TagProperty.create!(
  property_id: propertyH.id,
  tag_id: tag_cleaning_support.id
  )
TagProperty.create!(
  property_id: propertyH.id,
  tag_id: tag_no_event.id
  )
TagProperty.create!(
  property_id: propertyH.id,
  tag_id: tag_parking.id
  )
TagProperty.create!(
  property_id: propertyH.id,
  tag_id: tag_residential.id
  )

#propertyI
TagProperty.create!(
  property_id: propertyI.id,
  tag_id: tag_manwoman.id
  )
TagProperty.create!(
  property_id: propertyI.id,
  tag_id: tag_no_event.id
  )
TagProperty.create!(
  property_id: propertyI.id,
  tag_id: tag_autoloc.id
  )

#propertyJ
TagProperty.create!(
  property_id: propertyJ.id,
  tag_id: tag_woman.id
  )
TagProperty.create!(
  property_id: propertyJ.id,
  tag_id: tag_no_event.id
  )
TagProperty.create!(
  property_id: propertyJ.id,
  tag_id: tag_plumbing.id
  )
TagProperty.create!(
  property_id: propertyJ.id,
  tag_id: tag_cleaning_support.id
  )

#propertyK
TagProperty.create!(
  property_id: propertyK.id,
  tag_id: tag_manwoman.id
  )
TagProperty.create!(
  property_id: propertyK.id,
  tag_id: tag_many_event.id
  )
TagProperty.create!(
  property_id: propertyK.id,
  tag_id: tag_plumbing.id
  )
TagProperty.create!(
  property_id: propertyK.id,
  tag_id: tag_supermarket.id
  )
TagProperty.create!(
  property_id: propertyK.id,
  tag_id: tag_residential.id
  )

#propertyL
TagProperty.create!(
  property_id: propertyL.id,
  tag_id: tag_manwoman.id
  )
TagProperty.create!(
  property_id: propertyL.id,
  tag_id: tag_foreigner.id
  )
TagProperty.create!(
  property_id: propertyL.id,
  tag_id: tag_station.id
  )
TagProperty.create!(
  property_id: propertyL.id,
  tag_id: tag_many_event.id
  )

#propertyM
TagProperty.create!(
  property_id: propertyM.id,
  tag_id: tag_manwoman.id
  )
TagProperty.create!(
  property_id: propertyM.id,
  tag_id: tag_station.id
  )
TagProperty.create!(
  property_id: propertyM.id,
  tag_id: tag_no_event.id
  )
TagProperty.create!(
  property_id: propertyM.id,
  tag_id: tag_cleaning_support.id
  )
TagProperty.create!(
  property_id: propertyM.id,
  tag_id: tag_sound.id
  )

#propertyN
TagProperty.create!(
  property_id: propertyN.id,
  tag_id: tag_manwoman.id
  )
TagProperty.create!(
  property_id: propertyN.id,
  tag_id: tag_foreigner.id
  )
TagProperty.create!(
  property_id: propertyN.id,
  tag_id: tag_plumbing.id
  )
TagProperty.create!(
  property_id: propertyN.id,
  tag_id: tag_no_event.id
  )
TagProperty.create!(
  property_id: propertyN.id,
  tag_id: tag_cleaning_support.id
  )

#propertyO
TagProperty.create!(
  property_id: propertyO.id,
  tag_id: tag_manwoman.id
  )
TagProperty.create!(
  property_id: propertyO.id,
  tag_id: tag_foreigner.id
  )
TagProperty.create!(
  property_id: propertyO.id,
  tag_id: tag_cook.id
  )
TagProperty.create!(
  property_id: propertyO.id,
  tag_id: tag_no_event.id
  )
TagProperty.create!(
  property_id: propertyO.id,
  tag_id: tag_cleaning_support.id
  )

#propertyP
TagProperty.create!(
  property_id: propertyP.id,
  tag_id: tag_woman.id
  )
TagProperty.create!(
  property_id: propertyP.id,
  tag_id: tag_pair.id
  )
TagProperty.create!(
  property_id: propertyP.id,
  tag_id: tag_residential.id
  )
TagProperty.create!(
  property_id: propertyP.id,
  tag_id: tag_many_event.id
  )
TagProperty.create!(
  property_id: propertyP.id,
  tag_id: tag_cleaning_support.id
  )

#propertyQ
TagProperty.create!(
  property_id: propertyQ.id,
  tag_id: tag_manwoman.id
  )
TagProperty.create!(
  property_id: propertyQ.id,
  tag_id: tag_station.id
  )
TagProperty.create!(
  property_id: propertyQ.id,
  tag_id: tag_autoloc.id
  )
TagProperty.create!(
  property_id: propertyQ.id,
  tag_id: tag_no_event.id
  )

#propertyR
TagProperty.create!(
  property_id: propertyR.id,
  tag_id: tag_manwoman.id
  )
TagProperty.create!(
  property_id: propertyR.id,
  tag_id: tag_bath.id
  )
TagProperty.create!(
  property_id: propertyR.id,
  tag_id: tag_toilet.id
  )
TagProperty.create!(
  property_id: propertyR.id,
  tag_id: tag_cleaning_support.id
  )
TagProperty.create!(
  property_id: propertyR.id,
  tag_id: tag_no_event.id
  )

#propertyS
TagProperty.create!(
  property_id: propertyS.id,
  tag_id: tag_manwoman.id
  )
TagProperty.create!(
  property_id: propertyS.id,
  tag_id: tag_cook.id
  )
TagProperty.create!(
  property_id: propertyS.id,
  tag_id: tag_cleaning_support.id
  )
TagProperty.create!(
  property_id: propertyS.id,
  tag_id: tag_many_event.id
  )

#propertyT
TagProperty.create!(
  property_id: propertyT.id,
  tag_id: tag_woman.id
  )
TagProperty.create!(
  property_id: propertyT.id,
  tag_id: tag_station.id
  )
TagProperty.create!(
  property_id: propertyT.id,
  tag_id: tag_supermarket.id
  )
TagProperty.create!(
  property_id: propertyT.id,
  tag_id: tag_cleaning_support.id
  )
TagProperty.create!(
  property_id: propertyT.id,
  tag_id: tag_many_event.id
  )

#propertyU
TagProperty.create!(
  property_id: propertyU.id,
  tag_id: tag_manwoman.id
  )
TagProperty.create!(
  property_id: propertyU.id,
  tag_id: tag_office.id
  )
TagProperty.create!(
  property_id: propertyU.id,
  tag_id: tag_cleaning_support.id
  )
TagProperty.create!(
  property_id: propertyU.id,
  tag_id: tag_no_event.id
  )
TagProperty.create!(
  property_id: propertyU.id,
  tag_id: tag_wide.id
  )

#propertyV
TagProperty.create!(
  property_id: propertyV.id,
  tag_id: tag_woman.id
  )
TagProperty.create!(
  property_id: propertyV.id,
  tag_id: tag_cleaning_support.id
  )
TagProperty.create!(
  property_id: propertyV.id,
  tag_id: tag_no_event.id
  )
TagProperty.create!(
  property_id: propertyV.id,
  tag_id: tag_entertainment.id
  )

#propertyW
TagProperty.create!(
  property_id: propertyW.id,
  tag_id: tag_manwoman.id
  )
TagProperty.create!(
  property_id: propertyW.id,
  tag_id: tag_pair.id
  )
TagProperty.create!(
  property_id: propertyW.id,
  tag_id: tag_wide.id
  )
TagProperty.create!(
  property_id: propertyW.id,
  tag_id: tag_no_event.id
  )
TagProperty.create!(
  property_id: propertyW.id,
  tag_id: tag_kitchen.id
  )
TagProperty.create!(
  property_id: propertyW.id,
  tag_id: tag_bath.id
  )
TagProperty.create!(
  property_id: propertyW.id,
  tag_id: tag_toilet.id
  )
TagProperty.create!(
  property_id: propertyW.id,
  tag_id: tag_office.id
  )

#propertyX
TagProperty.create!(
  property_id: propertyX.id,
  tag_id: tag_manwoman.id
  )
TagProperty.create!(
  property_id: propertyX.id,
  tag_id: tag_foreigner.id
  )
TagProperty.create!(
  property_id: propertyX.id,
  tag_id: tag_cleaning_support.id
  )
TagProperty.create!(
  property_id: propertyX.id,
  tag_id: tag_no_event.id
  )
TagProperty.create!(
  property_id: propertyX.id,
  tag_id: tag_supermarket.id
  )

#propertyY
TagProperty.create!(
  property_id: propertyY.id,
  tag_id: tag_woman.id
  )
TagProperty.create!(
  property_id: propertyY.id,
  tag_id: tag_cook.id
  )
TagProperty.create!(
  property_id: propertyY.id,
  tag_id: tag_cleaning_support.id
  )
TagProperty.create!(
  property_id: propertyY.id,
  tag_id: tag_no_event.id
  )
TagProperty.create!(
  property_id: propertyY.id,
  tag_id: tag_plumbing.id
  )
TagProperty.create!(
  property_id: propertyY.id,
  tag_id: tag_residential.id
  )

#propertyZ
TagProperty.create!(
  property_id: propertyZ.id,
  tag_id: tag_manwoman.id
  )
TagProperty.create!(
  property_id: propertyZ.id,
  tag_id: tag_supermarket.id
  )
TagProperty.create!(
  property_id: propertyZ.id,
  tag_id: tag_many_event.id
  )
TagProperty.create!(
  property_id: propertyZ.id,
  tag_id: tag_plumbing.id
  )
TagProperty.create!(
  property_id: propertyZ.id,
  tag_id: tag_wide.id
  )