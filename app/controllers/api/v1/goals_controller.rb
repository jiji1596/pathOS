class Api::V1::GoalsController < Api::V1::BaseController
  def index
    @goals = policy_scope(Goal)
     render json: @goals
  end
end
