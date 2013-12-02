class Player < ActiveRecord::Base
  has_one :point_total
  has_many :green_cards
end
