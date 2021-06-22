module BuilderPattern
  class IglooBuilder < HouseBuilder
    def basement
      super("ice")
    end

    def interior
      super("ice")
    end

    def structure
      super("ice")
    end

    def roof
      super("ice")
    end

    def build
      basement
      interior
      structure
      roof
      super
    end
  end
end
