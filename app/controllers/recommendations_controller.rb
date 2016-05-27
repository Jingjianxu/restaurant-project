class RecommendationsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def index
    @recommendations = Recommendation.all
  end

  def show
    @recommendation = Recommendation.find(params[:id])

  end

  def new
    @recommendation = Recommendation.new
  end

  def create
    @recommendation = Recommendation.new
    @recommendation.dish = params[:dish]
    @recommendation.price = params[:price]
    @recommendation.spicy = params[:spicy]

    @recommendation.image_url = params[:image_url]

    if @recommendation.save
      redirect_to "/recommendations", :notice => "Recommendation created successfully."
    else
      render 'new'
    end
  end

  def edit
    @recommendation = Recommendation.find(params[:id])
  end

  def update
    @recommendation = Recommendation.find(params[:id])

    @recommendation.dish = params[:dish]
    @recommendation.price = params[:price]
    @recommendation.spicy = params[:spicy]
    @recommendation.image_url = params[:image_url]

    if @recommendation.save
      redirect_to "/recommendations", :notice => "Recommendation updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @recommendation = Recommendation.find(params[:id])
    @recommendation.destroy

    redirect_to "/recommendations", :notice => "Recommendation deleted."
  end
end
