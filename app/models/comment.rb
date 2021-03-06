class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  belongs_to :user

  validates_presence_of :body, message: "Comment can't be blank."
end
