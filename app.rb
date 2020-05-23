require_relative 'config/env'
require_relative 'lib/hanami_utils'
require_relative 'lib/view_helpers'

class App < Hanami::API
  include HanamiUtils
  include ViewHelpers

  get "/" do
    redirect "/phrases"
  end

  get "/phrases" do |id|
    phrases = Phrase.all
    json phrases
  end

  get "/phrases/:id" do |id|
    phrases = Phrase.get params[:id]
    json phrases
  end

  # TODO: remove
  get "/seed" do
    redirect "/phrases"
  end

end
