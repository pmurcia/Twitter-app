class AccountsController < ApplicationController
	def index
		# render 'index'
	end

	def new
		@account = Account.new
	end

	def create
		@account = Account.new account_params

		if @account.save
			redirect_to action: 'show', controller: 'accounts', id: @account.id
		else
			render 'new'
		end
	end

	def show
		@account = Account.find(params[:id])
	end

	def update
		@account = Account.new account_params

		if @account.update_attributes account_params
			redirect_to action: 'show', controller: 'accounts'
		else
			render 'update'
		end
	end

	private
	def account_params
		params.require(:account).permit(:name)
	end
end
