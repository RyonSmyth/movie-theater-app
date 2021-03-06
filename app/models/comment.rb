class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :movie
  validates :body, presence: true
  validates :user, presence: true
  validates :movie, presence: true
  validates :rating, numericality: { only_integer: true}
end
