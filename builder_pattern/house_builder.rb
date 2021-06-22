module BuilderPattern
  class HouseBuilder
    def initialize
      @house = House.new
    end

    def basement(basement)
      house.basement = basement
      self
    end

    def structure(structure)
      house.structure = structure
      self
    end

    def interior(interior)
      house.interior = interior
      self
    end

    def roof(roof)
      house.roof = roof
      self
    end

    def build
      house
    end

    private

    attr_reader :house
  end
end
