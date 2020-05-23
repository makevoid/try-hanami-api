# TODO: rename phrase to sentence

class Phrase
  include Virtus.model
  extend  RediJsonModelLib
  include RediJsonModelMixin

  attribute :id,      Integer
  attribute :text,    String

  # def ...
  #
  # end

end
