class ListPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end

    def resolve
      # scope.all
      scope.where(user: user)
    end
  end

  def show?
    record.user == user
  end

  def create?
    true
  end

  def destroy?
    record.user == user
  end

end
