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

end
