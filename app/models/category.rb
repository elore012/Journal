class Category < ApplicationRecord
    has_many :tasks
    belongs_to :User
end
