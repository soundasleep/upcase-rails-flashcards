class Deck < ActiveRecord::Base
  # reverse of belongs_to, provides Deck.cards()
  has_many :cards
end