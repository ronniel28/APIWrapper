module ApiExceptions
  class APIExceptionError < RuntimeError; end

  class BadRequestError < APIExceptionError; end
  class ForbiddenError < APIExceptionError; end
  class APIError < APIExceptionError; end
end
