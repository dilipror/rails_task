class ChargesController < ApplicationController
  before_action :charge_obj, only: [:create]

  def index
    @charges = {
      :failed => Charge.unsuccessful.includes(:customer),
      :success => Charge.successful.includes(:customer),
      :disputed => Charge.disputed.includes(:customer)
    }
  end

  def new
    @charge = Charge.new
  end

  def create
    @charge = charge_obj.charges.build(charge_params)
    if @charge.save
      redirect_to charges_path, notice: 'Charge was successfully created.'
    else
      render action: 'new'
    end
  end

  private

  def charge_obj
    Customer.find(params[:charge][:customer_id]) rescue render action: 'new' and return
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def charge_params
    params.require(:charge).permit(:amount, :paid, :refunded, :customer_id, :amount_currency)
  end

end
