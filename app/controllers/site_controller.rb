class SiteController < ApplicationController
	def index
		@account = Account.new
	end

	def show
		@account = Account.new
	end
end
