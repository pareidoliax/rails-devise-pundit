class LabelsController < ApplicationController
  def index
    @labels = Label.all
  end

  def create
    @label = Label.new(secure_params)
    unless @label.save
      flash[:danger] = 'Something went wrong, no new label created.'
    end
    redirect_back(fallback_location: labels_path)
  end

  def update
    @label = Label.find(params[:id])
    unless @label.update_attributes(secure_params)
      flash[:danger] = 'Something went wrong, failed to update label.'
    end
    redirect_back(fallback_location: labels_path)
  end

  def destroy
    @label = Label.find(params[:id])
    unless @label.destroy
      flash[:danger] = 'Something went wrong, label not deleted.'
    end
    redirect_back(fallback_location: labels_path)
  end

private #--------------------------------------------------------

  def secure_params
    params.require(:label).permit(:name, :colour)
  end
end
