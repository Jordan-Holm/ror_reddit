class Sub < ApplicationRecord
    has_many :topics, dependent: :destroy
    validates :title, presence: true
    validates :title, uniqueness: true
end
