require_relative 'config/env'
require_relative 'lib/route_helpers'

class App < Hanami::API
  include RouteHelpers

  get "/" do
    redirect "/phrases"
  end

  get "/phrases" do |id|
    phrases = Phrase.all
    phrases.map! &:attributes
    json phrases
  end

  get "/phrases/:id" do |id|
    phrase = Phrase.get params[:id]
    unless phrase
      next json( status: "error", error: "not_found", message: "Entry #{params[:id]} not found" )
    end
    json phrase.attributes
  end

  get "/seed" do
    10.times do |i|
      text = BetterLorem.p 1, true
      Phrase.new(text: text).save
    end
    msg = "seeded 10 entries"
    puts msg
    json(
      status: "success",
      message: msg,
    )
  end

end
