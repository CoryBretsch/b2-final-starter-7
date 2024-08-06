class Coupon < ApplicationRecord
  validates_presence_of :name,
                        :category,
                        :merchant_id,
                        :code,
                        :amount
  validates :amount, numericality: true
  # validates :amount, numericality: { in: [1..100] } 
  validates :active, inclusion: { in: [true, false] }
  validates :code, uniqueness: true

  belongs_to :merchant 
  has_many :invoices
  has_many :transactions, through: :invoices

  enum category: ["Percent Off", "Dollar Value Off"]

  def redeemed 
    transactions.where("result=1").count
  end
end