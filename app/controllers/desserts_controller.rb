class DessertsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def index
    @desserts = Dessert.all
  end

  def show
    @dessert = Dessert.find(params[:id])
  end

  def new
    @dessert = Dessert.new
  end

  def create
    @dessert = Dessert.new
    @dessert.dish = params[:dish]
    @dessert.price = params[:price]
    @dessert.sweet_or_salty = params[:sweet_or_salty]
    @dessert.image_url = params[:image_url]

    if @dessert.save
      redirect_to "/desserts", :notice => "Dessert created successfully."
    else
      render 'new'
    end
  end

  def edit
    @dessert = Dessert.find(params[:id])
  end

  def update
    @dessert = Dessert.find(params[:id])

    @dessert.dish = params[:dish]
    @dessert.price = params[:price]
    @dessert.sweet_or_salty = params[:sweet_or_salty]
    @dessert.image_url = params[:image_url]

    if @dessert.save
      redirect_to "/desserts", :notice => "Dessert updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @dessert = Dessert.find(params[:id])

    @dessert.destroy

    redirect_to "/desserts", :notice => "Dessert deleted."
  end
end
