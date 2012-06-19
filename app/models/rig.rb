class Rig < ActiveRecord::Base
  attr_accessible :description, :name, :links_attributes
  has_one :shortened_url, as: :shortened_object
  belongs_to :user
  validates :name, :presence => true
  has_many :links

  accepts_nested_attributes_for :links
end
