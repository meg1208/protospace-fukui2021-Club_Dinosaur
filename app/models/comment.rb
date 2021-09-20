class Comment < ApplicationRecord
  belongs_to :prototype
  belongs_to :user

  with_options presence: true do
    validates :content
  end
end
