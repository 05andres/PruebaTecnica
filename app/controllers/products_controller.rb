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
    pass=0
    not_pass=0
    variants_array=[]
    products.each do |product|
      if !product["variants"].empty?
        product["variants"].each do |variant|
          new_variant=Variant.new(variant)
          if new_variant.valid?
            variants_array.push(variant)
          end
        end
          product=Product.new(name: product["name"], description: product["description"])
          if product.valid? and !variants_array.empty?
            product.save
            product.variants.create(variants_array)
            variants_array=[]
            pass+=1
          else
            not_pass+=1
          end
      else
        not_pass+=1
      end
    end
    Dashboard.create(requested: products.length, loaded: pass, not_loaded: not_pass)
  end

  private

  def set_article
    @product = Product.find(params[:id])
  end

end