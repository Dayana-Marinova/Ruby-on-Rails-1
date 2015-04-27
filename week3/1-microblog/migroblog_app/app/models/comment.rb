class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  validate :article, presence: true
  validate :user, presence: true
  validate :body, length: { minimum: 20 }

  attr_readonly :article_id, :user_id
end