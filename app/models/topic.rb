class Topic < ApplicationRecord
  belongs_to :sub

  validates :title, :body, presence: true
end
