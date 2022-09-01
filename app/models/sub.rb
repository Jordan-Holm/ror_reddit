class Sub < ApplicationRecord
    has_many :topics, dependent: :destroy
    validates :title, presence_of: true
    validates :title, uniqueness: true
end
