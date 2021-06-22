require_relative "builder_pattern_test_helper"

describe "HouseBuilder" do
  let(:house_builder) { BuilderPattern::HouseBuilder.new }

  it "sets the roof" do
    expect(house_builder.roof("wood")
                        .build
                        .roof).to eq("wood")
  end

  it "sets the interior" do
    expect(house_builder.interior("wood")
                        .build
                        .interior).to eq("wood")
  end

  it "sets the basement" do
    expect(house_builder.basement("wood")
                        .build
                        .basement).to eq("wood")
  end

  it "sets the structure" do
    expect(house_builder.structure("wood")
                        .build
                        .structure).to eq("wood")
  end
end
