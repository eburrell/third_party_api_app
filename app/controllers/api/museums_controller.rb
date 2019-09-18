class Api::MuseumsController < ApplicationController
  def index
    @museums = HTTP.headers("apikey" => "31146910-d990-11e9-953d-4be670d985de").get("https://api.harvardartmuseums.org/Person").parse

    render "index.json.jb"
  end
end

# https://github.com/harvardartmuseums/api-docs#access-to-the-api