require 'openssl'
require 'rest_client'
require 'json'

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :coinbase

  def after_sign_in_path_for(resource)
    dashboard_path
  end

  API_KEY = 'pkzofrdQhdOfBZWa'
  API_SECRET = 'BbFr7OnD17ZyoKnVnJIrp9Y2VP8zogBd'

  def coinbase
    @coinbase = Coinbase::Client.new(ENV['COINBASE_API_KEY'], ENV['COINBASE_API_SECRET'])
  end

  def get_http(url, body=nil)
    nonce = (Time.now.to_f * 1e6).to_i
    message = nonce.to_s + url + body.to_json
    puts message
    signature = OpenSSL::HMAC.hexdigest(OpenSSL::Digest::Digest.new('sha256'), API_SECRET, message)
    headers = {"ACCESS_KEY" => API_KEY,
               "ACCESS_SIGNATURE" => signature,
               "ACCESS_NONCE" => nonce}
    begin
      if body.nil?
        RestClient.get(url, headers)
      else
        RestClient.post(url, body, headers)
      end
    rescue => e
      puts e
      e.response
    end
  end

end
