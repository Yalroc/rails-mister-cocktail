class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates :cocktail_id, uniqueness: { scope: :ingredient_id }

  # A dose must have a description, a cocktail and an ingredient, and [cocktail, ingredient] couples should be unique.

end
