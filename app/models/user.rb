class User < ActiveRecord::Base
  validates :email, presence: { message: "未填寫email" }, uniqueness: { message: "此email已填寫過" }
end
