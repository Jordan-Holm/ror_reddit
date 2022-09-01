class Topic < ApplicationRecord
  belongs_to :sub
  has_many :comments, dependent: :destroy

  validates :title, :body, presence: true
end
