class Api::V1::CarModelsController < ApiController
  def index
    @models = Make.find(params[:make_id]).car_models
    render json: @models, status: :ok
  end
end
