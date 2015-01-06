class User < ActiveRecord::Base
  enum role: [:comerce, :customer, :admin]
  after_initialize :set_default_role, :if => :new_record?
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :invoices
  has_many :shops , through: :invoices

   def set_default_role
    self.role ||= :customer
  end


end



