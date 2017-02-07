require "first_test/version"
require "first_test/drawing"
begin
  require "pry"
  require "byebug"
rescue LoadError

end
module FirstTest
  # Your code goes here...
  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
