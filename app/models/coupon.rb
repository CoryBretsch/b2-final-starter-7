class Coupon < ApplicationRecord
  validates_presence_of :name,
                        :code,
                        :category,
                        :status,
                        :merchant_id
  
  belongs_to :merchant 
  belongs_to :invoice, optional: true

  enum category: ["Percent Off", "Dollar Value Off"]
  enum status: ["Deactivated", "Activated"]
end