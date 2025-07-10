class Api::V1::GoalsController < Api::V1::BaseController
  before_action :set_goal, only: [:show]


  def index
    @goals = policy_scope(Goal)
     render json: @goals
  end


  def show
  end

  private

  def set_goal
    @goal = Goal.find(params[:id])
    authorize @goal
  end
end
