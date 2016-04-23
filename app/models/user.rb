class User < ActiveRecord::Base
  has_many :projects
  has_many :fundings
  has_secure_password
end
