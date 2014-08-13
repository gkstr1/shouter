class User < ActiveRecord::Base
    validates :email, :username, presence: true, uniqueness: true
  validates :password_digest, presence: true
    has_many :shouts
end
