class Shop < ActiveRecord::Base
  has_many :invoices
end
