require "HTTParty"

module Helpers
  def delorean(email)
    HTTParty.get("https://parodify.herokuapp.com//helpers?email=#{email}")
  end
end
