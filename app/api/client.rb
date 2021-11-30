class Client
  def search_date(date)
    connection = Faraday.new(url: "https://api.nasa.gov")
    response = connection.get("/planetary/apod?api_key=#{Rails.application.credentials.nasa[:api_key]}&date=#{date}")
    JSON.parse(response.body)
  end
end