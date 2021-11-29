class Client
  def input_date(date)
    connection = Faraday.new(url: "https://api.nasa.gov/planetary/apod?api_key=M3GuMI71McToxD2sDJodsKmLmCyZzlef4ciWnE2W")
    response = connection.get("&date=#{date}")
    JSON.parse(response.body)
  end
end