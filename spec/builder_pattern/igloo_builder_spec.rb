require_relative "builder_pattern_test_helper"

describe "iglooBuilder" do
  let(:igloo_builder) { BuilderPattern::IglooBuilder.new }

  it "sets the roof" do
    expect(igloo_builder.build
                        .roof).to eq("ice")
  end

  it "sets the interior" do
    expect(igloo_builder.build
                        .interior).to eq("ice")
  end

  it "sets the basement" do
    expect(igloo_builder.build
                        .basement).to eq("ice")
  end

  it "sets the structure" do
    expect(igloo_builder.build
                        .structure).to eq("ice")
  end
end
