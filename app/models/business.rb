class Business < ActiveRecord::Base
  belongs_to :user
  has_many :jobs
  validates_formatting_of :website, using: :url
end
