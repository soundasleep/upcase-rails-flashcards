class CardsController < ApplicationController
  def show
    @card = Card.find(params[:id])
    @deck = @card.deck
  end
end