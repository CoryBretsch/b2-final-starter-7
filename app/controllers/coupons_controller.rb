class CouponsController < ApplicationController
  def index
    @merchant = Merchant.find(params[:merchant_id])
    @active_coupons = @merchant.active_coupons
    @deactivated_coupons = @merchant.deactivated_coupons
  end

  def show
    @coupon = Coupon.find(params[:coupon_id])
  end
end