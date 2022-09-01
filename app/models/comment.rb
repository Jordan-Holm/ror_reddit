class Comment < ApplicationRecord
  belongs_to :topic

  validates :body, :author, presence: true
end
