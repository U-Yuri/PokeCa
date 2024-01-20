class PokecaController < ApplicationController
  def index
    @items = Item.all
    @pokemon_no_items = PokemonNoItem.all
  end
end
