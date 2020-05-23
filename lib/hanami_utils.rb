module HanamiUtils
  def body_class
    split = request.path.split("/")
    "#{split[1]} #{split[1]}_#{split[2]} #{split[1]}_#{split[3]}"
  end

  def js_void
    "javascript:void(0)"
  end
end
