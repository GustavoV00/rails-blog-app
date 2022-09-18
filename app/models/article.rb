class Article < ApplicationRecord
  has_many :tag_articles
  has_many :tags, through: :tag_articles
  has_many :comments

  belongs_to :user
end
