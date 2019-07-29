class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :rating, :id, :user
  belongs_to :user
  belongs_to :national_dish
end
