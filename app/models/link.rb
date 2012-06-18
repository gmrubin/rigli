class Link < ActiveRecord::Base
  attr_accessible :count, :note, :short_url, :target
  has_one :shortened_url, as: :shortened_object
  belongs_to :rig
  validates :target, :presence => true
end
