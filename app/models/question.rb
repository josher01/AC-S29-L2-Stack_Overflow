class Question < ApplicationRecord
  belongs_to :user, counter_cache: :questions_count
  has_many :answers, dependent: :destroy
  has_many :question_tags
  has_many :tags, through: :question_tags
  has_many :question_upvotes, dependent: :destroy
  has_many :upvote_users, through: :question_upvotes, source: :user
  has_many :favorites, dependent: :destroy
  has_many :favorited_users, through: :favorites, source: :user

  def is_favorited?(user)
    self.favorited_users.include?(user)
  end

  def asker
    user = User.find(self.user_id)
  end


end
