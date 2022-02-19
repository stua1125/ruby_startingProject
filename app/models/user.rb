class User < ApplicationRecord
  has_and_belongs_to_many :creators

  validates :name, presence: true
  validates :age, presence: true
end

