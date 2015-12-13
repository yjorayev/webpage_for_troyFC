class User < ActiveRecord::Base
	before_save { self.email = email.downcase }
	validates :firstname, presence: true, length: { minimum: 2, maximum: 20 }
	validates :lastname, presence: true, length: { minimum: 2, maximum: 20 }
	VALID_EMAIL_REGEX = /^([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})$/i
	validates :email, presence: true, length: { maximum: 35 },
	                                uniqueness: { case_sensitive: false },
	                                format: { with: VALID_EMAIL_REGEX, multiline:true}
	validates :nationality, presence: true
	validates :major, presence: true
	validates :classification, presence: true, inclusion: { in: %w(Freshman Sophomore Junior Senior), message: "Wrong class"}
	validates :position, presence: true, inclusion: {in: %w(Goalkeeper Defender Midfielder Attacker Coach)}
	validates :number, presence: true, numericality: true, inclusion: {in: 1..99, message: "Has to be between 1 and 100"}
	validates :dob, presence: true
	
	# validates :password, :confirmation => true
	# has_secure_password
	mount_uploader :picture, PictureUploader
	validate :picture_size
	default_scope -> { order(updated_at: :desc) }











	# def self.search(search)
	# 	if search
	# 		where(["firstname LIKE ? OR lastname LIKE ? OR email LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%"])
	# 	else
	# 		all
	# 	end
	# end

	private
		def picture_size
			if picture.size > 3.megabytes
				errors.add(:picture, "should be less than 3 MB")
			end
		end
end