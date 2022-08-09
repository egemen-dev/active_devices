class Device < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :email, uniqueness: false
  validates :unique_id, presence: true, uniqueness: true
  validates :name, presence: true
  devise :database_authenticatable, :authentication_keys => [:unique_id]
  devise :registerable, :recoverable, :rememberable
  belongs_to :user
end
