class GoalPolicy < ApplicationPolicy

  class Scope < ApplicationPolicy::Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def index
    true
  end

  def show
    true
  end
end
