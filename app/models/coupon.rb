class Coupon < ApplicationRecord
  validates_presence_of :name,
                        :category,
                        :merchant_id,
                        :code,
                        :amount
  validates_numericality_of :amount
  validates :active, inclusion: {in: [true, false]}
  # validates :code, uniqueness: true

  belongs_to :merchant 
  belongs_to :invoice, optional: true

  enum category: ["Percent Off", "Dollar Value Off"]

  def self.active_coupons 
    where(active: true)
  end

  def self.deactivated_coupons 
    where(active: false)
  end
end