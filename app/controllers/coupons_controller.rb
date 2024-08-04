class CouponsController < ApplicationController
  def index
    @merchant = Merchant.find(params[:merchant_id])
    @active_coupons = @merchant.active_coupons
    @inactive_coupons = @merchant.inactive_coupons
  end

  def show
    @coupon = Coupon.find(params[:id])
    @merchant = Merchant.find(params[:merchant_id])
  end

  def new 
    @merchant = Merchant.find(params[:merchant_id])
  end

  def create
    merchant = Merchant.find(params[:merchant_id])
    coupon = Coupon.new(coupon_params)
    if coupon.save 
      redirect_to merchant_coupons_path(merchant)
    else
      redirect_to new_merchant_coupon_path(merchant)
      flash[:alert] = "Error, code must be unique"
    end
  end

  private 
    def coupon_params
      params.permit(:name, :code, :category, :amount, :merchant_id)
    end
end