# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(
  email: 'test1@gmail.com',
  # encrypted_password: '111111',
  password: '111111',
  name: 'yuri'
)


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

Skill.create!(
  name: 'ベノムインパクト',
  koka: '相手のバトルポケモンをどくにする。',
  attack_point: 190,
  symbol: ''
)

Skill.create!(
  name: 'シャドーフィアー',
  koka: '相手の手札を見る。',
  attack_point: 130,
  symbol: ''
)

Skill.create!(
  name: 'むじひなやいば',
  koka: '相手のバトルポケモンにダメカンがのっているなら、110ダメージ追加。',
  attack_point: 110,
  symbol: '+'
)

Skill.create!(
  name: 'ダイバクネツ',
  koka: '相手のバトルポケモンをやけどにする。',
  attack_point: 180,
  symbol: ''
)

Skill.create!(
  name: 'あついマグマ',
  koka: '相手のバトルポケモンをやけどにする。',
  attack_point: 70,
  symbol: ''
)

Skill.create!(
  name: 'グラウンドバーン',
  koka: 'おたがいの山札を上から1枚ずつトラッシュし、その中にあるエネルギーの枚数×140ダメージ追加。',
  attack_point: 140,
  symbol: '+'
)

Skill.create!(
  name: 'こがす',
  koka: '相手のバトルポケモンをやけどにする。',
  attack_point: nil,
  symbol: ''
)

Skill.create!(
  name: 'くろこげブレス',
  koka: '相手のバトルポケモンがやけどでないなら、このワザは失敗。',
  attack_point: 180,
  symbol: ''
)

Skill.create!(
  name: 'バーニングロンド',
  koka: 'おたがいのベンチポケモンの数×20ダメージ追加。',
  attack_point: 20,
  symbol: '+'
)

Skill.create!(
  name: 'のびのびそだつ',
  koka: 'コインを1回投げオモテなら、自分の山札から草エネルギーを5枚まで選び、自分のポケモンに好きなようにつける。そして山札を切る。',
  attack_point: nil,
  symbol: ''
)

Skill.create!(
  name: 'ブンブンヘッド',
  koka: '相手のポケモン1匹に、このポケモンについているエネルギーの数×30ダメージ。ベンチは弱点・抵抗力を計算しない。',
  attack_point: nil,
  symbol: ''
)

Skill.create!(
  name: 'ひざしがえし',
  koka: '相手のポケモン全員についている炎エネルギーの数×60ダメージ。',
  attack_point: 60,
  symbol: '×'
)

Skill.create!(
  name: 'メガドレイン',
  koka: 'このポケモンのHPを「30」回復する。',
  attack_point: 50,
  symbol: ''
)

Skill.create!(
  name: 'キャメルスピン',
  koka: 'のぞむなら、このポケモンについているエネルギーを1個選び、手札にもどす。その場合、100ダメージ追加。',
  attack_point: 130,
  symbol: '+'
)

Skill.create!(
  name: 'おちゃだし',
  koka: '自分のトラッシュから「基本草エネルギー」を1枚選び、相手に見せて、手札に加える。',
  attack_point: nil,
  symbol: ''
)

Skill.create!(
  name: 'ふいをつく',
  koka: 'コインを1回投げウラなら、このワザは失敗。',
  attack_point: 30,
  symbol: ''
)

Skill.create!(
  name: 'さいみんじゅつ',
  koka: '相手のバトルポケモンをねむりにする。',
  attack_point: nil,
  symbol: ''
)

Skill.create!(
  name: 'ジャンピングアッパー',
  koka: 'のぞむなら、120ダメージ追加。その場合、このポケモンと、ついているすべてのカードを、自分の山札にもどして切る。',
  attack_point: 120,
  symbol: '+'
)

Skill.create!(
  name: 'まねきよせる',
  koka: '自分のトラッシュからサポートを1枚選び、相手に見せて、手札に加える。',
  attack_point: nil,
  symbol: ''
)

Skill.create!(
  name: 'エナジープレス',
  koka: '相手のバトルポケモンについているエネルギーの数×20ダメージ。',
  attack_point: 20,
  symbol: '×'
)

Skill.create!(
  name: 'アクアリターン',
  koka: 'このポケモンと、ついているすべてのカードを、自分の山札にもどして切る。',
  attack_point: 120,
  symbol: ''
)

Skill.create!(
  name: 'つきさすがんこう',
  koka: '相手の手札を見て、その中からカードを1枚選び、トラッシュする。',
  attack_point: 120,
  symbol: ''
)

Skill.create!(
  name: 'ボルトストライク',
  koka: 'このポケモンについているエネルギーを、すべてトラッシュする。',
  attack_point: 250,
  symbol: ''
)

Skill.create!(
  name: 'ふうりょくチャージ',
  koka: '次の自分の番、このポケモンが使うワザの、相手のバトルポケモンへのダメージは「+120」される。',
  attack_point: 10,
  symbol: ''
)

