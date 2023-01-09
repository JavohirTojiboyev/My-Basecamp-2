class Volt < ApplicationRecord
  belongs_to :project
  has_one_attached :vol
end
