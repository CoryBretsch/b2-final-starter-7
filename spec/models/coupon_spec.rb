require 'rails_helper'

RSpec.describe Coupon, type: :model do
  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :category }
    it { should validate_presence_of :merchant_id }
    it { should validate_presence_of :amount }
    
    it { should validate_numericality_of :amount }
    it { should validate_presence_of :code }
    it { should validate_inclusion_of(:active).in_array([true, false]) }
    # it { should validate_uniqueness_of :code }
  end

  describe "enum validations" do 
    it { should define_enum_for :category }
  end

  describe "relationships" do
    it { should belong_to :merchant }
  end

  describe "class methods" do 
    it "can return #active_coupons" do 
      @merchant1 = Merchant.create!(name: "Hair Care")
      @coupon1 = FactoryBot.create(:coupon, category: 0, active: true, merchant_id: @merchant1.id)
      @coupon2 = FactoryBot.create(:coupon, category: 1, active: true, merchant_id: @merchant1.id)
      @coupon3 = FactoryBot.create(:coupon)

      expect(Coupon.active_coupons).to eq([@coupon1, @coupon2])
    end

    it "can return #deactivated_coupons" do 
      @merchant1 = Merchant.create!(name: "Hair Care")
      @coupon1 = FactoryBot.create(:coupon, category: 0, active: true, merchant_id: @merchant1.id)
      @coupon2 = FactoryBot.create(:coupon, category: 1, active: true, merchant_id: @merchant1.id)
      @coupon3 = FactoryBot.create(:coupon)

      expect(Coupon.deactivated_coupons).to eq([@coupon3])
    end
  end
end
