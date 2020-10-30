class Api::V1::CarsController < ApiController
  def index
    @cars = Make.find(params[:make_id]).car_models.find(params[:car_model_id]).cars

    render json: @cars, status: :ok
  end
end
