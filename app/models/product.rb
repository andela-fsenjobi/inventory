class Product < ApplicationRecord
  def self.search(q)
    q = "%#{q}%"
    where("name LIKE ? or category LIKE ?", q, q)
  end
end
