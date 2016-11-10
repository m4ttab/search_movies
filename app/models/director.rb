class Director < ApplicationRecord
  belongs_to :film
  has_many :comments, as: :commentable
  belongs_to :user

  def to_s
  	"#{name}"
  end
end
  