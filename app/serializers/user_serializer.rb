class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :password_digest, :id
  has_many :national_dishes
  has_many :comments
end
