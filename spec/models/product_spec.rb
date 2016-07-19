require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:model) { Product }
  before(:each) do
    Product.create(name: 'femi', category: 'people')
  end

  describe ".search" do
    it "sould return the items with matching the search" do
      product = Product.last

      expect(model.search('femi')).to eq [product]
    end
  end
end
