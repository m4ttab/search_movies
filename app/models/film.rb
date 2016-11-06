class Film < ApplicationRecord
	has_many :actors, dependent: :destroy
	has_many :directors, dependent: :destroy
	has_many :comments, as: :commentable
	belongs_to :user

	def to_s
		"#{title}"
	end

	before_save :capitalize_title

	def capitalize_title
		title.capitalize!
	end
end
