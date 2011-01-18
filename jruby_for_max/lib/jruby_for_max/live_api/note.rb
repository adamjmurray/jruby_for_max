module JRubyForMax::LiveAPI

  class Note
    attr_accessor :pitch, :start, :duration, :velocity, :deactivated

    def initialize(*live_api_data)
      @pitch, @start, @duration, @velocity, @deactivated = *live_api_data
    end

    def active?
      @deactivated == 0
    end

    def length
      @duration
    end

    def to_message
      [@pitch, @start, @duration, @velocity, @deactivated]
    end
  end
end

