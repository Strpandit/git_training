class First < ApplicationRecord
    has_many :seconds
    has_many :thirds, through: :thirds
end
