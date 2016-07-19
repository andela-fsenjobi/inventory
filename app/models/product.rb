class Product < ApplicationRecord
  def self.search(q)
    where("name LIKE ? or category LIKE ?", q, q)
  end
end
