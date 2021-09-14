class Prototype < ApplicationRecord
  belongs_to :user
  with_options presence: true do
    validates :title
    validates :catch_copy
    validates :concept
  end
end
