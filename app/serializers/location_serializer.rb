class LocationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :longitude, :latitude
  has_many :national_dishes
end
