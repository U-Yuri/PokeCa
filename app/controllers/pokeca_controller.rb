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

  def deck
    @deck = Deck.find(params[:id])
    @energys = Energy.all
    @items = Item.all
    @PokemonNoItems = PokemonNoItem.all
    @pokemons = Pokemon.all
    @supports = Support.all
    @stajiamus = Stajiamu.all
    render "deck"
  end

end


