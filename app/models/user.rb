class User < ActiveRecord::Base
  validates :email, presence: { message: "" }, uniqueness: { message: "" }
end
