class Creator < ApplicationRecord
  has_and_belongs_to_many :users

  validates :channel, presence: true
  validates :contents, presence: true
end
