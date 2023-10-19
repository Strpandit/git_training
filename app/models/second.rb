class Second < ApplicationRecord
    has_many :firsts
    has_many :thirds, through: third
end
