class StoreController < ApplicationController
  def index
    @page_title = 'Main Page Title'
    @products = Product.all
  end
end
