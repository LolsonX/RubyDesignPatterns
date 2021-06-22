module FactoryMethod
  class Logistic
    extend ::Interface

    methods :plan_delivery, :create_transport
    # def plan_delivery
    #   raise NotImplementedError, "Method Deliver is not implemented in class #{self.class.name}"
    # end
    #
    # def create_transport
    #   raise NotImplementedError, "Method Deliver is not implemented in class #{self.class.name}"
    # end
  end
end
