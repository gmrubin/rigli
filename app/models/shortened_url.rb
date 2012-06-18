class ShortenedUrl < ActiveRecord::Base
  attr_accessible :shortened_object_id, :shortened_object_type, :surl
  belongs_to :shortened_object, polymorphic: true
end
