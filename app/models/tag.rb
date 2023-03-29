class Tag < ApplicationRecord 

  validates :name, presence: true, uniqueness: true, length: {maximum: 20}
  has_and_belongs_to_many :tasks

end
