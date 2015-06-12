Class User < ActiveRecord::Base
# has_one :username
has_one :email
has_one :password
has_many :links
has_many :comments


end
