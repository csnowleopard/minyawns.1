class Student < ActiveRecord::Base
  belongs_to :user
  has_many :skills
end
