class Page < ApplicationRecord
    validates :title, presence: true
    validates :content, presence: true
    validates :permalink, presence:true
end