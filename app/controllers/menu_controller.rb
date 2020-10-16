class MenuController < ApplicationController
  before_action :set_cats

  def index
    @page = 'menu'
    @products = Product.all
  end
  def search
  end 
  
  private
  def set_cats
    @cats = Category.all.where(display:true)
  end
end
