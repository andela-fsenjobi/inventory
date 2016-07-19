require "rails_helper"

RSpec.describe ProductsController, type: :controller do
  let(:model) { Product }
  describe "#index" do
    it "returns an array of products" do
      get :index
      expect(assigns(:products)).to eq nil
    end
  end

  describe "#search" do
    it "returns an array of products that matches search query" do
      expect(model).to receive(:search).and_return([])
      get :search, q: 'femi'
      expect(assigns(:products)).to eq []
    end
  end
end
