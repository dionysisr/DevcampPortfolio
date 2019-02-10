class PortfoliosController < ApplicationController
	def index
		@portfolios = Portfolio.all
	end

	def new
		@portfolio = Portfolio.new
	end

	def create
		@portfolio = Portfolio.new(portfolio_params)
	  if @portfolio.save
	     redirect_to portfolios_path, notice: 'portfolio was successfully created.' 
	  end
	end

	def edit
		@portfolio = Portfolio.find(params[:id])
	end

  def update
  	@portfolio = Portfolio.find(params[:id])
    if @portfolio.update(portfolio_params)
      redirect_to portfolios_path, notice: 'Portfolio was successfully updated.' 
    end
  end

  def show
		@portfolio = Portfolio.find(params[:id])
	end

  def destroy
  	@portfolio = Portfolio.find(params[:id])
	  @portfolio.destroy
    redirect_to portfolios_url, notice: "'Portfolio #{params[:id]}' was successfully deleted."
  end


  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def portfolio_params
      params.require(:portfolio).permit(:title, :subtitle, :body, :main_image, :thumb_image)
    end	
end

