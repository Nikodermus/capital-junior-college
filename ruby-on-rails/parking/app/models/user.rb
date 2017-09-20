class User < ApplicationRecord
	has_secure_password
#validates :password, presence: true, length: {in: 8..16}

	# def create
	# 	unless has_secure_password?
	# 		flash[:error] = self.errors.last.to_s
	# 		redirect_to new_session_path
	# 	end

	# end

	# def authenticate(password)
	# 	puts self[:password_digest], password
	# 	self[:password_digest] == password ? true : false
			
	# end

	# private

	# def has_secure_password?
	# 	@uppercase = false
	# 	@lowercase = false
	# 	@number = false
	# 	@special = false
	# 	@space = true
	# 	@validate_password = [@uppercase, @lowercase, @number, @special, @space]
	# 	session_params[:password_digest]
	# 		.split('')
	# 		.each do |char| 
	# 			@uppercase = true if char =~ /[A-Z]/
	# 			@lowercase = true if char =~ /[a-z]/
	# 			@number = true if char =~ /[0-9]/
	# 			@special = true if char =~ /\W/
	# 			@space = false if char =~ / /
	# 		end
	# 		.join
	# 	if @validate_password.include?(false)
	# 		self.errors.add(:password_digest, "Weak password, try again")
	# 	end
	# end


	private

	# la vuelta esa de los strongs parameters
	def session_params
		params.require(:session).permit(:email, :password)
	end

end
