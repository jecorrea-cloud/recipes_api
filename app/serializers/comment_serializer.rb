class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comment, :like, :dislike
  has_one :user
  has_one :recipe
end
