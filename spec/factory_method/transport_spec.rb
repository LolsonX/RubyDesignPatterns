require_relative "factory_method_test_helper"

describe "Transport" do
  let(:not_implemented) { TransportSubClassNI.new }
  let(:implemented) { TransportSubClass.new }

  context "when class is subclass of Transport, but not implementing methods" do
    it "raises NotImplementedError for deliver method" do
      expect { not_implemented.deliver }.to raise_error(NotImplementedError)
    end
  end

  context "when class is subclass of Transport and implements methods" do
    it "doesn't raise error for deliver method" do
      expect { implemented.deliver }.not_to raise_error
    end
  end
end
