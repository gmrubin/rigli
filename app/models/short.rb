class Short < ActiveRecord::Base
  attr_accessible :surl
  belongs_to :shortable, polymorphic: true
  before_create :generate_surl

  def increment_count
    self.count += 1
  end

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
