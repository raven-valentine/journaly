class TwitterController < ApplicationController

  require 'grackle'
      client = Grackle::Client.new(:auth=>{
        :type=>:oauth,
        :consumer_key=>'M9ahgZ1Ywun4zBNFpMaKQ', :consumer_secret=>'QklD3jIr8dulF9zAAj5djTQOTmGivPHkIYkzPxlqsyo',
        :token=>'802065139-bTaNE7l7WUMqw8ii9bZtNocyLJ5ZSRVSwDLxKgyM', :token_secret=>'802065139-bTaNE7l7WUMqw8ii9bZtNocyLJ5ZSRVSwDLxKgyM'
      })

  def show

  end

  def index
    t = Twitter.new
    t = t.getJsonData

  end

end


