class Dose < ApplicationRecord
  belongs_to :cocktail
  has_many :ingredients, through: :cocktails
end
