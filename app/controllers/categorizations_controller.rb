class CategorizationsController < ApplicationController

  def new
    @category = @category.find(params[:id])
  end

end
