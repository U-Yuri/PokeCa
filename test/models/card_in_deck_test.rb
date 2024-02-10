require "test_helper"

class CardInDeckTest < ActiveSupport::TestCase
  test "デッキに入っているカード内、サポートのテスト" do
    deck = Deck.create!(
      name: 'ゲンガーデッキ',
    )

    support = Support.create!(
      name: 'ミモザ',
      koka: '自分のトラッシュからポケモンを５枚まで選び、相手に見せて、山札に戻して切る。その後、山札を３枚引く。'
    )

    card_in_deck = CardInDeck.create!(
      deck_id: deck.id,
      pokemon_id: nil,
      item_id: nil,
      support_id: support.id,
      pokemon_no_item_id: nil,
      stajiamu_id: nil,
      energy_id: nil
    )

    assert_equal card_in_deck.support.name, 'ミモザ'
  end

  test "デッキに入っているカード内、スタジアムのテスト" do
    deck = Deck.create!(
      name: 'ゲンガーデッキ',
    )

    stajiamu = Stajiamu.create!(
      name: '頂きの雪道',
      koka: 'おたがいの場の「ルールを持つポケモン」の特性は、すべてなくなる。'
    )

    card_in_deck = CardInDeck.create!(
      deck_id: deck.id,
      pokemon_id: nil,
      item_id: nil,
      support_id: nil,
      pokemon_no_item_id: nil,
      stajiamu_id: stajiamu.id,
      energy_id: nil
    )

    assert_equal card_in_deck.stajiamu.name, '頂きの雪道'
  end

end
