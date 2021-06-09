module FactoryMethod
  class SeaLogistic < Logistic
    def create_transport
      Ship.new
    end
  end
end
