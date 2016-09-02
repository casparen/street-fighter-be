class FightersController < ApplicationController
  def index
    data = HTTParty.get("https://street-fighter-e57a9.firebaseio.com/highscores.json")
    render json: data
  end

  def create
    puts params["time"]
    puts params["winnerHP"]
    puts params["name"]
    HTTParty.post("https://street-fighter-e57a9.firebaseio.com/highscores.json",
    {
      :body => {"name": params["name"], "winnerHP": params["winnerHP"], "time": params["time"]}.to_json
    })
  end
end
