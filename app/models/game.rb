class Game < ApplicationRecord
  has_many :panels
  has_many :users
end
