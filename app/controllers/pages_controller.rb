class PagesController < ApplicationController
  def main
  end

  def start
    
  end

  def search
    client = Client.new
    @response = client.search_date(params[:date])
    render 'pages/start'
  end
end