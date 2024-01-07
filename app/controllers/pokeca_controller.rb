class PokecaController < ApplicationController
  def index
    @items = Item.all
  end
end
