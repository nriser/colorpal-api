class Palette < ApplicationRecord
  belongs_to :user

  validates :color1, presence: true
  validates :color2, presence: true
  validates :color3, presence: true
  validates :color4, presence: true
end
