class Rig < ActiveRecord::Base
  attr_accessible :description, :name, :links_attributes
  has_one :short, as: :shortable
  belongs_to :user
  validates :name, :presence => true
  has_many :links

  accepts_nested_attributes_for :links
end
