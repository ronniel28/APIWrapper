class PagesController < ApplicationController
  def main
  end

  def start
    
  end

  def search
    client = Client.new
    begin
      @response = client.search_date(params[:date])
    rescue ApiExceptions::BadRequestError
      @error = true
    end
    render 'pages/start'
  end
end