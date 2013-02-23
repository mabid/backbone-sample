class FrontendController < ApplicationController

  def index
    @products = Product.all
  end

end
