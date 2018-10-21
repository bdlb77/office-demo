class EventPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
	 		 if user.admin?
        scope.all
      else
        raise Pundit::NotAuthorizedError, 'not allowed to view this action'
      end
 	 	end 
 	end

 	def create?
 		user.admin?
 	end
end
