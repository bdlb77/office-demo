class TenantsController < ApplicationController
	before_action :set_tenant, only: [:show]
	def index
		@tenants = policy_scope(Tenant)
	end

	def show
		authorize @tenant
	end

	private

	def set_tenant
		@tenant = Tenant.find(params[:id])
	end

end
