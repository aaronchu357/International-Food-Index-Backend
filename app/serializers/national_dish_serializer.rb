class NationalDishSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :image
  belongs_to :location
  has_many :ingredients
  has_many :users
end
