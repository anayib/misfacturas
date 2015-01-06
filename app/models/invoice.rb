class Invoice < ActiveRecord::Base
  belongs_to :user
  belongs_to :shop
  has_many :invoice_details
  has_many :products , through: :invoice_details
end
