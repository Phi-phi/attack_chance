class Game < ApplicationRecord
  had_many :panels
  has_many :users
end
