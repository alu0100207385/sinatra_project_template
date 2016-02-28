=begin
#Example
class User
	include DataMapper::Resource

	property :username, String
	property :email, String, 	:key => true
	property :password, BCryptHash
	#Relations:
	##belongs_to :recipe
	##has n, :users
end
=end