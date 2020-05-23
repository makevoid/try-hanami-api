require_relative 'config/env'
require_relative 'lib/hanami_utils'
require_relative 'lib/view_helpers'

class App < Hanami::API
  include HanamiUtils
  include ViewHelpers

  get "/" do
    user = { id: 1, name: "test" }
    json user
  end
end
