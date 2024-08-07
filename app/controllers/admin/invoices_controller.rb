class Admin::InvoicesController < ApplicationController
  before_action :set_invoice, only: [:show, :edit, :update]
  def index
    @invoices = Invoice.all
  end

  def show
    if @invoice.coupon_id 
      @coupon = Coupon.find(@invoice.coupon_id)
      if @coupon.category == "Percent Off"
        @grand_total = @invoice.revenue_coupon_percent(@coupon.amount)
      else
        @grand_total = @invoice.revenue_coupon_dollar(@coupon.amount)
      end
    end
  end

  def edit
  end

  def update
    @invoice.update(invoice_params)
    flash.notice = 'Invoice Has Been Updated!'
    redirect_to admin_invoice_path(@invoice)
  end

  private
  def set_invoice
    @invoice = Invoice.find(params[:id])
  end

  def invoice_params
    params.require(:invoice).permit(:status)
  end
end