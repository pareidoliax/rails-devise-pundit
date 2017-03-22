class User < ApplicationRecord
  enum role: [:user, :vip, :admin]

  # Associations
  has_many :labelables, dependent: :destroy
  has_many :labels, through: :labelables

  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
