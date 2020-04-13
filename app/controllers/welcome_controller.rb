class WelcomeController < ApplicationController
  def index
    @keywords = Keyword.all
    
  end
end
