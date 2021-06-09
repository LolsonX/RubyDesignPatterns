module FactoryMethod
  class Logistic
    def plan_delivery
      raise NotImplementedError, "Method Deliver is not implemented in class #{self.class.name}"
    end

    def create_transport
      raise NotImplementedError, "Method Deliver is not implemented in class #{self.class.name}"
    end
  end
end
