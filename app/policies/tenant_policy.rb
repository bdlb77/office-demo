class TenantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def show?
    	true # for all user who would be admin.
    end
  end
end
