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

    redirect_to "/deck"
  end

  def deck
    @deck = Deck.find(params[:id])
    @energies = Energy.all
    @items = Item.all
    @PokemonNoItems = PokemonNoItem.all
    @pokemons = Pokemon.all
    @stajiamus = Stajiamu.all
    @supports = Support.all
    

    # if !params[:name].nil?
    if !params[:search_word].nil?

      @InputPokemons = Pokemon.joins('LEFT OUTER JOIN skills AS skill1 ON pokemons.skill1_id = skill1.id LEFT OUTER JOIN skills AS skill2 ON pokemons.skill2_id = skill2.id LEFT OUTER JOIN tokuseis ON pokemons.tokusei_id = tokuseis.id')
      .where("pokemons.name like? or skill1.name like? or skill1.koka like? or skill2.name like? or skill2.koka like? or tokuseis.name like? or tokuseis.koka like?",
      "%" + ActiveRecord::Base.sanitize_sql_like(params[:search_word]) + "%",
      "%" + ActiveRecord::Base.sanitize_sql_like(params[:search_word]) + "%",
      "%" + ActiveRecord::Base.sanitize_sql_like(params[:search_word]) + "%",
      "%" + ActiveRecord::Base.sanitize_sql_like(params[:search_word]) + "%",
      "%" + ActiveRecord::Base.sanitize_sql_like(params[:search_word]) + "%",
      "%" + ActiveRecord::Base.sanitize_sql_like(params[:search_word]) + "%",
      "%" + ActiveRecord::Base.sanitize_sql_like(params[:search_word]) + "%")

      @InputEnergies = @energies.where("name like ?", "%" + ActiveRecord::Base.sanitize_sql_like(params[:search_word]) + "%")
      @InputItems = @items.where("name like ?", "%" + ActiveRecord::Base.sanitize_sql_like(params[:search_word]) + "%")
      @InputPokemonNoItems = @PokemonNoItems.where("name like ?", "%" + ActiveRecord::Base.sanitize_sql_like(params[:search_word]) + "%")
      @InputStajiamus = @stajiamus.where("name like ?", "%" + ActiveRecord::Base.sanitize_sql_like(params[:search_word]) + "%")
      @InputSupports = @supports.where("name like ?", "%" + ActiveRecord::Base.sanitize_sql_like(params[:search_word]) + "%")
    end

    @supports = Support.all
    @stajiamus = Stajiamu.all

    @CardInDecks = CardInDeck.where(deck_id: @deck.id)

    render "deck"
  end


  # デッキの中のカードを削除
  def CardInDeckDelete
    @CardInDeckDelete = CardInDeck.find(params[:id])
    @CardInDeckDelete.destroy
    redirect_to "/deck"
  end
  
  def deck_delete
    @deck = Deck.find(params[:id])
    @deck.destroy

    redirect_to pokemon_path
  end

end
