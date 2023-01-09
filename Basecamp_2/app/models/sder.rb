class Sder < ApplicationRecord
  belongs_to :project
  has_many :sends, dependent: :destroy
end
