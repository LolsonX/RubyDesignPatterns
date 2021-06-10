module BuilderPattern
  class HouseBuilder
    attr_reader :elements

    def initialize
      reset
    end

    def build_room(room:)
      elements[:walls] << room
    end

    def build_doors(material:)
      elements[:doors] << material
    end

    def build_window(material:)
      elements[:windows] << material
    end

    def build_roof(shape:)
      elements[:roof] = shape
    end

    def build_garage(presence:)
      elements[:garage] = presence
    end

    def reset
      @elements = {
        rooms: [],
        doors: [],
        windows: [],
        roof: "two-sided",
        garage: "one-car"
      }
    end

    def build
      House.new(**elements)
    end
  end
end
