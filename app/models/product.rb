class Product < ActiveRecord::Base
  attr_accessible :name, :price, :product_type
end
