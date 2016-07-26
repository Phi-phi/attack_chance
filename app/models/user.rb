class User < ApplicationRecord
  belongs_to :game

  as_enum :status, {
    normal: 0,
    stop:   1
  }
end
