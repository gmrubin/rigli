class Rig < ActiveRecord::Base
  attr_accessible :description, :name
  has_one :shortened_url, as: :shortened_object
  validates :name, :presence => true
  has_many :links
end
