class Sub < ApplicationRecord

    validates :title, presence_of: true
    validates :title, uniqueness: true
end
