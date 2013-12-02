class Board < ActiveRecord::Base
  has_many :green_cards, through: :players
  has_one :red_card
end
