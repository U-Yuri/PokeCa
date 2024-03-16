class PokecaController < ApplicationController
  def index
    render "index"
    @items = Item.all
    @pokemon_no_items = PokemonNoItem.all
  end
end
