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

# 2023/01/28ポケモンのテーブル作成に伴い追加＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
Skill.create!(
  name: 'ひっさつまえば',
  koka: 'コインを1回投げウラなら、このワザは失敗。',
  attack_point: 30,
  symbol: nil
)

Skill.create!(
  name: 'テールスマッシュ',
  koka: 'このポケモンは、ベンチにいるかぎり、ワザのダメージを受けない。',
  attack_point: 100,
  symbol: nil
)
# ＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

# 特性のデータ
Tokusei.create!(
  name: 'はたらくまえば',
  koka: '自分の番に1回使える。自分の手札が5枚になるように、山札を引く。'
)

Tokusei.create!(
  name: 'へっちゃらがお',
  koka: 'このポケモンは、ベンチにいるかぎり、ワザのダメージを受けない。'
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

# スタジアムのデータ
Stajiamu.create!(
  name: 'ビーチコート',
  koka: 'おたがいのたねポケモン全員の逃げるためのエネルギーは、それぞれ１個ぶん少なくなる。'
)

Stajiamu.create!(
  name: '頂きの雪道',
  koka: 'おたがいの場の「ルールを持つポケモン」の特性は、すべてなくなる。'
)

# デッキ名のデータ
Deck.create!(
  name: 'ゲンガーデッキ',
)

# ポケモンのデータ
Pokemon.create!(
  name: 'ビッパ',
  sinka: 'たね',
  zokusei: '無色',
  hp: '60',
  special: nil,
  tokusei_id: '2',
  skill1_id: '3',
  skill2_id: nil
)

Pokemon.create!(
  name: 'ビーダル',
  sinka: '1進化',
  zokusei: '無色',
  hp: '120',
  special: nil,
  tokusei_id: '1',
  skill1_id: '4',
  skill2_id: nil
)

#デッキに入っているカードのデータ
CardInDeck.create!(
  deck_id: '1',
  pokemon_id: '1',
  item_id: nil,
  support_id: nil,
  pokemon_no_item_id: nil,
  stajiamu_id: nil,
  energy_id: nil
)

CardInDeck.create!(
  deck_id: '1',
  pokemon_id: nil,
  item_id: '2',
  support_id: nil,
  pokemon_no_item_id: nil,
  stajiamu_id: nil,
  energy_id: nil
)

CardInDeck.create!(
  deck_id: '1',
  pokemon_id: nil,
  item_id: nil,
  support_id: '1',
  pokemon_no_item_id: nil,
  stajiamu_id: nil,
  energy_id: nil
)

CardInDeck.create!(
  deck_id: '1',
  pokemon_id: nil,
  item_id: nil,
  support_id: nil,
  pokemon_no_item_id: '1',
  stajiamu_id: nil,
  energy_id: nil
)

CardInDeck.create!(
  deck_id: '1',
  pokemon_id: nil,
  item_id: nil,
  support_id: nil,
  pokemon_no_item_id: nil,
  stajiamu_id: '1',
  energy_id: nil
)

CardInDeck.create!(
  deck_id: '1',
  pokemon_id: nil,
  item_id: nil,
  support_id: nil,
  pokemon_no_item_id: nil,
  stajiamu_id: nil,
  energy_id: '1'
)
