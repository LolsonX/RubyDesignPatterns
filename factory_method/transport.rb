module FactoryMethod
  class Transport
    def deliver
      raise NotImplementedError, "Method Deliver is not implemented in class #{self.class.name}"
    end
  end
end
