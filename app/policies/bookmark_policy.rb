class BookmarkPolicy < ApplicationPolicy
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

  def new?
    true
  end

  def create?
    true
  end

  def show?
    # record.user == user
    true
  end

  def destroy?
    true
  end
end
