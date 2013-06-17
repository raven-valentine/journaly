class TwitterController < ApplicationController



  def show

  end

  def index

  end

  def logined
=begin
    oauth.set_callback_url("http://#{request.host}#{":#{request.port}" unless request.port == 80}/twitter/finalize")

    session[:request_token] = oauth.request_token.token
    session[:request_secret] = oauth.request_token.secret

    redirect_url = oauth.request_token.authorize_url
    redirect_url = "http://" + redirect_url unless redirect_url.match(/^http:\/\//)
    redirect_to redirect_url




  rt = oa.get_request_token
  rsecret = rt.secret
  rtoken = rt.token
=end
require 'oauth'
oa = OAuth::Consumer.new('M9ahgZ1Ywun4zBNFpMaKQ', 'QklD3jIr8dulF9zAAj5djTQOTmGivPHkIYkzPxlqsyo', :site => 'http://api.twitter.com', :request_endpoint => 'https://api.twitter.com', :sign_in => true)
  puts oa
  redirect_url = "http://api.twitter.com/oauth/authorize?oauth_token="
  redirect_to redirect_url
  end

  def finalise
    oauth.authorise_from_request(session[:request_token], session[:request_secret],params[:oauth_verifier])

    @profile = Twitter::Base.new(oauth).verify_credentials
    session[:request_token] = nil
    session[:request_secret] = nil
    session[:oauth_token] = oauth.access_token.token
    @auth_token = session[:auth_token] = oauth.access_token.token
    session[:auth_secret] = oauth.access_token.secret
  end

  private

end


