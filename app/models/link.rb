class Link < ActiveRecord::Base
  attr_accessible :count, :note, :short_url, :target
  belongs_to :rig
end
