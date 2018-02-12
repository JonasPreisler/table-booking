class CallbackController < ApplicationController
  protect_from_forgery with: :exception

  def index
    if params["hub.verify_token"] == "asd"
      render text: params["hub.challenge"]
    end
  end

  def received_data
    therequest = request.body.read
    data = JSON.parse(therequest)
    enteries = data["entry"]
    enteries.each do |entry|
      entry["messaging"].each do |messaging|
        sender = messaging ["sender"]["id"]
        text = messaging["message"]["text"]
        myjson = {"recipient": {"id": "#{sender}"}, "message": {"text": "text"}}
        puts HTTP.post(url, json: myjson)
      end
    end
    render "received_data"
  end

  def sent_data
    therequest = request.body.read
    data = JSON.parse(therequest)
    enteries = data["entry"]
    enteries.each do |entry|
      entry["messaging"].each do |messaging|
        sender = messaging ["sender"]["id"]
        text = messaging["message"]["text"]
        myjson = {"recipient": {"id": "#{sender}"}, "message": {"text": "text"}}
        puts HTTP.post(url, json: myjson)
      end
    end
    render "received_data"
  end

  def url
    "https://graph.facebook.com/v2.6/me/messages?access_token=EAACJIOqpB24BAMOhuekkbZB6aI6RYCxnQDftExY40kClUZC5RHEzZCnkqD4msEzWFmmaT1NarymCgFjD1kDqMIiOZAo2b3cjqc8FU3jAq73IZBXjAAeLtaPQb9FDBssPP560XawCTZA1xAFCULeBAywjEj3lBH4VlEU0vPgQ1rOFYGEF6QYRqw"
  end
end
