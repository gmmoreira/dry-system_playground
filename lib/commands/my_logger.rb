class MyLogger
  def call(data)
    Rails.logger.debug(data)
  end
end
