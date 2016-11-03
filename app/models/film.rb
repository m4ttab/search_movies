class Film < ApplicationRecord
	has_many :actors, dependent: :destroy
	has_many :directors, dependent: :destroy
	has_many :comments, as: :commentable
	

	def to_s
		"#{title}"
	end
end
