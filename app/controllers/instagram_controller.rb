class InstagramController < ApplicationController

  # All methods require authentication (either by client ID or access token).
# To get your Instagram OAuth credentials, register an app at http://instagr.am/oauth/client/register/
  def show
  end # end of def show


  def link
    puts "yes I am"
    code = params['code']
    begin
       #@response = RestClient.post 'https://api.instagram.com/oauth/access_token', { :code => code, :client_id => 'f3c6d901c4964e6097d14d208fa01a96', :client_secret => '9f2e75a6dde749cbadf4cddc5260ea63', :grant_type => 'authorization_code', :redirect_uri => 'http://localhost:3000/instagram/link'}

      @response = RestClient.get 'https://api.instagram.com/v1/users/24480272/media/recent/?access_token=24480272.f3c6d90.7eada26532fc4d8aa4ae408a904d5216'

      puts @response
      puts '*************************'
      data = JSON.parse(@response)

      puts data.inspect
      puts '*************************'
      puts '*************************'
      data1 = data.fetch("data")
      puts data1
      puts '*************************'
      puts '*************************'
      puts '*************************'
      @url = data1[0].fetch("images").fetch("low_resolution").fetch("url")
      puts data1

      @geolat = data1[0].fetch("location").fetch("latitude")
      @geolng = data1[0].fetch("location").fetch("longitude")
      @comment = data1[0].fetch("caption").fetch("text")
      puts data1

      @url1 = data1[1].fetch("images").fetch("low_resolution").fetch("url")
      @url2 = data1[2].fetch("images").fetch("low_resolution").fetch("url")
      @url3 = data1[3].fetch("images").fetch("low_resolution").fetch("url")
      @url4 = data1[4].fetch("images").fetch("low_resolution").fetch("url")

      puts '*************************'
      puts '*************************'
      puts '*************************'
      puts '*************************'


      rescue Exception => e
        puts 'boom'
        puts e.message
        puts e.inspect

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
