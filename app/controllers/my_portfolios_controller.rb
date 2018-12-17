class MyPortfoliosController < ApplicationController
  def index
    @my_portfolio = MyPortfolio.all
  end
  def new
    @my_portfolio = MyPortfolio.new
  end
  def create
    @my_portfolio = MyPortfolio.new(params.require(:my_portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @my_portfolio.save
        format.html { redirect_to (my_portfolios_path), notice: 'Your portfolio was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end
end
