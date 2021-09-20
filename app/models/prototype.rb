class Prototype < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :title
    validates :catch_copy
    validates :concept
    validates :image
  end

  def self.search(user_id)
    Prototype.where(user_id: user_id).includes(:user)
  end
end
