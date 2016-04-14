class Destination < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader
end
