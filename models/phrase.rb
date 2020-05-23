# TODO: rename phrase to sentence

class Phrase
  extend  RedisRejsonModelLib
  include RedisRejsonModelMixin
  include ShallowAttributes

  attribute :id,      Integer
  attribute :text,    String

  # def ...
  #
  # end

end
