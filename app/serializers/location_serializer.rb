class LocationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :longitude, :latitude, :national_dishes
  has_many :national_dishes
end
