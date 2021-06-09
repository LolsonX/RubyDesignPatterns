require_relative "factory_method_test_helper"

describe "FactoryMethod" do
  let(:truck_factory) { FactoryMethod::RoadLogistic.new }
  let(:ship_factory) { FactoryMethod::SeaLogistic.new }

  context "when condition" do
    it "is Logistic subclass" do
      expect(truck_factory.is_a?(FactoryMethod::Logistic)).to be(true)
      expect(ship_factory.is_a?(FactoryMethod::Logistic)).to be(true)
    end

    it "produces Ship class object which is Transport subclass" do
      expect(ship_factory.create_transport.is_a?(FactoryMethod::Transport)).to be(true)
      expect(ship_factory.create_transport.is_a?(FactoryMethod::Ship)).to be(true)
    end

    it "produces Truck class object which is Transport subclass" do
      expect(truck_factory.create_transport.is_a?(FactoryMethod::Transport)).to be(true)
      expect(truck_factory.create_transport.is_a?(FactoryMethod::Truck)).to be(true)
    end
  end
end
