class EntreesController < ApplicationController
  def index
    @entrees = Entree.page(params[:page]).per(50)
  end

  def show
    @entree = Entree.find(params[:id])
  end

  def new
    @entree = Entree.new
  end

  def create
    @entree = Entree.new
    @entree.dish = params[:dish]
    @entree.price = params[:price]
    @entree.spicy = params[:spicy]
  @entree.image_url = params[:image_url]
    if @entree.save
      redirect_to "/entrees", :notice => "Entree created successfully."
    else
      render 'new'
    end
  end

  def edit
    @entree = Entree.find(params[:id])
  end

  def update
    @entree = Entree.find(params[:id])
    @entree.dish = params[:dish]
    @entree.price = params[:price]
    @entree.spicy = params[:spicy]
@entree.image_url = params[:image_url]
    if @entree.save
      redirect_to "/entrees", :notice => "Entree updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @entree = Entree.find(params[:id])

    @entree.destroy

    redirect_to "/entrees", :notice => "Entree deleted."
  end
end
