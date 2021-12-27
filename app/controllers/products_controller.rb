class ProductsController < ApplicationController
  before_action :set_article, only: [:show]
  skip_before_action :verify_authenticity_token


  def index
    @products= Product.all
  end

  def show
  end

  def create
    render plain: params
    pass=0
    nopass=0
    variants=[]
=begin
    if parameters.variante.lenght
      parameters.variantes.each do |variant|
        new_variant=Variante.new(variant)
        if new_variant.valid?
          variants.push(variant)
        end
        end
        product=Product.new(parameters)
        if product.valid? and variantes.length
          product.save
          product.variantes.bluid(variantes)
          pass=+1
        else
          notpass=+1
        end
    else
      pass=+1
    end
=end

  end

  def create_many
    render plain: params[:_json].to_json

  end

  private
  def items_params
    params.require(:product).permit()
  end

  def set_article
    @product = Product.find(params[:id])
  end

end