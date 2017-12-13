class User < ApplicationRecord
	validates_presence_of :name, :email

	email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { with: email_regex }
end
