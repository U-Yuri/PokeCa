# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Item.create(name: "ポケモンいれかえ" , koka: "自分のバトルポケモンをベンチポケモンと入れ替える。")
Item.create(name: "ポケモンキャッチャー" , koka: "コインを一回投げオモテなら、相手のベンチポケモンを１匹選び、バトルポケモンと入れ替える。")

PokemonNoItem.create(name: "ふうせん" , koka: "このカードをつけているポケモンは、にげるためのエネルギーが2個ぶん少なくなる。")
PokemonNoItem.create(name: "こだわりベルト" , koka: "このカードをつけているポケモンが使うワザの、相手のバトル場の「ポケモンV」へのダメージは「+30」される。")

Support.create!(
  name: 'クララ',
  koka: '自分のトラッシュからポケモンを２枚までと、基本エネルギーを２枚まで選び、相手に見せて、手札に加える。(ポケモンまたは基本エネルギーのどちらかだけでもよい。)'
)

Support.create!(
  name: 'ミモザ',
  koka: '自分のトラッシュからポケモンを５枚まで選び、相手に見せて、山札に戻して切る。その後、山札を３枚引く。'
)

#技のデータ
Skill.create!(
  name: 'エナジークラッシュ',
  koka: '相手のポケモン全員についているエネルギーの数×50ダメージ。',
  attack_point: 50,
  symbol: '×'
)

Skill.create!(
  name: 'パルスランチャー',
  koka: 'このポケモンにも30ダメージ。',
  attack_point: 220,
  symbol: ''
)

#エネルギーのデータ
Energy.create!(
  name: 'いちげきエネルギー',
  koka: 'このカードは「いちげき」のポケモンにしかつけられず、「いちげき」のポケモン以外についているなら、トラッシュする。このカードは、ポケモンについているかぎり、とうあく２つのタイプのエネルギー1個ぶんとしてはたらき、このカードをつけているポケモンが使うワザの、相手のバトルポケモンへのダメージは「+20」される。'
)

Energy.create!(
  name: '基本あくエネルギー',
  koka: ''
)
