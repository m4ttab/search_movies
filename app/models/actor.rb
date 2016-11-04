class Actor < ApplicationRecord
  belongs_to :film
  has_many :comments, as: :commentable
  belongs_to :user


def to_S
	"#{name}"
end

end
