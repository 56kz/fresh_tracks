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
#

class Post < ActiveRecord::Base
  validates :name, presence: true
  validates :url, presence: true
  validates :description, presence: true
  #pata que name y url, description, sean obligatorios
end
