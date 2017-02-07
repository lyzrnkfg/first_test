module FirstTest
  class Drawing

    attr_accessor :config

    def initialize(config = Configuration.new)
      @config = config
    end

    def draw
      config.drawing_count.times.map { single_draw }
    end
    private
    def single_draw
      rand(0...60)
    end
  end

  class Configuration
    attr_accessor :drawing_count
    def initialize
      @drawing_count = 6
    end
  end
end
