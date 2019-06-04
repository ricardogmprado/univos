class MessagePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # if appointment with status confirmed exists with current user and current activity
      scope.all
    end
  end

  def create?
    true
  end

  def new?
    true
  end

end
