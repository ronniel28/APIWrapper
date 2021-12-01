class Client
include HttpStatusCodes
include ApiExceptions

  def search_date(date)
    connection = Faraday.new(url: "https://api.nasa.gov")
    @response = connection.get("/planetary/apod?api_key=#{Rails.application.credentials.nasa[:api_key]}&date=#{date}")
    parsed_response = JSON.parse(@response.body)
    return parsed_response if @response.status == HTTP_OK_CODE
    raise error_class
  end

  def error_class
    case @response.status
    when HTTP_BAD_REQUEST_CODE
      BadRequestError
    when HTTP_FORBIDDEN_CODE
      ForbiddenError
    else
      APIError
    end
  end
end