class Link < ActiveRecord::Base
  attr_accessible :count, :note, :short_url, :target
  has_one :short, as: :shortable
  belongs_to :rig
  validates :target, :presence => true
end