Skill.create!(
  name: 'ストロングボルト',
  koka: 'このポケモンについているエネルギーを1個選び、トラッシュする。',
  attack_point: 100,
  symbol: ''
)

Skill.create!(
  name: 'ダイライデン',
  koka: '次の自分の番、このポケモンはワザが使えない。',
  attack_point: 220,
  symbol: ''
)

Skill.create!(
  name: 'みんなでほうでん',
  koka: '自分のベンチの雷ポケモンの数×20ダメージ追加。このワザのダメージは弱点を計算しない。',
  attack_point: 10,
  symbol: '+'
)

Skill.create!(
  name: 'じゃれつく',
  koka: 'コインを1回投げオモテなら、30ダメージ追加。',
  attack_point: 30,
  symbol: '+'
)

Skill.create!(
  name: 'ふんさいプレス',
  koka: 'このワザのダメージは、相手のバトルポケモンにかかっている効果を計算しない。',
  attack_point: 60,
  symbol: nil
)

Skill.create!(
  name: 'ストレンジハック',
  koka: '相手のバトルポケモンをこんらんにする。相手の場のポケモンにのっているダメカンを好きなだけ選び、相手の場のポケモンに好きなようにのせ替える。',
  attack_point: nil,
  symbol: nil
)

Skill.create!(
  name: 'サイコキネシス',
  koka: '相手のバトルポケモンについているエネルギーの数×50ダメージ追加。',
  attack_point: 10,
  symbol: '+'
)

Skill.create!(
  name: 'あやしいこくいん',
  koka: '相手のバトルポケモンをこんらんにする。',
  attack_point: 30,
  symbol: nil
)

Skill.create!(
  name: 'ビクトリーシンボル ',
  koka: 'このワザを使ったとき、自分のサイドの残り枚数が1枚なら、この対戦は自分の勝ちになる。',
  attack_point: nil,
  symbol: nil
)

Skill.create!(
  name: 'ダイドレイン',
  koka: 'このポケモンのHPを「30」回復する。',
  attack_point: 160,
  symbol: nil
)

# 特性のデータ
Tokusei.create!(
  name: 'はたらくまえば',
  koka: '自分の番に1回使える。自分の手札が5枚になるように、山札を引く。'
)

Tokusei.create!(
  name: 'へっちゃらがお',
  koka: 'このポケモンは、ベンチにいるかぎり、ワザのダメージを受けない。'
)

Tokusei.create!(
  name: 'はりきりキング',
  koka: '自分の場に「ニドクイン」がいるなら、このポケモンがワザを使うためのエネルギーは、すべてなくなる。'
)

Tokusei.create!(
  name: 'ドンのふところ',
  koka: 'このポケモンは、「ポケモンのどうぐ」を4枚までつけられる。(この特性がなくなったとき、自分は「ポケモンのどうぐ」を1枚になるようにトラッシュする。)'
)

Tokusei.create!(
  name: 'ザンゲツスター',
  koka: '自分の番に使える。相手のポケモン1匹に、ダメカンを4個のせる。対戦中、自分はVSTARパワーを1回しか使えない。'
)

Tokusei.create!(
  name: 'マグマゲイン',
  koka: '場に自分のスタジアムが出ているなら、自分の番に1回使える。このポケモンのHPを「50」回復する。'
)

Tokusei.create!(
  name: 'しゅんそく',
  koka: 'このポケモンがバトル場にいるなら、自分の番に1回使える。自分の山札を1枚引く。'
)

Tokusei.create!(
  name: 'スターパフューム',
  koka: '自分の番に使える。自分の山札から草ポケモンと草エネルギーを合計5枚まで選び、相手に見せて、手札に加える。そして山札を切る。対戦中、自分はVSTARパワーを1回しか使えない。'
)

Tokusei.create!(
  name: 'ルミナスサイン',
  koka: '自分の番に、このカードを手札からベンチに出したとき、1回使える。自分の山札からサポートを1枚選び、相手に見せて、手札に加える。そして山札を切る。'
)

Tokusei.create!(
  name: 'トランジスタ',
  koka: 'このポケモンがいるかぎり、自分の雷タイプのたねポケモンが使うワザの、相手のバトルポケモンへのダメージは「+30」される。'
)

Tokusei.create!(
  name: 'でんきぶくろ',
  koka: 'このポケモンはマヒにならない。'
)

Tokusei.create!(
  name: 'プロテクトDNA',
  koka: 'このポケモンがいるかぎり、自分のポケモン全員が、相手の「ポケモンVSTAR」から受けるワザのダメージは「-30」される。'
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
  user_id: '1'
)




# ポケモンのデータ
# 無色ポケモン
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

# 悪ポケモン
Pokemon.create!(
  name: 'ニドキング',
  sinka: '2進化',
  zokusei: '悪',
  hp: '170',
  special: nil,
  tokusei_id: '3',
  skill1_id: '5',
  skill2_id: nil
)

Pokemon.create!(
  name: 'ドンカラスV',
  sinka: 'たね',
  zokusei: '悪',
  hp: '200',
  special: 'V',
  tokusei_id: '4',
  skill1_id: '6',
  skill2_id: nil
)

