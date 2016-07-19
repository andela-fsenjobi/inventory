require "rails_helper"

RSpec.describe ProductsController, type: :controller do
  describe "#index" do
    it "returns an array of products" do
      get "/"
      expect(assigns(:product)).to eq []
    end
  end
end
