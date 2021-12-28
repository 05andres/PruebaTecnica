class ProductsController < ApplicationController
  before_action :set_article, only: [:show]
  skip_before_action :verify_authenticity_token


  def index
    @products= Product.paginate(page: params[:page], per_page: 5)
  end

  def show
  end

  def create
  end

  def create_many
    products= JSON.parse(params[:_json].to_json)
    HardWorker.perform_async(products)
  end

  private

  def set_article
    @product = Product.find(params[:id])
  end

end