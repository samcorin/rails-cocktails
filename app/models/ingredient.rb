class Ingredient < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  # validates :description, presence: true
  has_many :doses
  # A dose must have a description, a cocktail and an ingredient, and [cocktail, ingredient] couples should be unique.

end
