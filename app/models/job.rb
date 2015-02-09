class Job < ActiveRecord::Base
  belongs_to :business
  has_many :actionables
end
