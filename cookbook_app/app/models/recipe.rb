class Recipe < ActiveRecord::Base
  belongs_to :category
  has_many :quantities
  has_many :ingredients, through: :quantities

  validates :category_id, numericality: {only_integer: true}

end
