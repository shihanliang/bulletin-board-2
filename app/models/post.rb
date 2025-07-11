# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  body       :text
#  expires_on :date
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  board_id   :integer
#  user_id    :integer
#

class Post < ApplicationRecord
  # Validations
  validates :title, presence: true
  validates :body, presence: true
  validates :expires_on, presence: true
  validates :board_id, presence: true
  validates :user_id, presence: true

  # Associations
  belongs_to :board
  belongs_to :user
end
