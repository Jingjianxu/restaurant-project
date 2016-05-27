class AppetizersController < ApplicationController
  def index
    @appetizers = Appetizer.all
  end

  def show
    @appetizer = Appetizer.find(params[:id])
  end

  def new
    @appetizer = Appetizer.new
  end

  def create
    @appetizer = Appetizer.new
    @appetizer.dish = params[:dish]
    @appetizer.price = params[:price]
    @appetizer.spicy = params[:spicy]
    @appetizer.hot = params[:hot]
    @appetizer.image_url = params[:image_url]


    if @appetizer.save
      redirect_to "/appetizers", :notice => "Appetizer created successfully."
    else
      render 'new'
    end
  end

  def edit
    @appetizer = Appetizer.find(params[:id])
  end

  def update
    @appetizer = Appetizer.find(params[:id])
    @appetizer.dish = params[:dish]
    @appetizer.price = params[:price]
    @appetizer.spicy = params[:spicy]
    @appetizer.hot = params[:hot]
    @appetizer.image_url = params[:image_url]

    if @appetizer.save
      redirect_to "/appetizers", :notice => "Appetizer updated successfully."
    else
      render 'new'
    end
  end

  def destroy
    @appetizer = Appetizer.find(params[:id])

    @appetizer.destroy

    redirect_to "/appetizers", :notice => "Appetizer deleted."
  end
end
