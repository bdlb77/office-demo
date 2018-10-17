class TenantsController < ApplicationController
	before_action :set_tenant, only: [:show]
	def index
		@tenants = policy_scope(Tenant)
	end

	def show
		authorize @tenant
	end
	
	def new
		@tenant = Tenant.new
		authorize @tenant
	end
	def create
		@tenant = Tenant.new(tenant_params)
		authorize @tenant
		if @tenant.save
			flash[:success] = "Your Tenant has been created"
			redirect_to tenants_path
		else
			redirect_to new_tenant_path
		end
	end
	private

	def set_tenant
		@tenant = Tenant.find(params[:id])
	end
	def tenant_params
		params.require(:tenant).permit(:first_name, :last_name, :email, :birthday, :username, :phone_number)
	end
end
