class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :password_digest, :id, :comments, :national_dishes
  has_many :national_dishes
  has_many :comments
end
