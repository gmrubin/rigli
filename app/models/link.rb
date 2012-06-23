class Link < ActiveRecord::Base
  attr_accessible :count, :note, :short_url, :target
  has_one :short, as: :shortable
  belongs_to :rig
  validates :target, :presence => true
  before_create :normalize_target

  private
   def normalize_target
    self.target = "http://" + self.target unless URI(self.target).absolute?
    end
end
