class DashboardController < ApplicationController
  def index
    #puts get_http('https://coinbase.com/api/v1/account/balance')
    coinbase_button
    @charities = Charity.all
  end

  def selectPrimary
    current_user.charity = Charity.find(params[:charity])
    if current_user.save
      flash[:notice] = "Your bitcoins this month will be donated to " + Charity.find(params[:charity]).name
    end
    redirect_to dashboard_path
  end

  def coinbase_button
    button_options = {:button => {
      "type" => "subscription",
      "repeat" => "monthly",
      "price_currency_iso" => "USD",
      "custom_secure" => true,
      "style" => "custom_large",
      "text" => "I'll Contribute",
      "include_email" => false,
      "success_url" => request.original_url,
      "auto_redirect" => true,
      "variable_price" => false,
      "choose_price" => true,
      "price1" => "1.00",
      "price2" => "2.00",
      "price3" => "5.00",
      "price3" => "10.00"
    }}
    @button = coinbase.create_button "Monthly donation", 1.00.to_money('USD'), "100% of your donation, minus bitcoin conversion fees will be converted to USD and donated to the bitcharity charity of your choice every month. A receipt of the every month's donation will be posted at the end of each month.", current_user.id, button_options
  end

end