Pokemon.create!(
  name: 'ヒスイ ダイケンキVSTAR',
  sinka: 'V進化',
  zokusei: '悪',
  hp: '270',
  special: 'VSTAR',
  tokusei_id: '5',
  skill1_id: '7',
  skill2_id: nil
)

# 炎ポケモン
Pokemon.create!(
  name: 'ヒードランVMAX',
  sinka: 'V進化',
  zokusei: '炎',
  hp: '330',
  special: 'VMAX',
  tokusei_id: '6',
  skill1_id: '8',
  skill2_id: nil
)

Pokemon.create!(
  name: 'マグカルゴex',
  sinka: '1進化',
  zokusei: '炎',
  hp: '270',
  special: 'ex',
  tokusei_id: nil,
  skill1_id: '9',
  skill2_id: '10'
)

Pokemon.create!(
  name: 'マルヤクデ',
  sinka: '1進化',
  zokusei: '炎',
  hp: '140',
  special: nil,
  tokusei_id: nil,
  skill1_id: '11',
  skill2_id: '12'
)

Pokemon.create!(
  name: 'エンテイV',
  sinka: 'たね',
  zokusei: '炎',
  hp: '230',
  special: 'V',
  tokusei_id: '7',
  skill1_id: '13',
  skill2_id: nil
)

# 草ポケモン
Pokemon.create!(
  name: 'アローラ ナッシーV',
  sinka: 'たね',
  zokusei: '草',
  hp: '240',
  special: 'V',
  tokusei_id: nil,
  skill1_id: '14',
  skill2_id: '15'
)

Pokemon.create!(
  name: 'キマワリ',
  sinka: '1進化',
  zokusei: '草',
  hp: '100',
  special: nil,
  tokusei_id: nil,
  skill1_id: '16',
  skill2_id: '17'
)

Pokemon.create!(
  name: 'ヒスイ ドレディアVSTAR',
  sinka: 'V進化',
  zokusei: '草',
  hp: '260',
  special: 'VSTAR',
  tokusei_id: '8',
  skill1_id: '18',
  skill2_id: nil
)

Pokemon.create!(
  name: 'チャデス',
  sinka: 'たね',
  zokusei: '草',
  hp: '40',
  special: nil,
  tokusei_id: nil,
  skill1_id: '19',
  skill2_id: '20'
)

# 水ポケモン
Pokemon.create!(
  name: 'ニョロボン',
  sinka: '2進化',
  zokusei: '水',
  hp: '170',
  special: nil,
  tokusei_id: nil,
  skill1_id: '21',
  skill2_id: '22'
)

Pokemon.create!(
  name: 'フィオネ',
  sinka: 'たね',
  zokusei: '水',
  hp: '70',
  special: nil,
  tokusei_id: nil,
  skill1_id: '23',
  skill2_id: '24'
)

Pokemon.create!(
  name: 'ネオラントV',
  sinka: 'たね',
  zokusei: '水',
  hp: '170',
  special: 'V',
  tokusei_id: '9',
  skill1_id: '25',
  skill2_id: nil
)

# 雷
Pokemon.create!(
  name: 'レントラーex',
  sinka: '2進化',
  zokusei: '雷',
  hp: '310',
  special: 'ex',
  tokusei_id: nil,
  skill1_id: '26',
  skill2_id: '27'
)

Pokemon.create!(
  name: 'タイカイデン',
  sinka: '1進化',
  zokusei: '雷',
  hp: '120',
  special: nil,
  tokusei_id: nil,
  skill1_id: '28',
  skill2_id: '29'
)

Pokemon.create!(
  name: 'レジエレキVMAX',
  sinka: 'V進化',
  zokusei: '雷',
  hp: '310',
  special: nil,
  tokusei_id: '10',
  skill1_id: '30',
  skill2_id: nil
)

Pokemon.create!(
  name: 'パチリス',
  sinka: 'たね',
  zokusei: '雷',
  hp: '70',
  special: nil,
  tokusei_id: '11',
  skill1_id: '31',
  skill2_id: nil
)

# 超
Pokemon.create!(
  name: 'ナカヌチャン',
  sinka: '1進化',
  zokusei: '超',
  hp: '90',
  special: nil,
  tokusei_id: nil,
  skill1_id: '32',
  skill2_id: '33'
)

Pokemon.create!(
  name: 'フーディン',
  sinka: '2進化',
  zokusei: '超',
  hp: '140',
  special: nil,
  tokusei_id: nil,
  skill1_id: '34',
  skill2_id: '35'
)

Pokemon.create!(
  name: 'アンノーンV',
  sinka: 'たね',
  zokusei: '超',
  hp: '180',
  special: 'V',
  tokusei_id: nil,
  skill1_id: '36',
  skill2_id: '37'
)

Pokemon.create!(
  name: 'デオキシスVMAX',
  sinka: 'V進化',
  zokusei: '超',
  hp: '330',
  special: 'VMAX',
  tokusei_id: '12',
  skill1_id: '38',
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

