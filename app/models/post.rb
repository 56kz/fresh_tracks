# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  name        :string
#  url         :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :votes

  validates :name, presence: true
  validates :url, presence: true
  validates :description, presence: true

  def voted_by?(user)    
    votes.exists?(user: user)
  end
end
