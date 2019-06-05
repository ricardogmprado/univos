class ActivityPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  def new?
    true
  end

  def update?
    record.user == user
  end

  def edit?
    update?
  end

  def destroy?
    record.user == user
  end

  def confirmed?
    # if appointment with status confirmed exists with current user and current activity
    Appointment.where(status: "confirmed").where(activity: record).find_by(user: user).present?
  end
end
