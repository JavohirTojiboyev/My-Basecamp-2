class Project < ApplicationRecord
  belongs_to :user
  has_many :volts, dependent: :destroy
  has_many :works, dependent: :destroy
  has_many :sders, dependent: :destroy
end
