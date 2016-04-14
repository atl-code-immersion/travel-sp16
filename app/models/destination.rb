class Destination < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader

	geocoded_by :address
  after_validation :geocode

  def address
  	"#{city}, #{country}"
  end
end
