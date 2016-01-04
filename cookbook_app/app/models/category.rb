class Category < ActiveRecord::Base
  has_many :recipes

  validates :title, presence: true

end
