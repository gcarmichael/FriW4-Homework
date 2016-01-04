class Quantity < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :recipe

  validates :amount, presence: true

end
