class Film < ApplicationRecord
	has_many :actors, dependent: :destroy
	has_many :directors, dependent: :destroy

	def to_s
		"#{title}"
	end
end
