class Photo < ActiveRecord::Base
	mount_uploader :filename, PhotoUploader
	
	belongs_to :user

	validates :filename, presence: true
	validates :caption, length: { minimum: 5 }
end
