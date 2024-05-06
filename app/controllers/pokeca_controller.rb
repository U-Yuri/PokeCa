class PokecaController < ApplicationController
  def index
    @decks = Deck.where(user_id: current_user.id)
    # @deck = Deck.new
    render "index"
    
  end

  def create
    Deck.create!(
      name: params[:name],
      user_id: current_user.id
    )

    redirect_to "/pokemon"
  end

  def CardInDeckCreate
    CardInDeck.create!(
      deck_id: params[:id],
      pokemon_id: params[:pokemon_id],
      item_id: params[:item_id],
      support_id: params[:support_id],
      pokemon_no_item_id: params[:pokemon_no_item_id],
      stajiamu_id: params[:stajiamu_id],
      energy_id: params[:energy_id]
    )

    redirect_to "/deck"
  end

  def deck
    @deck = Deck.find(params[:id])
    @energys = Energy.all
    @items = Item.all
    @PokemonNoItems = PokemonNoItem.all
    @pokemons = Pokemon.all
    @supports = Support.all
    @stajiamus = Stajiamu.all

    # deckに入っているそれぞれの種類のカードをインスタンス変数に取得
    @PokemonCardInDecks = @deck.card_in_decks.where.not(pokemon_id: nil)
    @ItemCardInDecks = @deck.card_in_decks.where.not(item_id: nil)
    @SupportCardInDecks = @deck.card_in_decks.where.not(support_id: nil)
    @PokemonNoItemCardInDecks = @deck.card_in_decks.where.not(pokemon_no_item_id: nil)
    @StajiamuCardInDecks = @deck.card_in_decks.where.not(stajiamu_id: nil)
    @EnergyCardInDecks = @deck.card_in_decks.where.not(energy_id: nil)

    render "deck"
  end

  # デッキの中のカードを削除
  def CardInDeckDelete
    @CardInDeckDelete = CardInDeck.find(params[:id])
    @CardInDeckDelete.destroy
    redirect_to "/deck"
  end

end


