#user module calls has_secure_password which is a bcrypt thing don't know exactly what it does, but hanldes users
class User < ActiveRecord::Base
	has_secure_password
end
