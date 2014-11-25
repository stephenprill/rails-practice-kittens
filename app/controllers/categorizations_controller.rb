class CategorizationsController < ApplicationController

  def new
    @kitten = Kitten.find(params[:kitten_id])
              #class  #based on paramters it's based on
    @categorization = @kitten.categorizations.new
    #before do methods, always have to have an instance of kitten so find the kitten we are working with first
  end

  def create
    @kitten = Kitten.find(params[:kitten_id])
    @categorization = @kitten.categorizations.new(params.require(:categorization).permit(:category_id))
    if @categorization.save
      redirect_to root_path, notice: "Kitten: CATegorized."
    else
      render :new
    end
  end



end
