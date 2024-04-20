class PokecaController < ApplicationController
  def index
    render "index"
    @deck = Deck.new
  end

  def create
    Deck.create!(
      name: params[:name],
      user_id: current_user.id
    )

    p params
    
  end
end
