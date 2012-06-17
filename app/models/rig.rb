class Rig < ActiveRecord::Base
  attr_accessible :description, :name
  validates :name, :presence => true
  has_many :links
end
