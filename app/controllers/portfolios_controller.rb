class PortfoliosController < ApplicationController
	def index
		@portfolios = Portfolio.all
		puts "*******************************************************"
		puts @portfolios
	end
end
