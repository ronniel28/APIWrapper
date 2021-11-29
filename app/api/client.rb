class Client
  def input_date(date)
    connection = Faraday.new(url: "https://api.nasa.gov/planetary/apod?api_key=#{Rails.application.credentials.nasa[:api_key]}")
    response = connection.get("&date=#{date}")
    JSON.parse(response.body)
  end
end