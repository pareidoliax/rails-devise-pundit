class LabelsController < ApplicationController
  def index
    @labels = Label.all
  end

  def create
    @label = Label.new(secure_params)
    unless @label.save
      flash
    end
    redirect_back(fallback_location: labels_path)
  end

  def update
    @label = Label.find(params[:id])
    redirect_back(fallback_location: labels_path)
  end

  def destroy
    @label = Label.find(params[:id])
    redirect_back(fallback_location: labels_path)
  end

private #--------------------------------------------------------

  def secure_params
    params.require(:label).permit(:users, :name, :colour)
  end
end
