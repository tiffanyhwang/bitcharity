class AccountingController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => :processPayment

  def processPayment
    if params[:secret] == ENV['COINBASE_CALLBACK_SECRET']
      object = params[:order]
      respond_to do |format|
        format.json{render :json => object}
      end
    else
      render :status=>401, :json=>{:message=>"No."}
    end
  end
end
