class CouponsController < ApplicationController
  def index
    @active_coupons = Coupon.active_coupons
    @deactivated_coupons = Coupon.deactivated_coupons
  end

  def show
    @coupon = Coupon.find(params[:coupon_id])
  end
end