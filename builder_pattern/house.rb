module BuilderPattern
  class House
    attr_reader :walls, :doors, :garage, :roof, :windows
    def initialize(walls:, doors:, garage:, roof:, windows:)
      @walls = walls
      @doors = doors
      @garage = garage
      @roof = roof
      @windows = windows
    end
  end
end
