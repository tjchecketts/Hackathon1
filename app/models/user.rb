class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :accounts
  has_many :posts
  has_many :comments
  
  # if this is broken, put bios?

  # has_one :bio

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

end
