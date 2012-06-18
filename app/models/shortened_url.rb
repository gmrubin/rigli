class Shortened_url < ActiveRecord::Base
  attr_accessible :shortened_object_id, :type, :surl
  belongs_to :shortened_object, polymorphic: true
  before_create :generate_surl

  private
   def generate_surl
    self.surl = rand(36**6).to_s(36)
    if self.class.find_by_surl(surl)
      generate_surl
    else
      surl
    end
   end
end
