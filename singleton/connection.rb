module Singleton
  class Registry
    @registry = new

    private_class_method :new

    def self.instance
      @registry
    end

    attr_reader :registry

    def add_record(k, v)
      registry[k] = v
    end

    def get_record(k)
      registry[k]
    end

    def initialize
      @registry = {}
    end
  end
end
