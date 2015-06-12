class Link < ActiveRecord::Base
#has_many :vote
has_many :comments
belongs_to :user

end
