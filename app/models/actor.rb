class Actor < ApplicationRecord
  belongs_to :film

def to_S
	"#{name}"
end

end
