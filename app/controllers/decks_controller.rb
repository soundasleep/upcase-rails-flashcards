class DecksController < ApplicationController
  # this is an 'action' rather than a 'method' because it is
  # accessible through a route
  def index
    @decks = Deck.all
  end

  def show
    @deck = Deck.find(params[:id])
    @cards = @deck.cards
  end

  def new
    @deck = Deck.new
  end

  def create
    @deck = Deck.new(deck_params)
    @deck.save
    # redirect_to deck_path(@deck) ===
    redirect_to @deck
  end

  def edit
    @deck = Deck.find(params[:id])
  end

  def update
    @deck = Deck.find(params[:id])
    @deck.update_attributes(deck_params)
    @deck.save
    # redirect_to deck_path(@deck) ===
    redirect_to @deck
  end

  def destroy
    @deck = Deck.find(params[:id])
    @deck.destroy
    redirect_to decks_path
  end

  private
  def deck_params
    params.require(:deck).permit(:name)
  end
end