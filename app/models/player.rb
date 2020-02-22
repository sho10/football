class Player < ApplicationRecord
  belongs_to :team
  validates :position, prescence: true
  validates :height, prescence: true
  validates :weight, prescence: true
end
