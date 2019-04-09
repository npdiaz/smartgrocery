class Ingredient < ApplicationRecord
  # make sure name is compulsory (validation) and bought false as default value
  belongs_to :buyer, optional: true
  belongs_to :list

  # maybe add a validation method to require the buyer later on in the flow when actually buying something
end
