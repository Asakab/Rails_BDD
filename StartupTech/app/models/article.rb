class Article < ApplicationRecord
	belongs_to :user, required: false
	has_many :categories
end
