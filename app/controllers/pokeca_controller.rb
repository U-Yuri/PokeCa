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
  end

  def deck
    @deck = Deck.find(params[:id])
    @energys = Energy.all
    @items = Item.all
    @PokemonNoItems = PokemonNoItem.all

    @pokemons = Pokemon.all
    @supports = Support.all
    @stajiamus = Stajiamu.all

    @PokemonCardInDecks = @deck.card_in_decks.where.not(pokemon_id: nil)

    render "deck"
  end

end


