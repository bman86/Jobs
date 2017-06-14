class Job < ApplicationRecord
  belongs_to :manager
  validates :title, :description, :salary, presense: true
  validates :salary, numericality: true
  validates :salary, greater_than_or_equal_to: 0
end
