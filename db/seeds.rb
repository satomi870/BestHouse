# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
fruits = ["apple", "orange", "melon", "banana", "pineapple"] #設備=[バストイレ別,家具付き]
for num in 1..50 do
  Character.create(name: fruits.sample, movie: movies.first)
end

House.create!(
    {house_name:'物件A', address:'東京都',rent:'40000円',move_in_condition:'女性',vacancy:'個室6'　　　}　　　　# 写真はアセクト?,特徴も入れる
    
    
    
    
    
    Tag.create([
    物件A{ name: '音楽全般' },
    物件B{ name: 'ファッション' },
    { name: 'プログラミング'},
    { name: '動画制作'},
    { name: '作詞作曲'},
    { name: 'コピーセッション'},
    { name: 'フリーセッション'},
    { name: '初心者セッション'},
    ])