class ProductsController < ApplicationController
  before_action :set_article, only: [:show]


  def index
    @products= Product.all
  end

  def show
  end

  private

  def set_article
    @product = Product.find(params[:id])
  end

end