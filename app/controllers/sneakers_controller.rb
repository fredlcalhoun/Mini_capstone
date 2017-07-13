class SneakersController < ApplicationController
  def index
    @sneakers = Sneaker.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    sneaker = Sneakers.new(
      brand: params[:form_brand],
      price: params[:form_price],
      description: params[:form_description],
      image: params[:form_image]

    )
    sneaker.save
    render "create.html.erb"
  end

  def show
    sneaker_id = params[:id]
    @sneaker = Sneaker.find_by(id: sneaker_id)
    render "show.html.erb"
  end

  def edit
    sneaker_id = params[:id]
    @sneaker = Sneaker.find_by(id: sneaker_id)
    render "edit.html.erb"
  end

  def update
    sneaker_id = params[:id]
    @sneaker = Sneaker.find_by(id: sneaker_id)
    @sneaker.brand = params[:form_brand]
    @sneaker.price = params[:form_price]
    @sneaker.description = params[:form_description]
    @sneaker.image = params[:form_image]
    @sneaker.save
    render "update.html.erb"
  end

  def destroy
    sneaker_id = params[:id]
    @sneaker = Sneaker.find_by(id: sneaker_id)
    @sneaker.destroy
    render "destroy.html.erb"
  end

  def test_method
    @iceberg = Iceberg.find_by(id: params[:id])
    render "test.html.erb"
  end

  def sale_message
    if price.to_f < 2
      return "Discount item!"
    else
      return "Everyday value!"
    end

  end
end