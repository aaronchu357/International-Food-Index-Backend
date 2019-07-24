class NationalDishSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :image, :comments
  belongs_to :location
  has_many :ingredients
  has_many :users
  has_many :recipes
  has_many :comments
end
