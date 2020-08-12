class Garden < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
