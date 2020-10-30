class Api::V1::MakesController < ApiController
  def index
    if params[:name].present?
      @makes = Make.where("name ILIKE ?", "%#{params[:name]}%")
    else
      @makes = Make.all
    end

    render json: @makes, status: :ok
  end
end
