class Coupon < ApplicationRecord
  validates_presence_of :name,
                        :category,
                        :merchant_id,
                        :code
  validates :active, inclusion: {in: [true, false]}
  # validates :code, uniqueness: true

  
  belongs_to :merchant 
  belongs_to :invoice, optional: true

  enum category: ["Percent Off", "Dollar Value Off"]
end