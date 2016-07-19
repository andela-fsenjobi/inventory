require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:model) { Product }
  before(:each) do
    Product.create(name: 'femi', category: 'people')
  end

  describe ".search" do
    context "when record with matching name exists" do
      it "should return the items with matching the search" do
        product = Product.last

        expect(model.search('femi')).to eq [product]
      end
    end

    context "when matching record does not exists" do
      it "should return an empty result" do
        expect(model.search('ewjbnwepo')).to eq []
      end
    end

    context "when record with matching category exists" do
      it "should return an empty result" do
        product = Product.last

        expect(model.search('peo')).to eq [product]
      end
    end
  end
end
