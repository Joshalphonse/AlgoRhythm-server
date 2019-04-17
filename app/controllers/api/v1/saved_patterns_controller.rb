class Api::V1::SavedPatternsController < ApplicationController
  def index
  render json: {memberships: Membership.all}
end

def create
  @SavedPatterns = SavedPatterns.create(saved_params)
  if @SavedPatterns.valid?
    team = Team.find(@SavedPatterns.team_id)
    render json: { team: PatternSerializer.new(team), user: UserSerializer.new(current_user) }, status: :accepted
  else
    render json: { error: 'Failed to create Saved Pattern' }, status: :not_acceptable
  end
end

private
def saved_params
  params.require(:SavedPatterns).permit(:user_id, :team_id)
end

end
