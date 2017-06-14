class Job < ApplicationRecord
  belongs_to :manager
  validates :title, :description, presence: true
  validates :salary, numericality: {greater_than_or_equal_to: 0}
end
