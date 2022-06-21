class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  scope :regular_users, -> { where(admin: false) }
  scope :admin_users, -> { where(admin: true) }
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable
  validates :first_name, :last_name, :phone_num, :email, :password, :password_confirmation, presence: true
  validates :admin, inclusion: [true, false]
  validates :admin, exclusion: [nil]

  validates_format_of :email, with: /\A[^@\s]+@[^@\s]+\z/
  has_many :offers, dependent: :destroy
end
