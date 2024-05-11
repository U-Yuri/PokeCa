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

    redirect_to pokemon_path
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
    
    if !params[:pokemon_name].nil?
      @InputPokemon = @pokemons.where("name like ?", "%" + ActiveRecord::Base.sanitize_sql_like(params[:pokemon_name]) + "%")
    end

    @supports = Support.all
    @stajiamus = Stajiamu.all
    render "deck"
  end

  def deck_delete
    @deck = Deck.find(params[:id])
    @deck.destroy

    redirect_to pokemon_path
  end

end
