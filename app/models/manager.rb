class Manager < ApplicationRecord
  has_many :job
  validates :name, :title, presense: true
end
