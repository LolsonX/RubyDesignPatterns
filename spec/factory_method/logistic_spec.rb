require_relative "factory_method_test_helper"

describe "Logistic" do
  let(:not_implemented) { LogisticSubClassNI.new }
  let(:implemented) { LogisticSubClass.new }

  context "when class is subclass of Logistic, but not implementing methods" do
    it "raises NotImplementedError for plan_delivery method" do
      expect { not_implemented.plan_delivery }.to raise_error(NotImplementedError)
    end

    it "raises NotImplementedError for create_transport method" do
      expect { not_implemented.create_transport }.to raise_error(NotImplementedError)
    end
  end

  context "when class is subclass of Logistic and implements methods" do
    it "doesn't raise error for plan_delivery method" do
      expect { implemented.plan_delivery }.not_to raise_error
    end

    it "doesn't raise error for create_transport method" do
      expect { implemented.create_transport }.not_to raise_error
    end
  end
end
