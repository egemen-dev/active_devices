class Device < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :email, uniqueness: false
  validates :unique_id, presence: true, uniqueness: true
  validates :name, presence: true
  devise :database_authenticatable, :authentication_keys => [:unique_id]
  devise :registerable, :recoverable, :rememberable
  belongs_to :user

  after_create_commit do
    broadcast_prepend_later_to("dash_#{self.user_id}", target: "devices", partial: "devices/device", locals: { device: self })
  end

  after_update_commit do
    broadcast_replace_to("dash_#{self.user_id}", target: "device_#{self.id}", partial: "devices/device", locals: { device: self })
  end

  after_destroy_commit do
    broadcast_remove_to("dash_#{self.user_id}", target: "device_#{self.id}", partial: "devices/device", locals: { device: self })
  end
end
