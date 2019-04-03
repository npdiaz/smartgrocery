class Ingredient < ApplicationRecord
  belongs_to :buyer
  belongs_to :recipe
end
