class Actor < ApplicationRecord
  belongs_to :film
  has_many :comments, as: :commentable



def to_S
	"#{name}"
end

end
