require "test_helper"

class PokemonTest < ActiveSupport::TestCase
  test "ポケモンに属するtokuseiテーブルのリレーションのテスト" do
    tokusei = Tokusei.create!(
      name: 'へっちゃらがお',
      koka: 'このポケモンは、ベンチにいるかぎり、ワザのダメージを受けない。'
    )

    skill = Skill.create!(
      name: 'ひっさつまえば',
      koka: 'コインを1回投げウラなら、このワザは失敗。',
      attack_point: 30,
      symbol: nil
      )

    pokemon = Pokemon.create!(
      name: 'ビッパ',
      sinka: 'たね',
      zokusei: '無色',
      hp: '60',
      special: nil,
      tokusei_id: tokusei.id,
      skill1_id: skill.id,
      skill2_id: nil
    )

    assert_equal pokemon.tokusei.name, 'へっちゃらがお'

  end

  test "ポケモンに属するskillテーブルのリレーションのテスト" do
    tokusei = Tokusei.create!(
      name: 'へっちゃらがお',
      koka: 'このポケモンは、ベンチにいるかぎり、ワザのダメージを受けない。'
    )

    skill = Skill.create!(
      name: 'ひっさつまえば',
      koka: 'コインを1回投げウラなら、このワザは失敗。',
      attack_point: 30,
      symbol: nil
    )
    
    
    pokemon = Pokemon.create!(
      name: 'ビッパ',
      sinka: 'たね',
      zokusei: '無色',
      hp: '60',
      special: nil,
      tokusei_id: tokusei.id,
      skill1_id: skill.id,
      skill2_id: nil
    )
    
    assert_equal pokemon.skill1.name, 'ひっさつまえば'
  end
end

