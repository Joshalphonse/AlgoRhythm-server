class Api::V1::PatternsController < ApplicationController
  # skip_before_action :authorized, only: [:destroy,:create]
def index
    @patterns = Pattern.all
    render json: @patterns
end



def show
    @pattern = Pattern.find(params[:id])
    render json: @pattern
end


def create
  @pattern = Pattern.create(pattern_params)
  render json: @pattern

end

def update
  @pattern = Pattern.find(params[:id])
  @pattern.update_attributes(pattern_params)
  render json: @pattern
end




def destroy
  @pattern = Pattern.find(params[:id])
  render json: @pattern
  @pattern.destroy
end

def pattern_params
  params.require(:pattern).permit(:name, :pattern)
end

end
