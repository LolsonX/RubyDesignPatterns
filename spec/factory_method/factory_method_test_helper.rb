require "rspec"
require "./interface"
require "./factory_method/factory_method"

class TransportSubClassNI < FactoryMethod::Transport
end

class TransportSubClass < FactoryMethod::Transport
  def deliver
    "Delivered"
  end
end

class LogisticSubClassNI < FactoryMethod::Logistic
end

class LogisticSubClass < FactoryMethod::Logistic
  def create_transport
    "Create new transport"
  end

  def plan_delivery
    "Delivery planned"
  end
end
