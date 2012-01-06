class TestController < ApplicationController
  def index
    @x = params[:src]
  end

end