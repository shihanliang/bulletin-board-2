# == Schema Information
#
# Table name: boards
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Board < ApplicationRecord
  # Validations
  validates :name, presence: true, uniqueness: true
  validates :user_id, presence: true

  # Associations
  belongs_to :user
  has_many :posts, dependent: :destroy
end
