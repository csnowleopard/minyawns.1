class Student < ActiveRecord::Base
  belongs_to :user
  has_many :skills
  has_many :actionables
  validates_formatting_of :linkedin, using: :url
  validates_formatting_of :facebook, using: :url
end
