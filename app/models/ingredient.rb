class Ingredient < ApplicationRecord
  belongs_to :buyer
  belongs_to :list
end
