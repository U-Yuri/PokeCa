class PokecaController < ApplicationController
  def index
    @pokemon_no_items = PokemonNoItem.all
  end
end
