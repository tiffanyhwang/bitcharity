class AccountingController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => :processPayment

  def processPayment
    if params[:secret] == ENV['COINBASE_CALLBACK_SECRET']
      object = params[:order]
      email = object["custom"]


      user = User.find_by_email(email)
      user.active = true
      user.amount = object["total_native"]["cents"]
      user.save
      
      if object["status"] == "completed"
        trans = Transaction.new( :order_id => object["id"],
                                 :transaction_id => object["transaction"]["id"],
                                 :email => email,
                                 :hash => object["transaction"]["hash"],
                                 :totalBTC => object["total_btc"]["cents"],
                                 :totalUSD => object["total_native"]["cents"])
        trans.charity = user.charity

        trans.save
      else

      end

      respond_to do |format|
        format.json{render :json => object}
      end
    else
      render :status=>401, :json=>{:message=>"No."}
    end
  end

  private
    # Using a private method to encapsulate the permissible parameters is just a good pattern
    # since you'll be able to reuse the same permit list between create and update. Also, you
    # can specialize this method with per-user checking of permissible attributes.
    def person_params
      params.require(:transaction).permit(:transaction_id, :hash, :email, :totalBTC, :totalUSD, :order_id, :charity_id)
    end
end
