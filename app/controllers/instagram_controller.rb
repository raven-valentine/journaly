class InstagramController < ApplicationController

  # All methods require authentication (either by client ID or access token).
# To get your Instagram OAuth credentials, register an app at http://instagr.am/oauth/client/register/
  def show
  end # end of def show


  def link
    code = params['code']
    begin
      @response = RestClient.post 'https://api.instagram.com/oauth/access_token', { :code => code, :client_id => 'f3c6d901c4964e6097d14d208fa01a96', :client_secret => '9f2e75a6dde749cbadf4cddc5260ea63', :grant_type => 'authorization_code', :redirect_uri => 'http://localhost:3000/instagram/link'}

      rescue Exception => e
        puts e.message
    end
  end
end

#   def recent_instagram_media(user)
#     RestClient.get "https://api.instagram.com/v1/users/#{user.instagram_id}/media/recent/?access_token=#{user.instagramm_access_token}"

#   end

# end
# Step One: Direct your user to our authorization URL
# https://api.instagram.com/oauth/authorize/?client_id=CLIENT-ID&redirect_uri=REDIRECT-URI&response_type=code

# Step Two: Receive the redirect from Instagram
# http://your-redirect-uri?code=CODE

# Step Three: Request the access_token
