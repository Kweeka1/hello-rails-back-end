class GreetingsController < ApplicationController
  def index
    greeting = Greeting.find_by(id: rand(1..Greeting.count))

    response.headers['Access-Control-Allow-Origin'] = '*'
    render json: greeting
  end
end
