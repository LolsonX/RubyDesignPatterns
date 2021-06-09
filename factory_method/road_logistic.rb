module FactoryMethod
  class RoadLogistic < Logistic
    def create_transport
      Truck.new
    end
  end
end
